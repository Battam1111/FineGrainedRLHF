accelerate launch \
    --main_process_port 29548 \
    --num_machines 1 \
    --machine_rank 0 \
    --num_processes 2 \
    --mixed_precision bf16 \
    --multi_gpu \
    main_final.py \
    --mode train \
    --batch_size 8 --training_batch_size 4 \
    --model_ckpt ~/human_feedback/t5-large-oracle-1k-train \
    --value_model_ckpt t5-base \
    --baseline_model_ckpt ~/human_feedback/baseline_rm_full_ellen0509 \
    --non_factual_model_ckpt ~/human_feedback/non_fact_subsent_rm_full_ellen0509 \
    --factual_model_ckpt ~/human_feedback/fact_rm_full_ellen0509 \
    --completeness_model_ckpt ~/human_feedback/missing_rm_pref_coverage_full_ellen0509 \
    --baseline_reward_mean 0.9224057369138402 \
    --baseline_reward_std 1.5605590864042451 \
    --baseline_reward_bias 0.0 \
    --baseline_reward_scale 1.0 \
    --verbosity_positive_reward 0.3 \
    --verbosity_negative_reward -0.3 \
    --factuality_positive_reward 0.5 \
    --factuality_negative_reward -0.5 \
    --completeness_reward_mean -0.44677690555995353 \
    --completeness_reward_std 8.301160619054132 \
    --completeness_reward_bias 0.0 \
    --completeness_reward_scale 0.3 \
    --total_episodes 80000 \
    --eval_interval 50 \
    --num_samples 4 \
    --top_k 20 \
    --temperature 0.7 \
    --kl_coef 0.4 \
    --lam 0.95 \
    --lr 1e-5 \
    --pg_coef 1.0 --vf_coef 1.0 \
    --max-grad-norm 0.5 \
    --fine_grained \
    --seed 105 \
    --run_name FINAL_finegrain_seed105_030503_kl04_lam095_lr15_nsample4