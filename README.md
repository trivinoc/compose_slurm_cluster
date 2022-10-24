# compose_slurm_cluster

This repo holds the docker compose file to create a slurm cluster in a docker container.

It also contains a readme that gives you instructions on how to use it.


### **System requirements:**
  * docker, docker compose 1.29.2 at least, Cgroup
  
  * 10GB of storage
  
  * At least 4GB of ram


### **Setup:**

* First thing edit the docker service file (RHEL7, located at "/etc/systemd/system/multi-user.target.wants/docker.service") and change the "ExecStart" native.cgroupdriver value to systemd in order to support cgroup memory control on slurm nodes.
```
ExecStart=/usr/bin/dockerd -H fd:// --containerd=/run/containerd/containerd.sock --exec-opt native.cgroupdriver=systemd
```
Restart the docker service.

* Then, download/clone this repo, it will hold all of your cluster's dockerfiles, shared folders, etc...
```
git clone https://github.com/trivinoc/compose_slurm_cluster.git
```

The slurm_conf directory holds the configuration files of all of the slurm daemons.

* Make sure that the docker service is running on your machine.
```
systemctl status docker
```

* Move into the compose_slurm_cluster directory and build the images with the corresponding script.
```
./build_all_images.sh
```

Now, theoricaly, you can start up the cluster by going to the root of the repository, then run the command 
```
docker compose up
```
It should cleany start everything. If it does not, try checking the previous steps.

--------------------

If at the time of building the images you fall into this error :

```
 ---> Running in b83712019e1b
 cgroups: cgroup mountpoint does not exist: unknown
```
then run these commands :

```
sudo mkdir /sys/fs/cgroup/systemd
sudo mount -t cgroup -o none,name=systemd cgroup /sys/fs/cgroup/systemd

# Add to /etc/fstab
cgroup    /sys/fs/cgroup/systemd    cgroup    defaults
```

