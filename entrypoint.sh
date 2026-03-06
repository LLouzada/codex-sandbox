#!/usr/bin/env bash
set -euo pipefail

cd /workspace

# Mostra contexto mínimo
echo "Running as: $(whoami)"
echo "Workspace: $(pwd)"
echo "Listing workspace root:"
ls

# Executa o codex (passa argumentos)
exec codex "$@"