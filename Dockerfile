# Use an official Python image as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install the necessary Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set execute permissions on sharp and sharp.py
RUN chmod +x *

# Make sure the 'sharp' binary is in the correct location
# This step ensures that any binary dependencies are set up properly
RUN mv sharp /usr/local/bin/sharp

# Define the command to run your application (sharp.py)
CMD ["python", "sharp.py"]
