#!/usr/bin/env bash

echo "===================================="
echo "Pipeline 03: GitHub Secrets"
echo "===================================="

if [ -z "${DEMO_API_TOKEN:-}" ]; then
  echo "Fehler: Das Secret DEMO_API_TOKEN ist nicht gesetzt."
  echo "Lege es in GitHub unter Settings, Secrets and variables, Actions, Secrets an."
  exit 1
fi

token_length=${#DEMO_API_TOKEN}

echo "Secret DEMO_API_TOKEN wurde gefunden."
echo "Länge des Secrets: $token_length Zeichen"
echo "Das Secret wird nicht ausgegeben."

mkdir -p output

cat > output/secret-report.txt <<EOF
Secrets Report

DEMO_API_TOKEN ist gesetzt.
Länge des Secrets: $token_length Zeichen.

Das Secret wurde bewusst nicht in diese Datei geschrieben.
EOF

echo ""
echo "Report wurde erstellt:"
echo "output/secret-report.txt"
