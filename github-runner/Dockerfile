FROM dind:ubuntu-18.04

RUN apt update
RUN apt install libunwind8 icu-devtools git -y
RUN rm -rf /var/lib/apt/lists/*

RUN curl -LJO https://github.com/cruizsan/github-actions-runner-self-hosted/raw/master/actions-runner-linux-x64.tar.gz
RUN tar xzf ./actions-runner-linux-x64.tar.gz

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
