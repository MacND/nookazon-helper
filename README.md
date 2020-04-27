# nookazon-helper
A DiscordJS bot for storing and retrieving Nookazon links.

### How to use
1) Install [Docker](https://docs.docker.com/get-docker/) for your OS, and if you're on Linux install [Docker Compose](https://docs.docker.com/compose/install/)
2) Clone the repo
3) Edit the appropriate fields in the docker-compose.yml file (Note: DB_PASS and MYSQL_PASSWORD must be the *same value*)
4) Run `docker-compose up`
5) All done!

On the first run Docker will create persistent data volumes for the database storage, these will not be destroyed unless you explicitly do so using `docker-compose down -v`.
