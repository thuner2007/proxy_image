#!/bin/sh
#Watch for errors and exit immediately
set -e

# Certificates
echo "${CLOUDFLARE_ORIGIN_CERTIFICATE}" > /etc/ssl/certificate.pem
echo "${CLOUDFLARE_ORIGIN_CA_KEY}" > /etc/ssl/certificate.key

# Start Nginx in the foreground
nginx -g 'daemon off;'