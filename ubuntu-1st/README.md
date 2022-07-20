Login via password.
Add your host public key to `~/.ssh/authorized_keys`.
Login via key.

    mkdir -p ~/.ssh
    ssh-keygen -t rsa -b 2048

    cat ~/.ssh/id_rsa.pub

Add the key here: https://github.com/settings/ssh.

    echo -e "Host github.com\n\tStrictHostKeyChecking no\n" >> ~/.ssh/config

    apt update
    apt install -y git
    git clone git@github.com:uprial/profile.git
    cd profile/ubuntu-1st/
    ./install.sh
