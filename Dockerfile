FROM timbru31/java-node
LABEL maintainer "Alexander Oloo <alekcz@gmail.com>"

ENV FIREBASE_TOOLS_VERSION=8.5.0
RUN yarn global add firebase-tools@${FIREBASE_TOOLS_VERSION} && \
    yarn cache clean && \
    mkdir $HOME/.cache && \
    firebase setup:emulators:database

ENTRYPOINT ["firebase", "emulators:start", "--only", "database"]
