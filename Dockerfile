FROM debian

ENV DCOS_CLI_VERSION="1.10"
ENV \
    DCOS_CLI_URL="https://downloads.dcos.io/binaries/cli/linux/x86-64/dcos-${DCOS_CLI_VERSION}/dcos" \
    DCOS_CLI_FILENAME="dcos"

ADD ${DCOS_CLI_URL} /usr/local/bin/${DCOS_CLI_FILENAME}
ADD cf-deploy-dcos /cf-deploy-dcos

RUN chmod 755 /usr/local/bin/${DCOS_CLI_FILENAME} && \
    chmod 755 /cf-deploy-dcos

ENTRYPOINT ["/bin/sh", "-c"]
