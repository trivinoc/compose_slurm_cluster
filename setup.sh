echo -e "\033[0;32m###########_Start conf clone_###########\033[0;0m"
cd slurm_db_daemon_docker/etc && git clone https://github.com/sOmEoNe2lOvEgIt/slurm_conf.git
cd ../../
cd slurm_head_docker/etc && git clone https://github.com/sOmEoNe2lOvEgIt/slurm_conf.git
cd ../../
cd slurm_node/etc && git clone https://github.com/sOmEoNe2lOvEgIt/slurm_conf.git
cd ../../
echo -e "\033[0;32m###########_End conf clone_###########\033[0;0m"
echo -e "\033[0;32m######_Creating necessary dirs_######\033[0;0m"
mkdir elasticsearch-data kibana-data node_logs shared
chmod +rw elasticsearch-data
chmod +rw node_logs
chmod +rw shared
chmod +rw kibana-data
chown 999 kibana-data
chown 999 elasticsearch-data
mkdir nodes_cgroups/ nodes_cgroups/node_1 nodes_cgroups/node_2 nodes_cgroups/node_3 nodes_cgroups/node_4
echo -e "\033[0;32m######_End creating necessary dirs_######\033[0;0m"
./build_all_images.sh
