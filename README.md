# Go server and Python script in Docker

Exercises from Boot.dev's Learn Docker course: packaging a small Go web server and a Python script as Docker images.

## Go web server

`main.go` starts an HTTP server on the port given by the `PORT` environment variable. `Dockerfile` copies a prebuilt Linux binary into a slim Debian image and sets `PORT=8991`.

```bash
GOOS=linux GOARCH=amd64 go build -o goserver-Docker
docker build -t goserver .
docker run -p 8991:8991 goserver
```

Then open http://localhost:8991.

## Python script

`main.py` reads `books/frankenstein.txt` and prints its word count and letter frequencies. `Dockerfile.py` builds Python 3.10 from source on Debian and runs the script.

```bash
docker build -t bookbot -f Dockerfile.py .
docker run bookbot
```
