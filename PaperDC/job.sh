#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=16
#SBATCH --gpus=1
#SBATCH --partition=gpu_h100
#SBATCH --time=04:00:00
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=sda@cwi.nl

# Note: 
# - gpu_a100: 18 cores
# - gpu_h100: 16 cores
# https://servicedesk.surf.nl/wiki/display/WIKI/Snellius+partitions+and+accounting

cd $HOME/projects/IncompressibleNavierStokes/lib/PaperDC

julia --project les3D.jl
