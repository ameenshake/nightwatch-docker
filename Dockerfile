FROM selenium/base

#===================
# Install Node
#===================
RUN sudo apt-get -qqy update
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - \
    && sudo apt-get install -y nodejs
