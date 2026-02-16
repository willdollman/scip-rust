FROM rust:1.93.1@sha256:80302520b7199f0504975bca59a914015e9fee088f759875dbbc238ca9509ee1

COPY scip-rust /usr/local/bin/scip-rust

RUN chmod +x /usr/local/bin/scip-rust

RUN curl -sfL https://github.com/rust-analyzer/rust-analyzer/releases/download/2023-07-03/rust-analyzer-x86_64-unknown-linux-gnu.gz --output rust-analyzer.gz && \
  gunzip rust-analyzer.gz && \
  chmod +x /rust-analyzer && \
  mv /rust-analyzer /usr/local/bin
