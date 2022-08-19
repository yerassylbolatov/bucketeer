### Example commands

Rebuild and start: `docker-compose up -d --build`

Login: `docker exec -it postgres psql -U user`

This command will be determined by the docker-compose.yml file if different env variables are used.

Eg. `docker exec -it postgres psql -U user testdb` as this takes a database name.

Show tables: `\dt`

Show databases: `\l`