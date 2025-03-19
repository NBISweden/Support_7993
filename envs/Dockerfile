FROM condaforge/mambaforge:4.10.1-0
LABEL org.opencontainers.image.source=https://github.com/NBISweden/repo \
    org.opencontainers.image.description="Dockerfile for the #NNNN NBIS support project" \
    org.opencontainers.image.licenses=MIT \
    author="Lokeshwaran Manoharan" \
    email="lokeshwaran.manoharan@nbis.se"


# Use bash as shell
SHELL ["/bin/bash", "-c"]

# Set working directory
WORKDIR /project

# Copy and install the Conda environment
COPY environment.yml ./
RUN conda config --set channel_priority strict \
    && mamba env update --name base --file environment.yml \
    && mamba clean --all --force-pkgs-dirs --yes
# Start Bash shell by default
CMD /bin/bash
