# Use the official Playwright image which has all OS dependencies pre-installed
FROM mcr.microsoft.com/playwright/python:v1.48.0-jammy

WORKDIR /app

# Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Install only the chromium browser
RUN playwright install chromium

# Copy the rest of your code
COPY . .

# Expose the port Render expects
EXPOSE 8000

# Start the application
CMD ["python", "main.py"]