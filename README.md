# Template Docker Dev

This is a template repository for developing Elixir/Phoenix applications using Docker. It provides a ready-to-use Docker development environment with essential tools and configurations.
## Development Environment
```bash
  docker compose up --build
```
This command builds and starts the development environment using Docker Compose. It sets up the necessary services, including the Elixir/Phoenix application and a PostgreSQL database.

## Configuration Dockerfile.dev

ARG ELIXIR_VERSION=1.19.4
ARG OTP_VERSION=28.3
ARG DEBIAN_VERSION=trixie-20251208-slim

ARG BUILDER_IMAGE="docker.io/hexpm/elixir:${ELIXIR_VERSION}-erlang-${OTP_VERSION}-debian-${DEBIAN_VERSION}"
You can change the versions of Elixir, OTP, and Debian according to your needs.

## Configuration docker-compose.yml
Database Service:

- POSTGRES_USER: postgres # Default user
- POSTGRES_PASSWORD: postgres # Default password
- POSTGRES_DB: you_data_base # Change as needed

App Service:

- The `DATABASE_URL` environment variable is configured to connect to the PostgreSQL database service defined in the `docker-compose.yml` file.

- config/dev.exs
As you can see, the database points to "db" which is the name of the database service in docker-compose.yml.

Feel free to customize the configuration according to the needs of your project.

## Additional Tools
If you already have an application, you can run the following command if you don't have a Dockerfile

```bash
  mix phx.gen.release --docker
```

this command allows you to generate the files with the versions of Elixir and Erlang that you are using in your project.

then you can change the versions in Dockerfile.dev of this project in yours and adapt them to your needs.