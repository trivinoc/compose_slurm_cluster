echo -e "\033[0;32m###########_Start build all_###########\033[0;0m"
cd slurm_db_docker && ./build.sh && cd ..
echo -e "\033[0;32m###########_End build slurm_db_###########\033[0;0m"
cd slurm_controller_docker && ./build.sh && cd ..
echo -e "\033[0;32m###########_End build slurm_controller_###########\033[0;0m"
cd slurm_node_docker && ./build.sh && cd ..
echo -e "\033[0;32m###########_End build slurm_node_###########\033[0;0m"
echo -e "\033[0;32m###########_End build all_###########\033[0;0m"
