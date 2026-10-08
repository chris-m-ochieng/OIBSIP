#!/bin/bash
# UFW Firewall Configuration Script
# Author: Chris Michael Ochieng
# Task: Oasis Infobyte Cybersecurity Internship - Task 2

echo "[*] Enabling UFW..."
sudo ufw --force enable

echo "[*] Allowing SSH (inbound, port 22)..."
sudo ufw allow ssh

echo "[*] Denying HTTP (inbound, port 80)..."
sudo ufw deny http

echo "[*] Denying HTTPS (inbound, port 443)..."
sudo ufw deny https

echo "[*] Allowing DNS (inbound, port 53)..."
sudo ufw allow 53

echo "[*] Denying traffic from 192.168.100.0/24..."
sudo ufw deny from 192.168.100.0/24

echo "[*] Denying outbound HTTP (port 80)..."
sudo ufw deny out 80/tcp

echo "[*] Denying outbound HTTPS (port 443)..."
sudo ufw deny out 443/tcp

echo "[*] Reloading UFW..."
sudo ufw reload

echo "[+] Configuration complete. Current status:"
sudo ufw status verbose
