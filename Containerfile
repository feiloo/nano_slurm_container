FROM docker.io/opensuse/leap:latest

RUN zypper install -y \
	munge \
	slurm-munge \
	slurm \
	tmux \
	neovim \
	slurm-slurmdbd \
	slurm-node \
	mariadb

RUN echo linux0 > /etc/hostname
COPY slurmconf /etc/slurm/slurm.conf

RUN chmod ugo+rwx -R /var/spool/
RUN mkdir /run/munge

RUN echo -e "root1aasdf\nroot1aasdf" | passwd root
RUN echo -e "slurm234jsljfd\nslurm234jsljfd" | passwd slurm
RUN usermod -s /bin/bash slurm

#USER slurm

#RUN munged -f
#RUN slurmctl -D
#RUN slurmd -D
