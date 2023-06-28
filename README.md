# nano_slurm_container
run slurm in a minimal container for testing

this is only for testing things and not secure!

build the container with `./build.sh`

run the container with `./run.sh`

inside of the container, start tmux `tmux`

start the slurm controller in a tmux pane `slurmctl -D`

start the munge daemon in another pane `munged -f`

start the slurm worker in a pane `slurmd -D`

now you can run basic slurm commands in another tmux pane `srun echo 1`
