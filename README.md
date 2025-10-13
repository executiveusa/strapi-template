# strapi-template

A production-ready Strapi template repository with Docker, CI/CD, and development tooling.

## Features

- 🚀 Strapi CMS v4.15+
- 🐳 Docker and Docker Compose support
- 🔄 GitHub Actions CI/CD pipeline
- 🛠️ Makefile for common tasks
- 📝 Environment configuration with .env.example
- 🗄️ PostgreSQL database support
- ✅ Jest testing setup

## Prerequisites

- Node.js 18.x or 20.x
- npm 6.0.0 or higher
- Docker and Docker Compose (for containerized deployment)

## Getting Started

### Local Development

1. Clone this repository:
```bash
git clone https://github.com/executiveusa/strapi-template.git
cd strapi-template
```

2. Install dependencies:
```bash
make setup
# or
npm ci
```

3. Copy the example environment file:
```bash
cp .env.example .env
```

4. Update the `.env` file with your configuration

5. Start the development server:
```bash
make dev
# or
npm run dev
```

The application will be available at http://localhost:1337

### Docker Deployment

1. Build and start the containers:
```bash
docker-compose up -d
```

2. The application will be available at http://localhost:1337

3. To stop the containers:
```bash
docker-compose down
```

## Available Commands

### Makefile Targets

- `make setup` - Install dependencies
- `make dev` - Run development server
- `make test` - Run tests
- `make build` - Build the application

### npm Scripts

- `npm run dev` - Start Strapi in development mode
- `npm start` - Start Strapi in production mode
- `npm run build` - Build the admin panel
- `npm test` - Run tests

## Project Structure

```
.
├── .github/
│   └── workflows/
│       └── ci.yml          # GitHub Actions CI pipeline
├── Dockerfile              # Docker configuration
├── docker-compose.yml      # Docker Compose configuration
├── Makefile               # Make targets for common tasks
├── package.json           # Project dependencies and scripts
├── .env.example          # Example environment variables
├── LICENSE               # MIT License
└── README.md            # This file
```

## Environment Variables

Key environment variables (see `.env.example` for complete list):

- `HOST` - Server host (default: 0.0.0.0)
- `PORT` - Server port (default: 1337)
- `DATABASE_CLIENT` - Database client (postgres, sqlite, etc.)
- `DATABASE_HOST` - Database host
- `DATABASE_PORT` - Database port
- `DATABASE_NAME` - Database name
- `DATABASE_USERNAME` - Database username
- `DATABASE_PASSWORD` - Database password

## CI/CD

This project includes a GitHub Actions workflow that:

- Runs on Node.js 20.x
- Caches npm dependencies
- Runs tests
- Builds the application

The workflow is triggered on:
- Push to main branch
- Pull requests to main branch

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## Support

For issues and questions, please open an issue in the GitHub repository.