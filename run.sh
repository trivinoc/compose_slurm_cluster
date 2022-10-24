echo -e "\033[0;31m"
docker rm  $(docker stop $(docker ps -a -q --filter ancestor="mariadb" --format="{{.ID}}"))
echo -e "\033[0;32m###########_Starting database container_###########\033[0;0m"
docker run --detach --network slurm-network --name slurm_mariadb -v /home/mariadb_docker/database:/var/lib/mysql \
--env MARIADB_USER=slurm-user --env MARIADB_PASSWORD=slurm --env MARIADB_ROOT_PASSWORD=suslurm mariadb