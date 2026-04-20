#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../../.venv/bin/activate"

#扰动
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-5base_mask065
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-5base_mask055
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-5base_mask07
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-5base_mask06
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-5base_mask05
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-5base_mask04
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-5base_mask03
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-5base_mask02
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-5base_mask01
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-5base_blur03
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-5base_blur07
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-5base_blur11
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-5base_blur15
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-5base_blur13

# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-10sp_mask07
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-10sp_mask065
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-10sp_mask06
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-10sp_mask055
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-10sp_mask05
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-10sp_mask04
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-10sp_mask03
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-10sp_mask02
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-10sp_mask01
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-10sp_blur03
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-10sp_blur07
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-10sp_blur11
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-10sp_blur15
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-10sp_blur13

#horizon=50
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-50h_eval01_base
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-50h_eval05_base
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-50h_eval10_base
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-50h_eval15_base
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-50h_eval20_base
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-50h_eval30_base
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-50h_eval40_base
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-50h_eval50_base

# bash examples/embodiment/eval_embodiment.sh libero_object_grpo_openpi_pi05-50h_eval01_base
# bash examples/embodiment/eval_embodiment.sh libero_object_grpo_openpi_pi05-50h_eval05_base
# bash examples/embodiment/eval_embodiment.sh libero_object_grpo_openpi_pi05-50h_eval10_base
# bash examples/embodiment/eval_embodiment.sh libero_object_grpo_openpi_pi05-50h_eval15_base
# bash examples/embodiment/eval_embodiment.sh libero_object_grpo_openpi_pi05-50h_eval20_base
# bash examples/embodiment/eval_embodiment.sh libero_object_grpo_openpi_pi05-50h_eval30_base
# bash examples/embodiment/eval_embodiment.sh libero_object_grpo_openpi_pi05-50h_eval40_base
# bash examples/embodiment/eval_embodiment.sh libero_object_grpo_openpi_pi05-50h_eval50_base

# bash examples/embodiment/eval_embodiment.sh libero_goal_grpo_openpi_pi05-50h_eval01_base
# bash examples/embodiment/eval_embodiment.sh libero_goal_grpo_openpi_pi05-50h_eval05_base
# bash examples/embodiment/eval_embodiment.sh libero_goal_grpo_openpi_pi05-50h_eval10_base
# bash examples/embodiment/eval_embodiment.sh libero_goal_grpo_openpi_pi05-50h_eval15_base
# bash examples/embodiment/eval_embodiment.sh libero_goal_grpo_openpi_pi05-50h_eval20_base
# bash examples/embodiment/eval_embodiment.sh libero_goal_grpo_openpi_pi05-50h_eval30_base
# bash examples/embodiment/eval_embodiment.sh libero_goal_grpo_openpi_pi05-50h_eval40_base
# bash examples/embodiment/eval_embodiment.sh libero_goal_grpo_openpi_pi05-50h_eval50_base

# bash examples/embodiment/eval_embodiment.sh libero_10_grpo_openpi_pi05-50h_eval01_base
# bash examples/embodiment/eval_embodiment.sh libero_10_grpo_openpi_pi05-50h_eval05_base
# bash examples/embodiment/eval_embodiment.sh libero_10_grpo_openpi_pi05-50h_eval10_base
# bash examples/embodiment/eval_embodiment.sh libero_10_grpo_openpi_pi05-50h_eval15_base
# bash examples/embodiment/eval_embodiment.sh libero_10_grpo_openpi_pi05-50h_eval20_base
# bash examples/embodiment/eval_embodiment.sh libero_10_grpo_openpi_pi05-50h_eval30_base
# bash examples/embodiment/eval_embodiment.sh libero_10_grpo_openpi_pi05-50h_eval40_base
# bash examples/embodiment/eval_embodiment.sh libero_10_grpo_openpi_pi05-50h_eval50_base

#spec horizon=50
bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-50sp
# bash examples/embodiment/eval_embodiment.sh libero_object_grpo_openpi_pi05-50sp
# bash examples/embodiment/eval_embodiment.sh libero_goal_grpo_openpi_pi05-50sp
# bash examples/embodiment/eval_embodiment.sh libero_10_grpo_openpi_pi05-50sp


# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-1base
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-2base
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-3base
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-4base
# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-5base
# # bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-6base
# # bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-7base
# # bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-8base
# # bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-9base
# # bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-10base

# # bash examples/embodiment/eval_embodiment.sh libero_object_grpo_openpi_pi05-1base
# bash examples/embodiment/eval_embodiment.sh libero_object_grpo_openpi_pi05-2base
# bash examples/embodiment/eval_embodiment.sh libero_object_grpo_openpi_pi05-3base
# bash examples/embodiment/eval_embodiment.sh libero_object_grpo_openpi_pi05-4base
# bash examples/embodiment/eval_embodiment.sh libero_object_grpo_openpi_pi05-5base
# bash examples/embodiment/eval_embodiment.sh libero_object_grpo_openpi_pi05-6base
# bash examples/embodiment/eval_embodiment.sh libero_object_grpo_openpi_pi05-7base
# bash examples/embodiment/eval_embodiment.sh libero_object_grpo_openpi_pi05-8base
# bash examples/embodiment/eval_embodiment.sh libero_object_grpo_openpi_pi05-9base
# bash examples/embodiment/eval_embodiment.sh libero_object_grpo_openpi_pi05-10base

# bash examples/embodiment/eval_embodiment.sh libero_goal_grpo_openpi_pi05-1base
# # bash examples/embodiment/eval_embodiment.sh libero_goal_grpo_openpi_pi05-2base
# bash examples/embodiment/eval_embodiment.sh libero_goal_grpo_openpi_pi05-3base
# bash examples/embodiment/eval_embodiment.sh libero_goal_grpo_openpi_pi05-4base
# bash examples/embodiment/eval_embodiment.sh libero_goal_grpo_openpi_pi05-5base
# bash examples/embodiment/eval_embodiment.sh libero_goal_grpo_openpi_pi05-6base
# bash examples/embodiment/eval_embodiment.sh libero_goal_grpo_openpi_pi05-7base
# bash examples/embodiment/eval_embodiment.sh libero_goal_grpo_openpi_pi05-8base
# bash examples/embodiment/eval_embodiment.sh libero_goal_grpo_openpi_pi05-9base
# bash examples/embodiment/eval_embodiment.sh libero_goal_grpo_openpi_pi05-10base

# bash examples/embodiment/eval_embodiment.sh libero_10_grpo_openpi_pi05-1base
# bash examples/embodiment/eval_embodiment.sh libero_10_grpo_openpi_pi05-2base
# # bash examples/embodiment/eval_embodiment.sh libero_10_grpo_openpi_pi05-3base
# bash examples/embodiment/eval_embodiment.sh libero_10_grpo_openpi_pi05-4base
# bash examples/embodiment/eval_embodiment.sh libero_10_grpo_openpi_pi05-5base
# bash examples/embodiment/eval_embodiment.sh libero_10_grpo_openpi_pi05-6base
# bash examples/embodiment/eval_embodiment.sh libero_10_grpo_openpi_pi05-7base
# bash examples/embodiment/eval_embodiment.sh libero_10_grpo_openpi_pi05-8base
# bash examples/embodiment/eval_embodiment.sh libero_10_grpo_openpi_pi05-9base
# bash examples/embodiment/eval_embodiment.sh libero_10_grpo_openpi_pi05-10base


# bash examples/embodiment/eval_embodiment.sh libero_spatial_grpo_openpi_pi05-10sp
# bash examples/embodiment/eval_embodiment.sh libero_object_grpo_openpi_pi05-10sp
# bash examples/embodiment/eval_embodiment.sh libero_goal_grpo_openpi_pi05-10sp
# bash examples/embodiment/eval_embodiment.sh libero_10_grpo_openpi_pi05-10sp




# source "$SCRIPT_DIR/../../openpi-meta/bin/activate"

