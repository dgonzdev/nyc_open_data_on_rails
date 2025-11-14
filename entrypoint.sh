#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /nyc_open_data/tmp/pids/server.pid

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
