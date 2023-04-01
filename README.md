# Azure Instance Metadata - Using Powershell

## What is IMDS
Azure instance metadata is a service that provides information about an Azure virtual machine (VM) that can be accessed from within the VM. This metadata can be used by applications running on the VM to retrieve information about the VM, such as its hostname, IP address, operating system, and other configuration details

## Problem Statement
 Collect Azure Insatnce Metadata into Json format using Powrshell Script 

1. Created Windows Machine With Limited Scope
2. Deploy VM using Azurerm Terrafrom - Via Terrafrom Cloud
3. State File Mainatained and Manged Over Terrafrom Cloud 
4. Created Rawmetadata Powerhsell Script to Fetch entire Infomration about the instace and Convert into a Json
5. Created GetIMDSServiceToken Powershell Script to fecth the content from Oustide Virtal Machine Scope Using Service Token
6. ComputeTag Script Does Fetch Tag and Compute Specfic Information into the current Conetxt 

_Note: Keep main and variable files different for each component_

## Solution

### The Terraform resources will consists of following structure

```
├── ComputeTag.ps1             // The Script is used to fetch Instance Meta Compute and Tag Realeted information
├── GetIMDSUsingToken.ps1      // The Script is used to fetch Instance Meta Data Using Shared Azure Tokens.
├── RawMetaData.ps1            // The Script is used entire instance configuration from inside the Machine and Convert Into A json object
```
## Approch for Shared Token Script (GetIMDSUsingToken)

1. use 'AZ login' Login the Azure Portal 
2. Set Subscription Az account set 'subname'
3. Obtain Acess Token using Command 'az account get-access-token --resource=https://management.azure.com/'
4. Copy the Token to the Clipboard as well as the code and run wherever you have powershell insalled 
5. $resourceID : Should be passed as well based on Which resource need pull data 