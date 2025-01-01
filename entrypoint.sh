#!/bin/sh
#Watch for errors and exit immediately
set -e

# Certificates
echo "${CLOUDFLARE_ORIGIN_CERTIFICATE}" > /etc/ssl/certificate.pem
echo "${CLOUDFLARE_ORIGIN_CA_KEY}" > /etc/ssl/certificate.key

echo "${CLOUDFLARE_ORIGIN_CERTIFICATE_REVSTICKS}" > /etc/ssl/revsticks/certificate.pem
echo "${CLOUDFLARE_ORIGIN_CA_KEY_REVSTICKS}" > /etc/ssl/revsticks/certificate.key

# Start Nginx in the foreground
nginx -g 'daemon off;'