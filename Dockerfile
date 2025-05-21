FROM rust:1.87

WORKDIR /app
COPY . /app
RUN rustup default nightly && rustup update
RUN cargo build --release

CMD ["cargo", "run"]
