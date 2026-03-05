#!/usr/bin/env bash

set -euo pipefail

# Garante que o agente só opera no /workspace
cd /workspace

# Mostra contexto mínimo
echo "Running as: $(whoami)"
echo "Workspace: $(pwd)"
echo "Listing workspace root:"
ls -la

# Executa o codex (passa argumentos)
exec codex "$@"