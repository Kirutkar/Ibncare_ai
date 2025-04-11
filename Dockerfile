# Use an official Python runtime as a parent image
FROM python:3.9-slim

# ✅ Install required Linux packages (libGL for OpenCV)
RUN apt-get update && apt-get install -y libgl1-mesa-glx

# Set the working directory
WORKDIR /app

# Copy files
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose Streamlit port
EXPOSE 7860

# Run both backend and frontend (Flask + Streamlit)
CMD ["sh", "-c", "python app_backend.py & streamlit run app.py --server.port=7860 --server.enableCORS=false"]
