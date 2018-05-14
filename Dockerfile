FROM selenium/base

#===================
# Install Node
#===================
RUN sudo apt-get -qqy update
RUN sudo apt-get -y install curl
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN sudo apt-get install -y nodejs
