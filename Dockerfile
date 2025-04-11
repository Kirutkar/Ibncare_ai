# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# ✅ Install system dependencies for OpenCV and image processing
RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx \
    libglib2.0-0 \
    && rm -rf /var/lib/apt/lists/*

# Copy project files into the container
COPY . /app

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose ports for Flask (5000) and Streamlit (7860)
EXPOSE 5000
EXPOSE 7860

# Run both backend (Flask) and frontend (Streamlit)
CMD ["sh", "-c", "python app_backend.py & streamlit run app.py --server.port=7860 --server.enableCORS=false"]
