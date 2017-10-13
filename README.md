Flutter Docker
==============

Dockerfile for working with Flutter Linux engine variants.

This image does not contain any of the engine or framework source code. It does however contain all the Linux development utilities required for working on the Flutter engine. I primarily use it on my Mac so I don't have to SSH into a Linux box and work on a parallel copy of the source code.

To work on your source in the Linux environment, use the following command:

`docker run --cap-add=SYS_PTRACE --rm -it -v `pwd`:/CurrentDirectory -w /CurrentDirectory chinmaygarde:flutter_docker /bin/bash`
