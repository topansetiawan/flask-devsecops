# Gunakan base image Python
FROM python:3.10-slim

# Set working directory di container
WORKDIR /app

# Copy requirements.txt ke container
COPY requirements.txt .

# Install dependency
RUN pip install --no-cache-dir -r requirements.txt

# Copy semua file project ke container
COPY . .

# Expose port Flask
EXPOSE 5000

# Jalankan aplikasi
CMD ["python", "app.py"]