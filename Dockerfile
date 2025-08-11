FROM rust:1.89.0@sha256:c50cd6e20c46b0b36730b5eb27289744e4bb8f32abc90d8c64ca09decf4f55ba

COPY scip-rust /usr/local/bin/scip-rust

RUN chmod +x /usr/local/bin/scip-rust

RUN curl -sfL https://github.com/rust-analyzer/rust-analyzer/releases/download/2023-07-03/rust-analyzer-x86_64-unknown-linux-gnu.gz --output rust-analyzer.gz && \
  gunzip rust-analyzer.gz && \
  chmod +x /rust-analyzer && \
  mv /rust-analyzer /usr/local/bin
