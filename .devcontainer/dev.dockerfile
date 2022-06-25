FROM rust

ENV TZ=America/New_York

RUN useradd --create-home --shell /bin/bash dev \
    && apt-get update \
    && apt-get install -y \
    bash-completion \
    nano \
    sudo \
    && rm -rf /var/lib/apt/lists/* \
    && echo "dev ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/dev \
    && rustup component add rustfmt


USER dev

CMD ["sleep", "infinity"]