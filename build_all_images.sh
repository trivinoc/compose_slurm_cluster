echo -e "\033[0;32m###########_Start build all_###########\033[0;0m"
cd slurm_db_daemon_docker && ./build.sh && cd ..
cd slurm_head_docker && ./build.sh && cd ..
cd slurm_node && ./build.sh && cd ..
echo -e "\033[0;32m###########_End build all_###########\033[0;0m"