FROM ghcr.io/berriai/litellm:main-latest

RUN apt-get update && apt-get install -y curl

CMD curl -o /config.yaml https://raw.githubusercontent.com/doprado/test/refs/heads/main/config.yaml && litellm --config /config.yaml
