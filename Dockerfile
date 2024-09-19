# Use NVIDIA's PyTorch base image with CUDA and cuDNN support
FROM nvidia/cuda:11.8.0-cudnn8-devel-ubuntu22.04

# Set the working directory
WORKDIR C:/Users/admin/Downloads/chatbot

# Install required packages and Python
RUN apt-get update && apt-get install -y \
    python3.9 \
    python3-pip \
    git \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
COPY requirements.txt /app/requirements.txt
RUN pip3 install --no-cache-dir -r /app/requirements.txt

# Copy the application code
COPY . C:/Users/admin/Downloads/chatbot

# Expose the necessary port (if applicable)
EXPOSE 8501

# Command to run your Python application (Streamlit in this case)
CMD ["./run.sh"]
