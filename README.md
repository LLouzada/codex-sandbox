# Codex Sandbox

A minimal Docker-based sandbox to run `@openai/codex` in an isolated container while working on a repository from your host machine.

---

## What this provides

- A reusable Docker container for running Codex
- A mounted workspace from the host machine into `/workspace`
- A persistent `.codex` directory for storing Codex data
- An optional offline profile with networking disabled

---

## Requirements

Before using this project, make sure you have:

- Docker installed
- Docker Compose available (docker compose)
- A repository or workspace on the host machine that Codex should access

---

## Setup

1. Copy the environment file

```bash
cp .env.example .env
```

2. Configure the workspace path

- Set CODEX_HOST_WORKSPACE_DIR to the host directory Codex should use as its workspace directory. Here, you can set this to your repository directory, for example:

  ```bash
    CODEX_HOST_WORKSPACE_DIR=/path/to/your/repository
  ```

  Default:

  ```bash
  CODEX_HOST_WORKSPACE_DIR=../../
  ```

  - This default is useful when this repository lives inside a hidden tooling directory such as .agents/, for example:

    ```plaintext
    your-project/
    ├── .agents/
    │   └── codex-sandbox/
    └── ...
    ```

- Set CODEX_HOST_CONFIG_DIR to the host directory Codex should use for its configuration directory. This is where cadox stores its cache, auth and other data. You can set this to your `~/.codex` directory, for example:

  ```bash
  CODEX_HOST_CONFIG_DIR=~/.codex
  ```

  Default:

  ```bash
  CODEX_HOST_CONFIG_DIR=./.codex
  ```

---

## Running

### Option 1: Docker Compose

#### Normal mode

Runs Codex with normal container networking enabled:

```bash
docker compose run --rm codex-agent
```

#### Offline mode

Runs Codex with networking disabled:

```bash
docker compose run --rm codex-agent-offline
```

### Option 2: Docker Hub Image

```bash
docker run --rm -it -v /path/to/your/repos:/workspace -v /path/to/.codex:/home/codex/.codex llouzada01/codex-sandbox-workspace:latest
```
