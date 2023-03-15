FROM alpine:latest

USER root

RUN apk add --no-cache iptables

RUN mkdir -p /home/deck/uu/

RUN echo router=steam-deck-plugin$'\n'model=x86_64 > /home/deck/uu/uuplugin_monitor.config

RUN wget https://uu.gdl.netease.com/uuplugin-script/202301101600/uuplugin_monitor.sh -O /home/deck/uu/uuplugin_monitor.sh

CMD ["/bin/sh", "/home/deck/uu/uuplugin_monitor.sh"]
