	
FROM	drone/cli:alpine
LABEL	org.opencontainers.image.authors="Toni Tauro <eye@eyenx.ch>"
ADD	entrypoint.sh	/entrypoint.sh
RUN	chmod +x /entrypoint.sh
ENTRYPOINT	["/entrypoint.sh"]
