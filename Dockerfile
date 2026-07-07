FROM debian:stable-slim
COPY goserver-Docker /bin/goserver-Docker
CMD ["/bin/goserver-Docker"]
