#!/bin/bash
#SBATCH --job-name=python_workshop
#SBATCH --output=/home/%u/out/python_workshop.%j.out
#SBATCH --error=/home/%u/err/python_workshop.%j.err
#SBATCH -p dev
#SBATCH -c 1
#SBATCH --mem=32GB

#next, use ml to load the python3 module, and then use pip3 install to load your dependencies.

#finally, run the script
python3 python_workshop.py
