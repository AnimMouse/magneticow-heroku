FROM frolvlad/alpine-glibc:latest
RUN apk add --no-cache libstdc++ zstd
WORKDIR app/
RUN wget https://github.com/boramalper/magnetico/releases/latest/download/magneticow && chmod +x magneticow
COPY magneticow.sh .
CMD ["/app/magneticow.sh"]