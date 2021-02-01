# NetApp Automation Jumpstart
Welcome to my collection of automation demos. This repository holds my first steps of Ansible Automation, please be aware that this is in an early stage.

Many Thanks to my colleague Adiran, who started this [here](https://github.com/AdrianBronder/ntap-automation)

## Changes:
* 20210201 HB Intial release


# Whats in it?
## An Inventory example
The inventory is designed upon NetApp LOD sl10599. Please adjust accordingly.

### How to check vars for a given host?
```
ansible-inventory -i inventory.yaml --host cluster01 --vars 
```

### How to view the complete inventory?
```
[root@rhel1 ontap-ansible-lod]# ansible-inventory -i inventory.yaml --graph
@all:
  |--@amer:
  |  |--@argentinia:
  |  |--@usa:
  |  |  |--@washington:
  |  |  |  |--cluster02
  |--@apac:
  |  |--@china:
  |  |  |--@peking:
  |  |  |  |--cluster10
  |  |  |  |--cluster11
  |  |  |  |--cluster12
  |  |  |  |--cluster13
  |  |  |  |--cluster14
  |  |  |  |--cluster15
  |  |  |  |--cluster16
  |  |  |  |--cluster17
  |  |  |  |--cluster18
  |  |  |  |--cluster19
  |  |--@japan:
  |  |  |--@tokyo:
  |--@emea:
  |  |--@germany:
  |  |  |--@berlin:
  |  |  |--@mainz:
  |  |  |  |--cluster01
  |--@ungrouped:
```



## Tasks/Roles 
TO BE DONE
The Tasks/Roles will be mapped on the inventory. Not yet started