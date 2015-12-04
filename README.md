# Swift language (http://swift.org) packaged as a Linux Docker container image

# About
Dockerfile is based on the "building Swift" instructions here: https://github.com/apple/swift/blob/master/README.md
Container image is based on vanilla Ubuntu 14.04 LTS.
No attempt has been made to optimize the size of this container - it's intended to be a handy starting point for Swift codebase hacking and as a PoC.

*WARNING: Building this image requires significant CPU, memory and disk space. Defaults for many docker-machine providers will fail due to lack of memory.*
