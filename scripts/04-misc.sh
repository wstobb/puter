#!/bin/bash

dnf install -y $(curl -s https://api.github.com/repos/winder/Universal-G-Code-Sender/releases/latest | jq -r '.assets[] | select(.name | test("x64.rpm$")) | .browser_download_url')