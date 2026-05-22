#!/bin/bash
echo "========================================"
echo " Ref-to-Prompt Designer - Local Server"
echo "========================================"
echo ""

# Get local IP
LOCAL_IP=$(ipconfig getifaddr en0 2>/dev/null || hostname -I 2>/dev/null | awk '{print $1}')

echo "Local access:   http://localhost:8080"
if [ -n "$LOCAL_IP" ]; then
  echo "Network access: http://$LOCAL_IP:8080"
fi
echo ""
echo "Share the network URL with teammates on the same WiFi/LAN."
echo "Press Ctrl+C to stop."
echo ""

# Try Python 3
if command -v python3 &>/dev/null; then
  python3 -m http.server 8080
elif command -v python &>/dev/null; then
  python -m http.server 8080
elif command -v npx &>/dev/null; then
  npx serve -l 8080 .
else
  echo "ERROR: Python or Node.js not found."
  echo "Install Python: https://python.org"
fi
