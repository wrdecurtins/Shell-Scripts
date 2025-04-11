domain_password=$(sed -En 's/password=?(.*)$/\1/p' /home/will/.domain_credentials)
echo $domain_password | sudo openconnect --authgroup "Raven Enhanced VPN" --user r105100 proxy.ravenind.com --passwd-on-stdin
