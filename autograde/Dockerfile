FROM ubuntu:22.04

WORKDIR /app

RUN apt-get update && apt-get install -y openssh-server netcat
RUN useradd -m -s /bin/bash vuln
RUN echo vuln:password123 | chpasswd
RUN mkdir -p -m0755 /var/run/sshd
COPY vuln.sh .
RUN chmod +x vuln.sh
ENTRYPOINT [ "./vuln.sh" ]