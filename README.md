# Terraform-V-Storage

## A functional Storage account and a VNET creation project using terraform with the help of Visual Studio Code

This project is a great example of how to use create Terraform scripts within Visual Studio Code. The purpose of keeping track of every run that has gone into creating or changing the script and the changes within Azure account.

What the files contain:

1. Main.tf - Both the required provider that we are going to be using as well as the provider we are going to use for the other files. In this project the provider was Azure ("azurerm").
2. Storage.tf - Contains the storage account creation script with the delete retention policy, as well as the three contains that were created with their dedicated names (Gold, Silver and Bronze).
3. Vnet.tf - Has the V Net creation script and two seperate subnet creation script as well.


