# compose_slurm_cluster
### Basic description:
This repo holds the docker compose file to create a slurm cluster in a docker container.

It also contains a readme that gives you instructions on how to use it and some qof scripts.


## What to do?
### What you need:

#### System requirements:
  * docker, docker compose 1.29.2 at least, Cgroup
  
  * 10GB of storage
  
  * At least 4GB of ram
  
#### Setup:

* First thing you will want to do is edit the docker service file (mine is located at "/etc/systemd/system/multi-user.target.wants/docker.service", idk about you tho...) and change the "ExecStart" var value to
```
ExecStart=/usr/bin/dockerd -H fd:// --containerd=/run/containerd/containerd.sock --exec-opt native.cgroupdriver=systemd
```
It will tell docker to use Cgroup which is needed by the differents slurm containers.
You may want to then, restart the docker service.

* Then, download/clone this repo, it will hold all of your cluster's dockerfiles, shared folders, etc...
```
git clone https://github.com/sOmEoNe2lOvEgIt/compose_slurm_cluster.git
```

* Finally, you will want to download/clone all of theses repos iside the previously cloned folder:

```
cd ./compose_slurm_cluster

git clone https://github.com/sOmEoNe2lOvEgIt/mariadb_docker.git

git clone https://github.com/sOmEoNe2lOvEgIt/slurm_node.git

git clone https://github.com/sOmEoNe2lOvEgIt/slurm_head_docker.git

git clone https://github.com/sOmEoNe2lOvEgIt/slurm_db_daemon_docker.git

git clone https://github.com/sOmEoNe2lOvEgIt/slurm_conf.git
```

This last repo holds the conf of all of the slurm daemons.

* Make sure that the docker service is running on your machine.
```
systemctl status docker
```

* DO NOT FORGET TO LAUNCH THE BUILD IMAGE SCRIPT!! IT WILL BUILD ALL IMAGES FROM THE DOCKERFILE NEEDED BY THE DOCKER COMPOSE!
```
./build_all_images.sh
```

## Good job!

If you are reading this, it means that you have either completed the previous steps or you have skipped the whole thing (in which case i wish you good luck...).

Now, theoricaly, you can start up this whole thing by going to the root of the repo then do 
```
docker compose up
```
It should cleany start everything. If it does not, try checking the previous steps. If it still does not work (and is then my fault), you can submit an issue that i will try to adress/fix.
