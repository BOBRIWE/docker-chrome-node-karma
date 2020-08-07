FROM selenium/standalone-chrome:4.0.0-alpha-6-20200730

USER root

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
