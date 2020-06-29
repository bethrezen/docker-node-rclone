ARG RCLONE_VERSION=v1.52.2

FROM alpine as builder
ARG RCLONE_VERSION

RUN wget https://github.com/rclone/rclone/releases/download/${RCLONE_VERSION}/rclone-${RCLONE_VERSION}-linux-amd64.zip && \
  unzip rclone-${RCLONE_VERSION}-linux-amd64.zip && mv rclone-${RCLONE_VERSION}-linux-amd64 rclone && ls -la rclone


FROM docker.black.devgroup.tech/mhart/alpine-node:13

COPY --from=builder /rclone/rclone /usr/bin

