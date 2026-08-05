# The hacky bootstrap of a AL9 host for oVirt

- Current kvmimages on host NEEDS TO BE IN A STORAGE POOL!
- systemctl enable firewalld
- systemctl stop iptables
- dnf install -y centos-release-ovirt45
- dnf install -y ovirt-host vdsm
- disconfigure br0
- delete old kvm xml files
- add multipath.conf backlist all setting
