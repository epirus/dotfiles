#!/bin/bash
dir=~/.ssh/
openssl enc -d -aes-256-cbc -in ./personal_data.zip.enc -out ~/personal_data.zip -pass file:"${dir}/id_rsa"
