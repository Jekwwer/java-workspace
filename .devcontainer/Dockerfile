# .devcontainer/Dockerfile: Sets up the development container for the project.

# Use the existing devcontainer image as the base
FROM mcr.microsoft.com/devcontainers/java:21

# Set environment variable to non-interactive mode for apt-get installations
ENV DEBIAN_FRONTEND=noninteractive

# Set arguments for the versions
ARG HADOLINT_VERSION=v2.12.0
ARG MAVEN_VERSION=3.9.9

ARG PYTHON_VERSION=3.11.2-1+b1
ARG PYTHON_PIP_VERSION=23.0.1+dfsg-1
ARG PYTHON_VENV_VERSION=3.11.2-1+b1

ARG UNZIP_VERSION=6.0-28
ARG WGET_VERSION=1.21.3-1+b2

# Install additional utilities, Maven, and Hadolint
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    wget=${WGET_VERSION} \
    unzip=${UNZIP_VERSION} \
    python3=${PYTHON_VERSION} \
    python3-pip=${PYTHON_PIP_VERSION} \
    python3-venv=${PYTHON_VENV_VERSION} \
    && wget --progress=dot:giga -O /tmp/maven.zip https://downloads.apache.org/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.zip \
    && unzip /tmp/maven.zip -d /usr/local \
    && mv /usr/local/apache-maven-${MAVEN_VERSION} /usr/local/maven \
    && ln -s /usr/local/maven/bin/mvn /usr/local/bin/mvn \
    && wget --progress=dot:giga -O /usr/local/bin/hadolint https://github.com/hadolint/hadolint/releases/download/${HADOLINT_VERSION}/hadolint-Linux-x86_64 \
    && chmod +x /usr/local/bin/hadolint \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/maven.zip

# Set up a virtual environment specifically for pre-commit
RUN python3 -m venv /opt/precommit-env && \
    /opt/precommit-env/bin/pip install --upgrade pip && \
    /opt/precommit-env/bin/pip install pre-commit

# Set environment variables for Maven (optional)
ENV MAVEN_HOME=/usr/local/maven
ENV PATH="${MAVEN_HOME}/bin:${PATH}"
ENV PATH="/opt/precommit-env/bin:$PATH"