# bash examples/embodiment/eval_embodiment.sh metaworld_50_ppo_openpi_pi05-1base
# bash examples/embodiment/eval_embodiment.sh metaworld_50_ppo_openpi_pi05-2base
# bash examples/embodiment/eval_embodiment.sh metaworld_50_ppo_openpi_pi05-3base
# # bash examples/embodiment/eval_embodiment.sh metaworld_50_ppo_openpi_pi05-4base
# bash examples/embodiment/eval_embodiment.sh metaworld_50_ppo_openpi_pi05-5base
# bash examples/embodiment/eval_embodiment.sh metaworld_50_ppo_openpi_pi05-5sp



# source "$SCRIPT_DIR/../../gr00t-libero/bin/activate"

# bash examples/embodiment/eval_embodiment.sh libero_spatial_ppo_gr00t-1base
# bash examples/embodiment/eval_embodiment.sh libero_spatial_ppo_gr00t-2base
# bash examples/embodiment/eval_embodiment.sh libero_spatial_ppo_gr00t-3base
# bash examples/embodiment/eval_embodiment.sh libero_spatial_ppo_gr00t-4base
# bash examples/embodiment/eval_embodiment.sh libero_spatial_ppo_gr00t-5base
# bash examples/embodiment/eval_embodiment.sh libero_spatial_ppo_gr00t-5sp

# bash examples/embodiment/eval_embodiment.sh libero_object_ppo_gr00t-1base
# bash examples/embodiment/eval_embodiment.sh libero_object_ppo_gr00t-2base
# bash examples/embodiment/eval_embodiment.sh libero_object_ppo_gr00t-3base
# bash examples/embodiment/eval_embodiment.sh libero_object_ppo_gr00t-4base
# # bash examples/embodiment/eval_embodiment.sh libero_object_ppo_gr00t-5base
# bash examples/embodiment/eval_embodiment.sh libero_object_ppo_gr00t-5sp


# bash examples/embodiment/eval_embodiment.sh libero_goal_ppo_gr00t-1base
# bash examples/embodiment/eval_embodiment.sh libero_goal_ppo_gr00t-2base
# bash examples/embodiment/eval_embodiment.sh libero_goal_ppo_gr00t-3base
# bash examples/embodiment/eval_embodiment.sh libero_goal_ppo_gr00t-4base
# bash examples/embodiment/eval_embodiment.sh libero_goal_ppo_gr00t-5base
# bash examples/embodiment/eval_embodiment.sh libero_goal_ppo_gr00t-5sp


# bash examples/embodiment/eval_embodiment.sh libero_10_ppo_gr00t-1base
# bash examples/embodiment/eval_embodiment.sh libero_10_ppo_gr00t-2base
# bash examples/embodiment/eval_embodiment.sh libero_10_ppo_gr00t-3base
# bash examples/embodiment/eval_embodiment.sh libero_10_ppo_gr00t-4base
# bash examples/embodiment/eval_embodiment.sh libero_10_ppo_gr00t-5base
# bash examples/embodiment/eval_embodiment.sh libero_10_ppo_gr00t-5sp



# source /home/feng/data/wxh/SpecRlinf/.venv/bin/activate

# bash examples/embodiment/eval_embodiment.sh maniskill_ppo_openpi_pi05-8base
# bash examples/embodiment/eval_embodiment.sh maniskill_ppo_openpi_pi05-1base
# bash examples/embodiment/eval_embodiment.sh maniskill_ppo_openpi_pi05-2base
# bash examples/embodiment/eval_embodiment.sh maniskill_ppo_openpi_pi05-3base
# bash examples/embodiment/eval_embodiment.sh maniskill_ppo_openpi_pi05-4base
# bash examples/embodiment/eval_embodiment.sh maniskill_ppo_openpi_pi05-5base
# bash examples/embodiment/eval_embodiment.sh maniskill_ppo_openpi_pi05-6base
# bash examples/embodiment/eval_embodiment.sh maniskill_ppo_openpi_pi05-7base



# bash examples/embodiment/eval_embodiment.sh maniskill_ppo_openpi_pi05-8sp
