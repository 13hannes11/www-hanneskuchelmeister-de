FROM ubuntu:latest AS build

RUN apt-get update && apt-get install hugo -y
WORKDIR /opt/www
COPY . .
# Run Hugo in the Workdir to generate HTML.
RUN hugo 

FROM caddy:latest
WORKDIR /app
COPY --from=build /opt/www/public /app/
CMD ["caddy", "file-server", "--listen", ":3000"]

