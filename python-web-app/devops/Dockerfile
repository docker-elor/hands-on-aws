# Use Ubuntu 20.04 as the base image
FROM ubuntu:20.04

# Set the working directory within the container
WORKDIR /app

# Update package list and install Python 3 and pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip

# Copy the application code into the container
COPY . /app

# Install any application dependencies (if you have a requirements.txt file)
RUN pip3 install -r requirements.txt

# Expose the port that your Python application will run on (replace with your desired port)
EXPOSE 8000

# Set the entrypoint to python3
ENTRYPOINT ["python3"]

# Set the command to run manage.py with the provided arguments
CMD ["manage.py", "runserver", "0.0.0.0:8000"]
