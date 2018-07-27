# Working with Ansible

# Location of Ansible file in Machines
/usr/local/bin/ansible

# Location of Ansible file in Linux Machines
/usr/bin/ansible

# Edit (or create) /etc/ansible/hosts and put one or more remote systems in it. 
# Your public SSH key should be located in authorized_keys on those systems
# For eg,  13.229.106.158

# provide the user from whom beahlf SSH is Permitted
# For eg, for AWS Ubuntu Machines generally the User is `ubuntu`

# This will use the default ansible hosts file located at /etc/ansbile/hosts

ansible all -m ping -u ubutnu

# now try to Ping these machinces using the below command

# Options
# -u is for specifying the user
# -i is for providing the path of a different ansible hosts file 

ansible all -m ping -i ansible_hosts -u prashu

# Here the ansible hosts file have BASTION server IP
# so i can only connect using user prashu

# Successful Ping reposnse
# bastion.meeshoapi.com | SUCCESS => {
#    "changed": false,
#    "ping": "pong"
# }

