# nookazon-helper
A DiscordJS bot for storing and retrieving Nookazon links.

### How to run the bot
1) Install [Docker](https://docs.docker.com/get-docker/) for your OS, and if you're on Linux install [Docker Compose](https://docs.docker.com/compose/install/)
2) Clone the repo
3) Edit the appropriate fields in the docker-compose.yml file (Note: DB_PASS and MYSQL_PASSWORD must be the *same value*)
4) Run `docker-compose up`
5) All done!

On the first run Docker will create persistent data volumes for the database storage, these will not be destroyed unless you explicitly do so using `docker-compose down -v`.

### How to use the bot
The bot only has 2 commands:
- `!nookazon` or `!nook`: set and retrieve Nookazon profile information
  - Setting your profile information: `!nook set https://nookazon.com/profile/1234567890`
  - Retriving a user's information: `!nook DiscordUsername`
  ```
  Nookazon information for Mac:
  Wishlist: https://nookazon.com/profile/1922629919/wishlist
  Catalog: https://nookazon.com/profile/1922629919/catalog
  ```  
- `!help`: display help for the specified command
  - e.g. `!help nookazon` will show the help text for the nookazon command
  

