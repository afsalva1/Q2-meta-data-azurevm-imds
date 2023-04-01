#######################################################################################################################
#File         : RawMetaData.ps1
#Author       : Afsal Ashraf 
#Description  : The Script is used entire instance configuration from inside the Machine and Convert Into A json object
#Created Date : 01 - 04 -23
#####################################################################################################################

#Raw data
$responceData=Invoke-WebRequest -Headers @{"Metadata"="true"} -Method GET -Proxy $Null -Uri "http://169.254.169.254/metadata/instance?api-version=2021-01-01"
$responceData
$responceData.Content
$responceData.Content | ConvertFrom-Json | ConvertTo-Json -Depth 6