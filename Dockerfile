FROM debian:buster

RUN apt update && apt install -y build-essential && apt-get install -y manpages-dev
COPY /ft_irc/ ./

CMD ["sleep", "infinity"]
