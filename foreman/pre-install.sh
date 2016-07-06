# Info
# https://theforeman.org/manuals/1.12/index.html#2.Quickstart

apt-get -y install ca-certificates
wget https://apt.puppetlabs.com/puppetlabs-release-pc1-xenial.deb
dpkg -i puppetlabs-release-pc1-xenial.deb

echo "deb http://deb.theforeman.org/ xenial 1.12" > /etc/apt/sources.list.d/foreman.list
echo "deb http://deb.theforeman.org/ plugins 1.12" >> /etc/apt/sources.list.d/foreman.list
apt-get -y install ca-certificates
wget -q https://deb.theforeman.org/pubkey.gpg -O- | apt-key add -

apt-get update && apt-get -y install foreman-installer

# Check
# Ensure that ping $(hostname -f) shows the real IP address, not 127.0.1.1. Change or remove this entry from /etc/hosts if present.
# hostname --fqdn
# /etc/init.d/networking restart

# Run
# foreman-installer
