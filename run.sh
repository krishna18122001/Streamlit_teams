#!/bin/bash
# run.sh

echo "Starting the Streamlit application..."
streamlit run main.py --server.port=8501 --server.address=0.0.0.0
