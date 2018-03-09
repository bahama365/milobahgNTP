# Docker NTP Server

An NTP server running on Alping Linux, NTP servers set in the ntpd.conf as follows:

#Stratum 1
server ntp0.uos.ac.uk
server ntp5.leontp.com
#Stratum 2
server ntp0.catn.com
server time.netweaver.uk
#Localhost as fallback
server localhost

Run as follows, allow 5mins before querying the server as it will need time to sync itself and become a valid server

docker run -d -p 123:123/udp --privileged milobahg/ntpd:latest
