# Use a base image that suits your application's requirements
FROM ubuntu

# Set environment variables if needed
# ENV MY_VARIABLE=my_value

# Create a directory to store your artifacts
RUN mkdir -p /app

# Copy the artifacts generated by Jenkins into the image
COPY ./target/Calculator-1.0-SNAPSHOT.jar /app

# Install any necessary dependencies
RUN apt-get update && apt-get install -y maven

# Specify the working directory
WORKDIR /app

# Specify the command to run when the container starts
CMD ["mvn clean install"]


