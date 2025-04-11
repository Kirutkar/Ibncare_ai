# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy all project files into the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port for Streamlit (frontend)
EXPOSE 7860

# Start Flask + Streamlit in one container
CMD ["sh", "-c", "python app_backend.py & streamlit run app.py --server.port=7860 --server.enableCORS=false"]
