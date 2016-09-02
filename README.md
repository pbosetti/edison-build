# Docker image for Intel Edison cross-compiling

This version is interactive. You have to cd in your source directory and issue:

    docker run -ti --rm -v $PWD:/root/build p4010/edison-build

This will open a shell where you can use gcc, make or even cmake (and git) for cross-compiling for the Intel Edison platform