# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.158.0/containers/go/.devcontainer/base.Dockerfile

# [Choice] Go version: 1, 1.15, 1.14
ARG VARIANT="1.16"

#FROM mcr.microsoft.com/vscode/devcontainers/go:0-${VARIANT}
FROM mcr.microsoft.com/vscode/devcontainers/go:${VARIANT}

EXPOSE 1323

ENV GOROOT="/usr/local/go"
ENV GOPROXY="https://proxy.golang.org"
ENV GO111MODULE="on"

# [Option] Install Node.js
ARG INSTALL_NODE="true"
ARG NODE_VERSION="lts/*"
RUN if [ "${INSTALL_NODE}" = "true" ]; then su vscode -c "umask 0002 && . /usr/local/share/nvm/nvm.sh && nvm install ${NODE_VERSION} 2>&1"; fi

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>

# [Optional] Uncomment the next line to use go get to install anything else you need
# RUN go get -x <your-dependency-or-tool>

# Creating ssl certificated
RUN mkdir -p /usr/local/share/certs \
    && cd /usr/local/share/certs \
    && go run /usr/local/go/src/crypto/tls/generate_cert.go --host localhost \
    && chown vscode *.pem

ENV CERTS="/usr/local/share/certs"

# Creating dir cache to auto certs
RUN mkdir -p /var/www/.cache \
    && chown -R vscode /var/www/.cache \
    && chmod -R 700 /var/www/.cache

# [Optional] Uncomment this line to install global node packages.
# RUN su vscode -c "source /usr/local/share/nvm/nvm.sh && npm install -g <your-package-here>" 2>&1