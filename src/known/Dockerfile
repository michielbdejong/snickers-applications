FROM lamp

RUN curl -O https://codeload.github.com/idno/Known/tar.gz/v0.7.6 && mv v0.7.6 known.tgz

COPY install-application.sh /install-application.sh
COPY config.ini /config.ini
