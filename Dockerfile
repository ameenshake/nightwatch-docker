FROM selenium/base

#===================
# Install Google Chrome
#===================
RUN sudo apt-get -qqy update

RUN set -xe \
    && sudo apt-get -y install curl \
    && curl -fsSL https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - \
    && sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list' \
    && sudo apt-get update \
    && sudo apt-get install -y google-chrome-stable \
&& sudo rm -rf /var/lib/apt/lists/*

#===================
# Install Node
#===================
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - \
    && sudo apt-get install -y nodejs
