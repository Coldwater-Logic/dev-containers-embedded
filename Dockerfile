# Start with debian bookworm slim as the base image
FROM debian:bookworm-slim

# Update and install dependencies
RUN apt-get update && apt-get install -y \
    curl

# Install nRF SDK and Toolchain