## D E S C R I P T I O N:

3 VNETS : Hub, Spoke1, Spoke2 <br />
1 VM in each I must ping for spoke 2 from spoke 1 and vice versa <br />
But, no direct connection between spoke 1 and spoke 2 <br />

## S T E P S:

## 1. Creating VNETs:
3 VNETS each, with a new subnet in them

## 2.Creating VMs:
- Shamlin-Hub-VM
- Shamlin-Spoke-1-VM
- Shamlin-Spoke-2-VM


## 3. Peering connections
  - Spoke 1 to Hub  
  - Spoke2 to Hub
    This created a fully synchronised links (2 way)
<img src="https://github.com/Shamlin-Presidio/Azure-Training/blob/main/Day2/Assets/Full%20sync.png" />

## 4. Enable IP forwarding
  - Enabled this in Hub's Network interface
  - And also in `/etc/sysctl.conf` file in Hub's VM and reloaded the VM

<img src="https://github.com/Shamlin-Presidio/Azure-Training/blob/main/Day2/Assets/IP%20Forwarding%20in%20HUB%20VM.png" />

## 5. Route tables
  - Created two route tables Spoke1 and Spoke2 and associated appropriately
  - Chose **Virtual Appliance** (for next hop) and specified the destination addresses
    
<img src="https://github.com/Shamlin-Presidio/Azure-Training/blob/main/Day2/Assets/Route%20table.png" />

## N O T E :
could have chosen `virtual network` if I had a multiple networks with a Gateway to route them

## 6. Testing:

<img src="https://github.com/Shamlin-Presidio/Azure-Training/blob/main/Day2/Assets/Working.png" />

## 7. DNS:
  -  Created a private DNS hosted zone
  -  Added Virtual Private Links of the Hub and 2 Spokes

## 8. DNS Testing:

<img src="https://github.com/Shamlin-Presidio/Azure-Training/blob/main/Day2/Assets/DNS.png" />
