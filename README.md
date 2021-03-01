# Baptiste F - Docker AWS

## AWS instance used

EC2 instance created in London region (eu-west-2a).  
Security group parameters:

Type | Protocol | Ports | Source
--- | --- | --- | ---
SSH | TCP | 22 | 0.0.0.0/0
TCP | TCP | 80 | 0.0.0.0/0

Instance type: t2.micro  
OS: ubuntu-20.04

## Deploying on remote ec2 instance
Make sure that the ./exec file has execution rights.  
  
### Deploy
Usage `./exec deploy [-b branch] [-i key_path]`  
Example : `./exec deploy -b feature-A -i ~/Documents/my-key.pem`

### Clean up
Usage `./exec destroy [-i key_path]`  
Example `./exec destroy`
