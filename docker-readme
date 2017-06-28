# Docker Image for Catmandu

## How to use this docker image

Starting this Catmandu image is easy:

```bash
docker run -it librecat/catmandu
```

Now, you should be able to run this command in the docker terminal:

```bash
catmandu@d45e783d0bca:~$ catmandu help
```

Upgrade an existing docker image to the latest version:

```bash
docker pull librecat/catmandu
```

Start docker with access to your own files:

Windows:
```bash
docker run -v C:\Users\yourname:/home/catmandu/Home -it librecat/catmandu
```

OSX:
```bash
docker run -v /Users/yourname:/home/catmandu/Home -it librecat/catmandu
```

Linux:
```bash
docker run -v /home/yourname:/home/catmandu/Home -it librecat/catmandu
```

# Build the Catmandu image from scratch

Clone the GitHub repository:

```bash
git clone https://github.com/LibreCat/docker-catmandu
```

Start your Docker host and change directory into `docker-catmandu`:

```bash
cd docker-catmandu
```

Build the image:

```bash
docker build -t test_catmandu .
```

Start the image:

```bash
docker run -it test_catmandu
```
