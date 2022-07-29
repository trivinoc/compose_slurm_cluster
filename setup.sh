echo -e "\033[0;32m###########_Start conf clone_###########\033[0;0m"
cd slurm_db_daemon_docker/etc && git clone https://github.com/sOmEoNe2lOvEgIt/slurm_conf.git
cd ../../
cd slurm_head_docker/etc && git clone https://github.com/sOmEoNe2lOvEgIt/slurm_conf.git
cd ../../
cd slurm_node/etc && git clone https://github.com/sOmEoNe2lOvEgIt/slurm_conf.git
cd ../../
echo -e "\033[0;32m###########_End conf clone_###########\033[0;0m"
echo -e "\033[0;32m###########_Start pull conf_###########\033[0;0m"
./pull_conf.sh
echo -e "\033[0;32m###########_End pull conf_###########\033[0;0m"
echo -e "\033[0;32m######_Creating necessary dirs_######\033[0;0m"
mkdir kibana-data
chmod 777 kibana-data
chown 999 kibana-data
mkdir elasticsearch-data
mkdir node_logs
chmod 777 elasticsearch-data
chown 999 elasticsearch-data
mkdir nodes_cgroups/ && mkdir nodes_cgroups/node_1 && mkdir nodes_cgroups/node_2 && mkdir nodes_cgroups/node_3 && mkdir nodes_cgroups/node_4
echo -e "\033[0;32m######_End creating necessary dirs_######\033[0;0m"
#./build_all_images.sh
