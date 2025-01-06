# Use the official Python image as a parent image
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install any required Python packages
RUN pip install --no-cache-dir flask gunicorn

# Expose port 8080 for Cloud Run
EXPOSE 8080

# Run the app with Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "app:app"]
