#!/bin/bash
dir=~/.ssh/
openssl enc -aes-256-cbc -salt -in ~/personal_data.zip -out ~/dotfiles/personal_data.zip.enc -pass file:"${dir}/id_rsa"
