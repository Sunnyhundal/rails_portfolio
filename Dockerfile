# Use an official Ruby runtime as a parent image
FROM ruby:3.0.1

# Set environment variables
ENV LANG C.UTF-8
ENV TZ=UTC


# Install necessary packages
RUN apt-get update && apt-get install -y \
  postgresql \
  postgresql-contrib \
  nodejs \
  npm \
  && rm -rf /var/lib/apt/lists/*

# Set the PATH environment variable to include Node.js binaries
ENV PATH="/usr/local/node/bin:${PATH}"

# Set the working directory in the container
WORKDIR /app

RUN bundle clean --force

# Copy Gemfile and Gemfile.lock from the current directory to the container
COPY Gemfile ./

RUN gem install bundler && bundle install

# Install gems
RUN bundle install

# Copy the current directory contents into the container at /app
COPY . .

# Start the PostgreSQL service
RUN service postgresql start

# Expose port 3000 to the Docker host, so we can access the Rails app
EXPOSE 3000

# Command to start the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]