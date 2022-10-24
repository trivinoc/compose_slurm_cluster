# compose_slurm_cluster
### Basic description:
This repo holds the docker compose file to create a slurm cluster in a docker container.

It also contains a readme that gives you instructions on how to use it and some qof scripts.


## What to do?
### What you need:
First thing you will want to do is download/clone all of theses repos in this folder:

https://github.com/sOmEoNe2lOvEgIt/mariadb_docker.git

https://github.com/sOmEoNe2lOvEgIt/slurm_node.git

https://github.com/sOmEoNe2lOvEgIt/slurm_head_docker.git

https://github.com/sOmEoNe2lOvEgIt/slurm_db_daemon_docker.git

You may also want to fork this repo :

https://github.com/sOmEoNe2lOvEgIt/slurm_conf.git

This last repo holds the conf of all of the slurm daemons. If you want to use your own to add/remove nodes or simply change the conf, you may change all of the slurm conf folders in each of the slurm daemons folders. The slurm conf is always located in the etc folder. You dont have to touch the pull_conf script as it will stil function normally if your folder tree is correct.

DO NOT FORGET TO START THE SETUP CONF THEN BUILD IMAGE SCRIPTS, IT WILL UPDATE THE CONF AS THE SAME ONE ON EVERY DAEMON WHICH IS NECESSARY FOR SLURM TO WORK AND BUILD IMAGES FOR THE DOCKERFILE!

### What do you do?
Ok! Now that you have all that you need, you will need to update the paths of the shared volumes in the docker compose file as theses are hard coded into the file and your path may vary depending in wich folder you put the repo in.

For each of the slurm nodes, there is a shared volume to your folder containing cgroup on your computer (as such  */sys/fs/cgroup:/sys/fs/cgroup:ro*). If you dont have this folder, either, install/update cgroup, either change this path to the one matching on your distribution. (I cant tell you where it is, sadly, i am not a wizzard)

## Good job!

If you are reading this, it means that you have either completed the previous steps or you have skipped the whole thing (in which case i wish you good luck...).

Now, theoricaly, you can start up this whole thing by going to the root of the repo then do "docker compose up". It should cleany start everything. If it does not, try checking the previous steps. If it still does not work (and is then my fault), you can submit an issue that i will try to adress/fix.
