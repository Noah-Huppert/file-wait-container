# File Wait Container
Docker container which waits for a file to exist.  

# Table Of Contents
- [Overview](#overview)
- [Example](#example)
- [Development](#development)

# Overview
Waits for a file to exist before exiting.  

The file to wait for is configured via the `WAIT_FILE_PATH` environment 
variable.

# Example
Example of waiting for a file located at `/files/foo`:

```
docker run \
	--rm \
	-it \
	-e WAIT_FILE_PATH=/files/foo \
	-v $(pwd):/files \
	noahhuppert/file-wait-container:dev
```

# Development
Run the `build` make target to build and tag the Docker image.  

Override the following variables to customize the tag:

- `repo`: Defaults to `noahhupert/file-wait-container`
- `version`: Defaults to `dev`

These variables will be assembled to create the tag:  

```
<repo>:<version>
```
