---
layout: page
title: The toolbelt and Docker Builder Images
page_id: docker-builder-images
---

## The toolbelt and Docker Builder Images

The toolbelt is a utility to enable builds of software modules without installing toolchains, frameworks and so on. In some respects it is an alternative to the VM, even though it is not as complete. The toolbelt requires close to no installation and uses [docker](https://www.docker.com/) to create the build environments that are needed. As opposed to the VM it also enables you to use your regular development environments and tools, and the files you are working on are stored in your normal file system. The toolbelt only kicks in when you run tests or build code.

The docker images that are used when building modules are called builders and contain all the tools needed to build the Bitcraze projects, In the images, we have installed compilers for the processors that are used in our hardware as well as python for the python client. The goal is to make it easy to build Bitcraze code without having to install various tools with the complexity of supporting multiple operating systems.

The builder images are also used when building the project on our CI server at [travis](https://travis-ci.org/bitcraze), why it can be considered the official build environment. To understand how the images are used on travis, take a look in the .travis.yml file in the root of projects.

The source code can be found on [github - bitcraze/toolbelt]([https://github.com/bitcraze/toolbelt). 
## Installation and usage 

Instructions on how to install and use the toolbelt are available in the [read me](https://github.com/bitcraze/toolbelt) file of the repository.
