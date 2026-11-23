# Chirpy

Chirpy is a RESTful HTTP web server and microblogging API written in Go and backed by PostgreSQL. It supports user registration, JWT and refresh token authentication, Chirp creation/filtering/sorting/deletion, and Polka payment webhook integration for Chirpy Red memberships.

## Prerequisites

- **Go** (1.22+)
- **PostgreSQL**
- **[goose](https://github.com/pressly/goose)** (database migrations)
- **[sqlc](https://sqlc.dev/)** (type-safe SQL code generation)

## Environment Setup

Create a `.env` file in the project root with the following variables:

```env
DB_URL="postgres://postgres:postgres@localhost:5432/chirpy?sslmode=disable"
PLATFORM="dev"
JWT_SECRET="your-secret-key"
POLKA_KEY="f271c81ff7084ee5b99a5091ba42d486"
