# DAWeave Dockerfile Aspect Weaver
DAWeave is a simple project that weaves Dockerfile templates into existing Docker images. There is very little to this project. It is just a little proof of concept sed script.

## Running the Example
'''
./daweave.sh busybox:latest example.advice ./output
'''
Before you run the example, make sure that you've created a folder called output, and that it doesn't contain a Dockerfile that is precious.
Running this command will advise the busybox:latest image to expose port 80, generate busybox:latest.advised, and cleanup the generated Dockerfile.
