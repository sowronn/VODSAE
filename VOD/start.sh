#!/bin/sh

while true; do
  # Start VLC with HTTP streaming
  cvlc -vvv /home/vlcuser/test.mp4 --sout "#http{mux=ts,dst=:8080}" || true
  echo "VLC a terminé. Relancer dans 5 secondes..."
  sleep 5
done
