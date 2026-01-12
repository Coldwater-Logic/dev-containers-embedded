# Using Dev Containers for Embedded Systems Development

## Notes

- The nRF Connect extension for VS Code installs the SDK and toolchain for you.
- All I have to do is figure out what the extension is doing and copy it in the Dockerfile.
- I am first going to set up an example application using the VS Code extension to have a working setup.
- There are a lot of very nice tools in the extension. I will want to make sure it works in the container.
- I may just make a presentation on the nRF54L because the tools are so good. This info is great.

- The new application setup inits a repo in the application folder. Note to remove this.
- I created a new application using the BM LEDs example.

- I looked at the installed SDK and it is different from the one available on nordic's bm releases github
- There seem to be two methods for installing the SDK, pre-packaged and github.
- I used the former, but I think the latter might be the way to go.
- The github method requires installing the toolchain and sdk individually.
- I found the github page for the nRF Connect SDK toolchains (https://github.com/nrfconnect/sdk-nrf/releases).
- The bare metal SDK v1.0.0 requires toolchain version 3.2.0.
- The Github method showed what commands it ran in the terminal. I output the logs to the desktop so that I can copy them later.
- I got a working build using the GitHub method. This is the install method I am going to emulate.
