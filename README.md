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

## Steps to copy the Github SDK and toolchain install method

1. Use NRF toolchain container as base image for Dockerfile (3.2.0) [image here](https://github.com/nrfconnect/sdk-nrf/pkgs/container/sdk-nrf-toolchain/592725564?tag=v3.2.0)
2. Use the west command to init the bm workspace (1.0.0)
3. Run west update to finish installation

- I am having problems getting the workspace structure to work. This structure is ideal since it places a dedicated version of the SDK in the repo. I am following the instructions from the documentation so that I can get a workspace build working on my local machine first. The application I made before is technically a freestanding app which is only good for demos.
- I followed the instructions and I am now having the bm SDK updated for the 3rd time. I think this will work though.
- The move may be to init the west workspace locally to update the SDK and then spin up the container.
- I will have to deal with the problem of the extension creating a git repo within mine. I deleted it last time and I think that may have been part of the problem. Maybe I only need the git repo in the beginning and can delete it after.
- I am also not sure that the build is using the local workspace SDK. I cannot select it when 

## Steps for creating a workspace application

- I created a dedicated SDK on my local machine and created a new application inside of it based on the LEDs example.
- My local VS code picked up the SDK and I was able to compile using this version (not the one in the ncs directory)
- I am now copying the docker files over from the previous repo to see if I can compile in the container
- IT WORKED!!! I had to redo the build config, but it was able to find the workspace SDK. Very good!

## Next things to figure out

- [x] Resolve issue with SEGGER agreement and install (added command to Dockerfile)
- [ ] Add dev container config for VS Code (including extensions)
- [ ] Test Flashing and Debugging from container (PURCHASE DEV BOARD)
