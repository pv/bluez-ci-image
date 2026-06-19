# bluez-ci-image

Docker image for Bluez Build

## Manual build

Docker image can be built manually for internal testing:

```bash
docker build . --file Dockerfile --tag bluez-build:<tag>
```

and can be used to test like

```bash
docker run -ti --workdir /github/workspace -v "<local/path>":"/gihub/workspace" bluez-build:<tag> /bin/bash
```

## Build for publishing

Automatically published to GitHub container registry via push on
master, as ``ghcr.io/pv/bluez-ci-image:latest``

### Useful commands

#### Pull the image from Docker.io

```bash
docker pull ghcr.io/pv/bluez-ci-image:latest
```

#### Show list of images

```bash
docker images
```
