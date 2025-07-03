
job_name="3DfoundationModelMarigold"
base_logdir="/lustre/fsw/portfolios/nvr/users/ymingli/gaussian/logs/Marigold_spatial05_frames6000_with_multi_frame_depth"


# Train

submit_job --gpu 1 --cpu 64 --nodes 1 --partition=grizzly,polar,polar3,polar4 --account=nvr_av_end2endav \
                --image=/lustre/fsw/portfolios/nvr/users/ymingli/dockers/cu118.sqsh  \
                --mounts=/lustre/:/lustre/,/lustre/fsw/portfolios/nvr/users/ymingli/miniconda3:/home/ymingli/miniconda3 \
                --duration 4 \
                --dependency=singleton \
                --name $job_name \
                --logdir $base_logdir \
                --notimestamp \
                --command  "bash /lustre/fsw/portfolios/nvr/users/ymingli/gaussian/code/Marigold-DC/NV_run.sh"

