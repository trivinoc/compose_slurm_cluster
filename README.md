# compose_slurm_cluster
### Basic description:
This repo holds the docker compose file to create a slurm cluster in a docker container.

It also contains a readme that gives you instructions on how to use it and some qof scripts.


## What to do?
### What you need:
First thing you will want to do is download/clone this repo, it will hold all of your cluster's dockerfiles, shared folders, etc...

Then, you will want to do is download/clone all of theses repos iside the previously cloned folder:

https://github.com/sOmEoNe2lOvEgIt/mariadb_docker.git

https://github.com/sOmEoNe2lOvEgIt/slurm_node.git

https://github.com/sOmEoNe2lOvEgIt/slurm_head_docker.git

https://github.com/sOmEoNe2lOvEgIt/slurm_db_daemon_docker.git

https://github.com/sOmEoNe2lOvEgIt/slurm_conf.git

This last repo holds the conf of all of the slurm daemons.

DO NOT FORGET TO LAUNCH THE BUILD IMAGE SCRIPTS!! IT WILL BUILD IMAGES FOR THE DOCKERFILE!

## Good job!

If you are reading this, it means that you have either completed the previous steps or you have skipped the whole thing (in which case i wish you good luck...).

Now, theoricaly, you can start up this whole thing by going to the root of the repo then do "docker compose up". It should cleany start everything. If it does not, try checking the previous steps. If it still does not work (and is then my fault), you can submit an issue that i will try to adress/fix.
