# The hacky bootstrap of a AL9 host for oVirt

- systemctl enable firewalld
- systemctl stop iptables
- dnf install -y centos-release-ovirt45
- dnf install -y ovirt-host vdsm
- disconfigure br0
