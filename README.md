# How to set up a validator node for Venidium (XVM)

This is a short tutorial on how to set up a validator node.
You will need to set up a node in order to create your own staking pool.

## Minimum System Requirements

CPU: 2 cores  
RAM: 4GB  
Disk: 100GB SSD  
Stable Internet Connection  

## Recommended System Requirements

CPU: 4 cores  
RAM: 6GB  
Disk: 250GB SSD  
Stable Internet Connection  

## Getting the required files

Clone this repository or [download the repository as a zip file](https://github.com/Venidium-Network/venidium-evm-node/archive/refs/heads/main.zip) and extract it

## Linux

### [Install Docker and Docker Compose](https://docs.docker.com/engine/install/) (choose the Linux tab)

(choose your platform from the list i.e. Ubuntu)

In example, for Ubuntu, the setup steps would look like this:

_the commands shown bellow should be typed in your terminal window_

1. `sudo apt-get remove docker docker-engine docker.io containerd runc`
1. `sudo apt-get update`
1. `sudo apt-get install ca-certificates curl gnupg lsb-release`
1. `sudo mkdir -p /etc/apt/keyrings`
1. `curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg`
1. `echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null`
1. `sudo apt-get update`
1. `sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin`
1. `sudo systemctl enable docker.service`
1. `sudo systemctl enable containerd.service`

### Set up your node configuration

1. On your terminal window type `cd ` and make sure to leave a space after the command (don’t press enter yet)
1. Drag-n-drop the `venidium-evm-node` folder on the terminal window and press enter
1. Type `./generate-key.sh` to generate a new private key and copy it
1. Edit `compose.yml` in `nodes/validator1` directory and replace `0000000000000000000000000000000000000000000000000000000000000000` on line `21` with the newly generated key that you have copied

_⚠️ It is very important to NOT USE this private key as an account ⚠️_  
_⚠️ DO NOT import this private key to any wallet ⚠️_  
_⚠️ DO NOT make any transactions using this private key ⚠️_  

### Operate the node

1. Open a terminal window, type `cd ` and make sure that you leave a space after the command (don't press enter yet)
1. Drag-n-drop the `venidium-evm-node` folder on the terminal window and press enter

To start the node type `./run_all.sh` in the terminal and press enter.

To monitor your node type `./nodes/validator1/monitor-node.sh` in the terminal and press enter.
You can check for any errors and see if your node is syncing.

To stop the node type `./stop_all.sh` in the terminal and press enter.

## macOS

Install Docker Desktop for Mac: [Install Docker Desktop on Mac | Docker Documentation](https://docs.docker.com/desktop/mac/install/)

For the following instructions to work you will need to have Docker Desktop running.

### Set up your node configuration

1. Open the `generate-key.sh` file to generate a new private key and copy it
1. Edit `compose.yml` in `nodes/validator1` directory and replace `0000000000000000000000000000000000000000000000000000000000000000` on line `21` with the newly generated key that you have copied

_⚠️ It is very important to NOT USE this private key as an account ⚠️_  
_⚠️ DO NOT import this private key to any wallet ⚠️_  
_⚠️ DO NOT make any transactions using this private key ⚠️_  

### Operate the node

To start the node open the `run_all.sh` file.

To monitor your node open the `monitor-node.sh` file in the `nodes/validator1` directory.
You can check for any errors and see if your node is syncing.

To stop the node open the `stop_all.sh` file.
