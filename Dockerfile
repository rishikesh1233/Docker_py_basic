FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Flask and other dependencies
RUN pip install --no-cache-dir Flask

# Expose port 5000 to the outside world
EXPOSE 5000

# Define environment variable
ENV FLASK_APP app.py

# Command to run the Flask application
CMD ["flask", "run", "--host=0.0.0.0"]
