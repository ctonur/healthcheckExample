#!/bin/bash

# 8080 portunu dinleyen sahte bir servis başlat
echo "Starting app on port 8080..."
sleep 5
touch /tmp/ready
echo "App is ready!"

# 30. saniyede çökerek liveness'ı boz
sleep 30
rm /tmp/ready
echo "App crashed!" 
while true; do sleep 1; done  # Sonsuz döngüde kal
