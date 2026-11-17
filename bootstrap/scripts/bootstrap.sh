#!/bin/sh -e
# High-level bootstrap entry point

ROOT="${1:-./kiss-root}"

echo "KISS sabotage-style bootstrap"
echo "Target root: $ROOT"

./scripts/build-stage0 "$ROOT"
echo
echo "To enter the system:"
echo "  ./scripts/enter-chroot $ROOT"
echo
echo "Inside, clone or copy the repo, set KISS_PATH, and kiss b / kiss i as needed."
