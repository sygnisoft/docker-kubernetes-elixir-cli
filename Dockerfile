FROM elixir:1.8-slim

WORKDIR /app

ENTRYPOINT ["mix", "run", "--no-deps-check"]

RUN apt-get update && apt-get install -y rsync

RUN mix local.hex --force
RUN mix local.rebar --force
