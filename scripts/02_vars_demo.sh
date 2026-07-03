#!/usr/bin/env bash

echo "===================================="
echo "Pipeline 02: GitHub Repository Variables"
echo "===================================="

app_name="${APP_NAME:-Variable APP_NAME fehlt}"
target_env="${TARGET_ENV:-Variable TARGET_ENV fehlt}"
app_version="${APP_VERSION:-Variable APP_VERSION fehlt}"

echo "App Name: $app_name"
echo "Zielumgebung: $target_env"
echo "Version: $app_version"

mkdir -p output

cat > output/variables-report.txt <<EOF
Repository Variables Report

APP_NAME=$app_name
TARGET_ENV=$target_env
APP_VERSION=$app_version

Diese Werte kommen aus GitHub Repository Variables.
EOF

echo ""
echo "Report wurde erstellt:"
echo "output/variables-report.txt"
