FROM ubuntu
RUN apt-get update; \
	apt-get install -y sudo; \
	apt-get clean
RUN useradd -m tomcat

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["sudo", "sh", "/entrypoint.sh"]
