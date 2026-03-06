# Codex Sandbox

Ready to use codex in a sandbox environment.

# Setup codex sandbox

- Copy `.env`

  ```
  cp .env.example .env
  ```

- Set the path where the codex repo is cloned
  - Defaults to `../../`, which is ideal to put codex-sandbox in `.agents/` directory.

  ```
  CODEX_REPO_HOST=/path/to/codex/repo
  ```

# Run codex sandbox

docker compose run --rm codex-agent
