# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy project files into the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port for Flask
EXPOSE 5000

# Run both backend and frontend (Flask + Streamlit)
CMD ["sh", "-c", "python app.py & streamlit run streamlit_ui.py --server.port=7860 --server.enableCORS=false"]
