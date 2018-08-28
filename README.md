# Kali_Docker_redteam

This project will download and modify the Kali linux docker container, make some changes to make is functional, then install and configure armitage on your mac to give you a phase1 of a red-team environment.

USE:
1) Download the Dockerfile and the script.
2) Put them in the same directory.
3) Execute the script. (kali-docker.sh)
4) Click connect on the Armitage UI
5) ??
6) Profit!

NOTES: will make an armitage directory in the same locaiton as the script. In this directory are the java (.jar) the launch script and the database config. look in the database config to se the user and password (randomly generated). You shouldnt need it, but just in case, there it is.

If tyou want to put together a shared playground, send your buddies the armitage folder, and let them knmow your IP, they will need to change localhost in the database.yml to your IP.
