echo -e "\033[0;32m###########_Start conf pull_###########\033[0;0m"
cd slurm_db_daemon_docker/etc/slurm_conf && git pull
cd ../../../
cd slurm_head_docker/etc/slurm_conf && git pull
cd ../../../
cd slurm_node/etc/slurm_conf && git pull
echo -e "\033[0;32m###########_End conf pull_###########\033[0;0m"
