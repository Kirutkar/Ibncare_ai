# Use an official Python runtime
FROM python:3.9-slim

# ✅ Install OpenCV and required system libraries
RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx \
    libglib2.0-0

# Set working directory
WORKDIR /app

# Copy all files
COPY . /app

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the Streamlit port
EXPOSE 7860

# Run both backend and frontend
CMD ["sh", "-c", "python app_backend.py & streamlit run app.py --server.port=7860 --server.enableCORS=false"]
