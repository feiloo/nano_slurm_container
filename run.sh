#!/bin/bash
podman run -ti \
	--rm \
	-p 6817:6817 \
	-p 6818:6818 \
	--hostname linux0 \
	--systemd=true \
	slurmtest \
	/bin/bash
