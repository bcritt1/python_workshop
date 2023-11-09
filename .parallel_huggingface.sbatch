#!/bin/bash
#SBATCH --job-name=huggingface
#SBATCH --output=/home/%u/out/huggingface.%A_%a.out
#SBATCH --error=/home/%u/err/huggingface.%A_%a.err
#SBATCH -p normal
#SBATCH -c 1
#SBATCH --mem=32GB
#SBATCH --array=0-128

ml python
pip3 install --user transformers
#pip3 install git+https://github.com/huggingface/transformers
#no pytorch support for 3.10 yet...use this instead of nightly if it becomes supported
#!pip3 install torch torchvision torchaudio
pip3 install --user --pre torch -f https://download.pytorch.org/whl/nightly/cpu/torch_nightly.html
python3 huggingface.py ${SLURM_ARRAY_TASK_ID}
