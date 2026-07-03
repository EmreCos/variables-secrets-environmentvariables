#!/usr/bin/env bash

echo "===================================="
echo "Pipeline 01: Environment Variables"
echo "===================================="

echo "Kursname: ${COURSE_NAME:-nicht gesetzt}"
echo "Umgebung: ${ENVIRONMENT_NAME:-nicht gesetzt}"
echo "Nachricht: ${STEP_MESSAGE:-nicht gesetzt}"

mkdir -p output

cat > output/env-report.txt <<EOF
Environment Variables Report

COURSE_NAME=${COURSE_NAME:-nicht gesetzt}
ENVIRONMENT_NAME=${ENVIRONMENT_NAME:-nicht gesetzt}
STEP_MESSAGE=${STEP_MESSAGE:-nicht gesetzt}

Diese Werte wurden aus der GitHub Actions YAML Datei an das Bash Skript übergeben.
EOF

echo ""
echo "Report wurde erstellt:"
echo "output/env-report.txt"
