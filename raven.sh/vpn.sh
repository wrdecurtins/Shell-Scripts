domain_password=$(sed -En 's/password=?(.*)$/\1/p' /home/will/.domain_credentials)
sudo openconnect --authgroup "Raven Enhanced VPN" --user r105100 proxy.ravenind.com --key-password $domain_password
