    mkdir -p ~/.ssh
    ssh-keygen -t rsa -b 2048
    cat ~/.ssh/id_rsa.pub
    # add the key here: https://github.com/settings/ssh
    echo -e "Host github.com\n\tStrictHostKeyChecking no\n" >> ~/.ssh/config
    git clone git@github.com:uprial/profile.git
    cd profile/osx
    ./install.sh
