FROM 	hypriot/rpi-python

# install dependencies
RUN	apt-get update \
	&& apt-get install --no-install-recommends -y wget curl unzip iputils-ping


RUN	wget --no-check-certificate https://github.com/atarola/pyjojo/archive/master.zip && \
	unzip master.zip && \
	rm master.zip && \
	cd pyjojo-master && \
	pip install pyjojo

ENV	PORT=3003
EXPOSE  $PORT

VOLUME  ["/pyjojo_scripts"]

CMD	pyjojo --dir /pyjojo_scripts --port=$PORT
