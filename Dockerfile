FROM python:3.8-slim-buster

WORKDIR /app

# Copy requirements and install
COPY analytics/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY analytics/ .

# Expose port 5153 (the app's default port)
EXPOSE 5153

# Set environment variable for port
ENV APP_PORT=5153

# Run application
CMD ["python", "app.py"]
