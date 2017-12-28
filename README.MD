# Enviroment-Setup

A script to setup linux enviroments for development 

## Usage

1. Root

    `sudo su`

2. Add executable permission to the script

    `chmod +x install_dev_tools.sh`

3. Run the script

    `./install_dev_tools.sh`
4. Copy the SSH GIT key to your clipboard.
    `apt-get install xclip
    `xclip -sel clip < ~/.ssh/id_rsa.pub
   
   [ADD NEW SSH KEYS](https://github.com/settings/keys)

   PASTE IT!

## To Do's

- Integrate dotfiles
