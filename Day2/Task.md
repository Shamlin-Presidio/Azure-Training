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

<img src="https://github.com/Shamlin-Presidio/Azure-Training/blob/main/Day2/Assets/Hub.png" />
<img src="https://github.com/Shamlin-Presidio/Azure-Training/blob/main/Day2/Assets/Spoke%201.png"/>
<img src="https://github.com/Shamlin-Presidio/Azure-Training/blob/main/Day2/Assets/Spoke%202.png" />

## Couldnt allow ICMP to test with Ping
The folloring error showed up
```
Failed to create security rule Failed to create security rule 'Allow_ICMP'. Error: Resource 'Allow_ICMP' was disallowed by policy. 
Reasons: 'This resource must be compliant with the assigned policy., 
This resource must be compliant with the assigned policy.. See error details for policy resource IDs
```

## So, I approached to test using netcat to simulate connectivity

## 3. Peering connections
  - Spoke 1 to Hub  
  - Hub to Spoke 1
  - Spoke2 to Hub
  - Hub to Spoke 2

<img src="https://github.com/Shamlin-Presidio/Azure-Training/blob/main/Day2/Assets/Peering%20connection.png" />

## 4. Simulating connection
Command : `nc -zv 10.2.1.4 22`
