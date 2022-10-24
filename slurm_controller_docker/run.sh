echo -e "\033[0;31m"
docker rm  $(docker stop $(docker ps -a -q --filter ancestor="controller" --format="{{.ID}}"))
echo -e "\033[0;32m###########_Starting controller (slurmctl) container_###########\033[0;0m"
docker run --name="slurm_controller" --hostname="slurm_controller" --network "slurm-network" -v /home/slurm_controller/etc/slurm_conf:/etc/slurm controller
