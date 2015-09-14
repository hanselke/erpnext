#!/bin/bash
apt-get update && apt-get install -y wget ca-certificates sudo cron supervisor
/usr/bin/supervisord

bash setup_frappe.sh --setup-production
rm /home/frappe/*.deb

exit 0