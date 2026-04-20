# Spec

Vision-Language-Action models usually predict a short chunk of future actions
in one forward pass. This improves throughput, but it also creates a core
execution problem: how many predicted actions should be committed before the
policy replans from new observations. A fixed execution horizon is simple, but
it ignores state-dependent reliability and often becomes brittle under dynamic
or out-of-distribution conditions.

This repository contains the code and experiment configs for dynamic execution
commitment with speculative verification. The implementation is organized
around embodied evaluation recipes in LIBERO, MetaWorld, and ManiSkill, with
OpenPI and GR00T based policies as the main target models. The primary
entrypoints are `examples/embodiment/pipe.sh`,
`examples/embodiment/eval_embodiment.sh`, and
`examples/embodiment/eval_embodied_agent.py`.

## Installation

Install `uv`, then create the main runtime environment according to the recipe you want to run.

```bash
cd /path/to/Spec
```

OpenPI + LIBERO / ManiSkill:

```bash
bash requirements/install.sh embodied --model openpi --env maniskill_libero
```

OpenPI + MetaWorld:

```bash
bash requirements/install.sh embodied --model openpi --env metaworld
```

GR00T + LIBERO / ManiSkill:

```bash
bash requirements/install.sh embodied --model gr00t --env maniskill_libero
```

If the machine does not provide `sudo`, or the required system dependencies
are already present, add `--no-root`. This has been validated on a clean clone:

```bash
bash requirements/install.sh embodied --model openpi --env maniskill_libero --no-root
```

`.venv` is only the default virtual environment directory name. You can
override it with `--venv <dir>`, for example:

```bash
bash requirements/install.sh embodied --model gr00t --env maniskill_libero --venv gr00t-libero
```

The default `pipe.sh` launcher activates `./.venv`. If you use another virtual
environment directory, either activate it manually before running commands, or
adjust the launcher you use.

## Weights

For π0.5 on LIBERO:

- Official `openpi` repository:
  [Physical-Intelligence/openpi](https://github.com/Physical-Intelligence/openpi)
- Official JAX to PyTorch conversion workflow:
  `Converting JAX Models to PyTorch` in the repository above
- Our converted PyTorch checkpoint:
  [INCEPTIONwang/pi05_pytorch](https://huggingface.co/INCEPTIONwang/pi05_pytorch)
- Place it under:
  `models/pi05_pytorch`

Other checkpoints used in this repository:

- [RLinf on Hugging Face](https://huggingface.co/RLinf)

If your local checkpoint directory is different, override
`actor.model.model_path` and `rollout.model.model_path` from the command line.

## Running

`examples/embodiment/pipe.sh` is a collection of launch recipes, not a
single self-contained benchmark script. Different blocks in the file target
different models, task suites, and execution settings, so you need to prepare
the corresponding environment and checkpoint before running a specific command.

Typical usage is to keep only the target command uncommented in `pipe.sh`, or
run `eval_embodiment.sh` directly.

Examples:

```bash
bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-50sp

bash examples/embodiment/eval_embodiment.sh metaworld_50_ppo_openpi_pi05-5base

bash examples/embodiment/eval_embodiment.sh libero_spatial_ppo_gr00t-5base
```

The launcher executes:

```bash
python examples/embodiment/eval_embodied_agent.py \
  --config-path examples/embodiment/config \
  --config-name <CONFIG_NAME> \
  ...
```

## Common Runtime Parameters

All arguments after the config name are Hydra overrides.

- `runner.logger.log_path=<dir>`
  Set the log directory.

- `env.eval.total_num_envs=<n>`
  Control evaluation environment parallelism.

- `env.eval.max_episode_steps=<n>`
  Limit evaluation episode length.

- `env.eval.max_steps_per_rollout_epoch=<n>`
  Limit rollout work per evaluation epoch.

- `algorithm.eval_rollout_epoch=<n>`
  Set the number of evaluation rollout epochs.

- `env.eval.video_cfg.save_video=False`
  Disable video saving.

- `actor.micro_batch_size=<n>`
- `actor.global_batch_size=<n>`
  Reduce memory usage for local runs.

- `actor.model.model_path=<path>`
- `rollout.model.model_path=<path>`
  Override checkpoint paths.

- `actor.model.openpi.enable_speculative=True|False`
  Enable or disable speculative decoding.

- `actor.model.openpi.eval_action_horizon=<n>`
  Change the committed action horizon during evaluation.

- `actor.model.openpi.spec_delta_thresholds=[...]`
  Adjust speculative verification thresholds.

## Reference

This project uses RLinf as its underlying reinforcement learning
infrastructure. For the upstream repository, see:

- [RLinf/RLinf](https://github.com/RLinf/RLinf)
