FROM alpine:latest

USER root

RUN apk add --no-cache iptables

RUN mkdir -p /home/deck/uu/

RUN echo router=steam-deck-plugin$'\n'model=x86_64 > /home/deck/uu/uuplugin_monitor.config

# https://router.uu.163.com/api/script/monitor?type=steam-deck-plugin
RUN wget https://uurouter.gdl.netease.com/uuplugin-script/steam-deck-plugin/monitor/v3/uuplugin_monitor.sh -O /home/deck/uu/uuplugin_monitor.sh

CMD ["/bin/sh", "/home/deck/uu/uuplugin_monitor.sh"]
