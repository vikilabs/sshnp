
## Utility to connect to ssh remote host without password


This package (sshnp) does the following,
    
    - Setup password less ssh connectivity to remote host with public and private key encryption
    - Connect to remote host without password using public and private key encryption
    - Disable password less ssh connectivity to remote host   

Note: sshnp is based on openssh.

### How to install this package?

    1. git clone
    2. cd src/
    3. chmod +x install.sh
    3. sudo ./install.sh

### How to use this command?

#### Step 1: Setup password less ssh connectivity to remote server

    $sshnp  <username>@<domain/ip_address>
    
#### Example
    
    $sshnp  testuser@192.168.1.10
    
    -> Feed the remote server password 

#### Step 2: Connect to remote server without password 

    $sshnp  <username>@<domain/ip_address>
    
##### Example
    
    $sshnp  testuser@192.168.1.10
    
    -> Now connection happens without feeing password

#### Step 3: Disable password less ssh connectivity to remote server

    $sshnp  disable <username>@<domain/ip_address>
    
##### Example
    
    $sshnp  disable testuser@192.168.1.10
 

### Tested Systems

    - Ubuntu
    - Mac OSX
