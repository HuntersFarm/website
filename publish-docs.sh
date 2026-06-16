#!/bin/bash

cd ~/homeAutomation/venv1
source bin/activate
cd sites/farm-site

mkdocs build
sudo rsync -av --delete site/ /var/www/farm-site/
sudo systemctl reload nginx

cd ~/homeAutomation/venv1
deactivate