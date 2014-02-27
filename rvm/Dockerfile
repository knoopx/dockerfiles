# Install some dependencies
RUN apt-get -y -q install curl rubygems

# Install rvm
RUN curl -L https://get.rvm.io | bash -s stable

# Install package dependencies
RUN /usr/local/rvm/bin/rvm requirements

# Install ruby
RUN /usr/local/rvm/bin/rvm install ruby-2.0.0

# create first wrapper scripts
RUN /usr/local/rvm/bin/rvm wrapper ruby-2.0.0 myapp rake rails gem