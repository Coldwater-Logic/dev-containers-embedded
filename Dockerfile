# Start with the official nRF Connect SDK Toolchain image.
# Version 3.2.0 is necessary since we are using version 1.0.0 of the bare metal SDK.
FROM ghcr.io/nrfconnect/sdk-nrf-toolchain:v3.2.0

# Set the working directory inside the container.
WORKDIR /workspace

# Init the west workspace.
RUN west init -m https://github.com/nrfconnect/sdk-nrf-bm --mr v1.0.0 .

# Update the west workspace.
RUN west update

# Export the environment.
RUN west zephyr-export
