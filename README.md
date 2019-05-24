# docked

Dirty install docker and DFP (on docker)

Steps:

1. Create your on-prem host in the CSP portal and get the API access key

2. Install git and pull the script

  sudo apt install git -y
  
  git clone https://github.com/nedblox/docked.git

3. Change into the "docked" folder

  cd docked/

4. run the bloxit.sh script by passing the API access key to it as an argument

  sudo sh bloxit.sh API-ACCESS-KEY

5. Recommended to logout/reboot and then log back in, to use Docker as a non-root user
