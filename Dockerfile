FROM ghcr.io/livebook-dev/livebook

# Configure your port accordingly
ENV LIVEBOOK_PORT 8080
EXPOSE 8080

# If you have a persistent volume, configure it here
VOLUME [/data]
# ENV RAILWAY_RUN_UID=0
ENV LIVEBOOK_DATA_PATH "/data"
USER root
RUN mkdir -p /data
RUN chmod 777 /data
