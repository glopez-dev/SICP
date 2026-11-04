FROM ubuntu:22.04

RUN apt-get update && apt-get install -y racket ca-certificates libssl-dev \
    && rm -rf /var/lib/apt/lists/*

# #lang sicp (SICP) et #lang simply-scheme (CS61AS), installés pour tous les utilisateurs
RUN raco pkg install --auto --batch --scope installation --no-docs sicp simply-scheme

RUN useradd -m schemeuser
USER schemeuser
WORKDIR /home/schemeuser

CMD ["racket", "-l", "sicp", "-i"]
