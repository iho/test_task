# Use the official Go image as a parent image
FROM golang:1.21

# Set the working directory in the container
WORKDIR /app

# Copy the local package files to the container's workspace
COPY . .

# Download and install dependencies
RUN go mod download

# Build the gRPC service
RUN go build -o my-grpc-service .

# Expose port 50051 for the service
EXPOSE 50051

# Command to run the binary
CMD ["./my-grpc-service"]
