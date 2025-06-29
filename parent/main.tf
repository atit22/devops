# module "atit-rg"{
# source = "../child/azurerm_resource_grp"
# rg-name = "abcd"
# location = "north europe"
# }

# module "atit-sg" {
# source = "../child/azurerm_storage"
# stg_name = "stor121"
# location = "north europe"
# rg-name = "abcd"
# depends_on = [module.atit-rg]

# }
# module "atit_vnet" {
# source = "../child/VNET"
# vnet1 = "vnet-atit"
# address_space = ["10.0.0.0/26"]
# location = "north europe"
# rg-name = "abcd"
# depends_on = [ module.atit-rg ]

# }
# module "atit_subnet" {
# source = "../child/subnet"
# rg-name ="abcd"
# subnet = "atit-subnet1"
# vnet1 = "vnet-atit"
# adress_pref = ["10.0.0.0/28"]
# depends_on= [module.atit_vnet]
 
# }
# module "atit_vm" {
# source = "../child/VM"
# nic1= "atit_nic1"
# subnet_id = "/subscriptions/34efc0a7-8590-4931-b801-1a4f91725596/resourceGroups/abcd/providers/Microsoft.Network/virtualNetworks/vnet-atit/subnets/atit-subnet1"
# vm1= "atit_vm"
# rg-name="abcd"
# location="north europe"
# vm_password="Atit@12345678"
# vm_admin="atit_admin"
# }