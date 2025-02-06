#!/bin/bash

# Extract Top 10 Highest Temperatures
sort -t ',' -k2 -nr raw_data/satelite_temperature_data.csv | head -10 > analyzed_data/highest_temp.csv

# Extract Data for a Specific Country
read -p "Enter country name: " country
grep "$country" raw_data/satelite_temperature_data.csv | sort -t ',' -k3 -nr > analyzed_data/humidity_data_${country}.csv

echo "Analysis complete. Check the 'analyzed_data' directory."
