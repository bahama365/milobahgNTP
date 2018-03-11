# Docker NTP Server

An NTP server running on Alping Linux, check for configured Stratum 1 and 2 NTP servers in ntpd.conf.

Run as follows, allow 5mins before querying the server as it will need time to sync itself and become a valid server

docker run --rm -d --cap-add SYS_RESOURCE --cap-add SYS_TIME -p 123:123/udp --name ntp milobahg/ntpd:latest
