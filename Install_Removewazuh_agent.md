REMOVE WAZUH
#Make sure to check if the service is stopped before uninstalling:

sudo systemctl stop wazuh-agent

#Unistall
apt-get remove wazuh-agent
apt-get purge wazuh-agent
apt-get autoremove



#Install wazuh  Note change server Ip and agent name on the script.
wget https://packages.wazuh.com/4.x/apt/pool/main/w/wazuh-agent/wazuh-agent_4.8.1-1_amd64.deb &&  WAZUH_MANAGER='192.168.1.133' WAZUH_AGENT_NAME='Readeck-safewebpages' dpkg -i ./wazuh-agent_4.8.1-1_amd64.deb


systemctl daemon-reload
systemctl enable wazuh-agent
systemctl start wazuh-agent


