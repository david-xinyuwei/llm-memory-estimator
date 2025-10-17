#!/bin/bash

# Startup script for Azure App Service
echo "Starting LLM Memory Estimator..."

# Start Streamlit app
echo "Starting Streamlit on port 8000..."
python -m streamlit run src/web_estimator.py \
  --server.port 8000 \
  --server.address 0.0.0.0 \
  --server.enableCORS false \
  --server.enableXsrfProtection false \
  --browser.serverAddress "0.0.0.0" \
  --browser.gatherUsageStats false
