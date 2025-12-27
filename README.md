# Template Docker Dev
This is a template repository for developing Elixir/Phoenix applications using Docker. It provides a ready-to-use Docker development environment with essential tools and configurations.
## Development Environment
```bash
  docker compose up --build
```
This command builds and starts the development environment using Docker Compose. It sets up the necessary services, including the Elixir/Phoenix application and a PostgreSQL database.

## Configuration
- config/dev.exs
As you can see, the database points to "db" which is the name of the database service in docker-compose.yml.

Feel free to customize the configuration according to the needs of your project.