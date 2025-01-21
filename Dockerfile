FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy project files into the container
COPY . .

# Install a lightweight HTTP server
RUN npm install -g http-server

# Expose port 8080
EXPOSE 8080

# Start the HTTP server
CMD ["http-server", "-p", "8080"]
