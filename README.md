# Codex Sandbox

Ready to use codex in a sandbox environment.

# Setup codex sandbox

- Copy `.env`

  ```
  cp .env.example .env
  ```

- Set the path to the workspace where codex will work
  - Defaults to `../../`, which is ideal to put codex-sandbox in `.agents/` directory.

  ```
  CODEX_HOST_WORKSPACE=/path/to/codex/repo
  ```

# Run codex sandbox

docker compose run --rm codex-agent
