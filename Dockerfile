FROM alpine:3.3
MAINTAINER Joan Llopis <jllopisg@gmail.com>

##
## ROOTFS
##

# root filesystem
COPY rootfs /

# s6 overlay
RUN apk add --no-cache curl \
	&& curl https://github.com/just-containers/s6-overlay/releases/download/v1.17.2.0/s6-overlay-amd64.tar.gz -kL -o /tmp/s6-overlay.tar.gz \
	&& tar xvfz /tmp/s6-overlay.tar.gz -C / \
	&& rm -f /tmp/s6-overlay.tar.gz

##
## INIT
##

ENTRYPOINT [ "/init" ]
