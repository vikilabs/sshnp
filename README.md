
## Utility to connect remote host over ssh without password

This utility is used to connect to remote host over ssh without feeding password everytime. 

Note: sshnp is based on openssh. To use this command openssh should be enabled in the remote server.

### How to install this package?

    1. git clone
    2. cd src/
    3. chmod +x install.sh
    3. sudo ./install.sh

### How to use this command?

#### Step 1: Enable password less ssh connectivity to remote server

    $sshnp -e <username>@<domain/ip_address>
    
#### Example
    
    $sshnp  -e testuser@192.168.1.10
    
    -> Feed the remote server password 

#### Step 2: Connect to remote server without password 

    $sshnp  <username>@<domain/ip_address>
    
##### Example
    
    $sshnp  testuser@192.168.1.10
    
    -> Now connection happens without feeing password

#### Step 3: Disable password less ssh connectivity to remote server

    $sshnp  -d <username>@<domain/ip_address>
    
##### Example
    
    $sshnp  -d testuser@192.168.1.10
 

### Tested Systems

    - Ubuntu
    - Mac OSX
