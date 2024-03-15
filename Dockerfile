# Use an official Ruby runtime as a parent image
FROM ruby:3.0.3

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

# Set the working directory in the container
WORKDIR /app

# Copy Gemfile and Gemfile.lock from the current directory to the container
COPY Gemfile Gemfile.lock ./

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