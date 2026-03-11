FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates curl git openssh-client bash \
    nodejs npm ripgrep \
  && rm -rf /var/lib/apt/lists/*

# RUN npm i -g npm@latest

RUN npm i -g @openai/codex@latest

RUN useradd -m -u 1000 codex
USER codex
WORKDIR /workspace

COPY --chown=codex:codex entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]