FROM rust:1.88.0@sha256:af306cfa71d987911a781c37b59d7d67d934f49684058f96cf72079c3626bfe0

COPY scip-rust /usr/local/bin/scip-rust

RUN chmod +x /usr/local/bin/scip-rust

RUN curl -sfL https://github.com/rust-analyzer/rust-analyzer/releases/download/2023-07-03/rust-analyzer-x86_64-unknown-linux-gnu.gz --output rust-analyzer.gz && \
  gunzip rust-analyzer.gz && \
  chmod +x /rust-analyzer && \
  mv /rust-analyzer /usr/local/bin
