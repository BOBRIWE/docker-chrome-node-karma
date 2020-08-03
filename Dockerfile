FROM markadams/chromium-xvfb

# INSTALL NODE
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm@latest

RUN npm -v
RUN node -v

# INSTALL KARMA
RUN npm install -g karma karma-cli

# FILES DELETION
RUN rm -rf /tmp/*
