# Position the number of processes specified after the --nproc_per_node flag
torchrun --nproc_per_node 4 --master_port=25642 softmax_dpo.py \
            --model_name base_model_path  \
            --resume_from_checkpoint ref_model_ckpt_path \
            --batch_size 4 \
            --gradient_accumulation_steps 8 \
            --dataset lastfm \
            --prompt_path paompt_path \
            --learning_rate 1e-5 \
            --eval_step 0.1 \
            --beta 1 \
            --neg_num 1 \
            --num_train_epochs 3 \
            --logging_dir log_dir \
            --output_dir save_path \
            --wandb_project wandb_proj_name \
            --wandb_name wandb_run_name > dpo.log