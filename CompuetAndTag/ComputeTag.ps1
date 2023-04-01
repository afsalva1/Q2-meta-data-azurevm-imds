#############################################################################################
#File         : ComputeTag.ps1
#Author       : Afsal Ashraf 
#Description  : The Script is used to fetch Instance Meta Compute and Tag Realeted information
#Created Date : 01 - 04 -23
##############################################################################################

#Compute Information Fetch
Invoke-RestMethod -Headers @{"Metadata"="true"} -Method GET -Proxy $Null -Uri "http://169.254.169.254/metadata/instance/compute?api-version=2021-01-01"

#Instance Tag Fetch
Invoke-RestMethod -Headers @{"Metadata"="true"} -Method GET -Proxy $Null -Uri "http://169.254.169.254/metadata/instance/compute/tagsList?api-version=2021-01-01"


