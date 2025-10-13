# TASK 1:
## D E S C R I P T I O N:
Create a Virtual Machine Scale Set configured with web server each VM should able to show hostname and region, when we browse it. <br />
Attach the Virtual Machine Scale Set with Load Balancer.

## S T E P S:

- Created VMSS (VMSS-a) with a new VNET
- Used 2 VMs
- Created and attached a Load Balancer
  <img src="https://github.com/Shamlin-Presidio/Azure-Training/blob/main/Day3/Assets/Load%20Balancing.png" />

## OUTPUTS:
  <img src="https://github.com/Shamlin-Presidio/Azure-Training/blob/main/Day3/Assets/1.1.png" />
  <img src="https://github.com/Shamlin-Presidio/Azure-Training/blob/main/Day3/Assets/1.2.png" />

<hr />

# TASK 2:
## D E S C R I P T I O N:
Create two Virtual Machine Scale Sets, the first Virtual Machine Scale Set should be configured with path /path1 and  <br />
second Virtual Machine Scale Set should be configured with path /path2 and attach both to an Application Gateway.

## S T E P S:

- Created another `VMSS` - (VMSS-b)
- Created and attached a Load Balancer
- Created an Application Gateway, pointing to the **two load balancers**
  
  <img src="https://github.com/Shamlin-Presidio/Azure-Training/blob/main/Day3/Assets/AG.png" />

- Setup Rule and Path-based routing
  
  <img src="https://github.com/Shamlin-Presidio/Azure-Training/blob/main/Day3/Assets/Path.png" />
  
- Path a
  
  <img src="https://github.com/Shamlin-Presidio/Azure-Training/blob/main/Day3/Assets/Path%20a.png" />
  
- Path b
    
  <img src="https://github.com/Shamlin-Presidio/Azure-Training/blob/main/Day3/Assets/Path%20b.png" />
  
