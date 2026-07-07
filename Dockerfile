FROM debian:stable-slim
COPY goserver-Docker /bin/goserver-Docker
ENV PORT=8991
CMD ["/bin/goserver-Docker"]

