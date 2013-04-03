source /home/supervisor/bin/activate
supervisorctl restart `supervisorctl status | grep 'ERP_' | cut -d ' ' -f 1 | xargs `