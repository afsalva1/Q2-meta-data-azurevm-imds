######################################################################################
#File         : GetIMDSUsingToken.ps1
#Author       : Afsal Ashraf 
#Description  : The Script is used to fetch Instance Meta Data Using Shared Azure Tokens 
#Created Date : 01 - 04 -23
########################################################################################

$accessToken = "<Token Here>"
$authHeader = @{
    'Content-Type'='application/json'
    'Authorization'='Bearer ' + $accessToken
}

#Define the resource ID 
$resourceID = "/subscriptions/88d832e8-4812-474b-af24-26591f625fb4/resourceGroups/meta-lab-rg/providers/Microsoft.Compute/virtualMachines/meta-data-vm" # Insatance ID 

#Get Data 
$responceData = Invoke-WebRequest -Uri "https://management.azure.com/$($resourceID)?api-version=2021-03-01" -Method Get -Headers $authHeader
$responceData.content
$responceData.Content | ConvertFrom-Json | ConvertTo-Json -Depth 6

################