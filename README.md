# Terraform-V-Storage

## A functional Storage account and a VNET creation project using terraform with the help of Visual Studio Code

This project is a great example of how to use create Terraform scripts within Visual Studio Code. The purpose of keeping track of every run that has gone into creating or changing the script and the changes within Azure account.

What the files contain:

1. Main.tf - Both the required provider that we are going to be using as well as the provider we are going to use for the other files. In this project the provider was Azure ("azurerm").
2. Storage.tf - Contains the storage account creation script with the delete retention policy, the network rules as well as the three contains that were created with their dedicated names (Gold, Silver and Bronze).
3. Vnet.tf - Has the V Net creation script and two seperate subnet creation script as well.

## Steps for this project 

<ins> Setting up the Visual Studio Code (VSC) and the Github repository <ins>

1. Within Visual Studio Code open up the command palette (ctrl + shift + p) and within the search bar type in 'Open Repository'. Click on the 'Git: Open Respository' and enter the URL HTTPS clone from the dropdown of '<>Code' highlighted in green. This can be found on the web page of the Github repository.
2. Open up the terminal (Ctrl + Shift + ' ) within VSC and enter 'az login'. This will bring you to the web page to sign into your Microsoft Azure portal account.
3. Within the 'Storage.tf' change the second label which comes from the data retreival line starting with 'data azurerm_resource_group' to your resource group name.

<ins> Setting up the terraform and plan <ins>

4. Go into the terminal and enter 'terraform init'. This will create an initial state and download the necessary plugins is needed for the scripts within the folder.
5. If you want to see what exactly will be creaetd and the subcategories of each resource you can type in 'terraform plan' within the terminal. The plan will show you the the different resources that will be created within the Azure resource group  as well as showing details of each resource.
6. Once confirmed, to execute the plan you can type 'terraform apply -auto-approve'. The plan will be shown and it will automatically execute the scrpit to create the mentioned resources.

 <ins> Deleting all the resources created <ins>

7. If you want to delete all the resources created DO NOT go through Azure protal to delete them. Instead go back to the VSC and in the terminal type 'terraform destroy -auto-approve'. This will delete everything that has been created within the terraform script.



