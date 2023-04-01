######################################################################################
#File         : GetIMDSUsingToken.ps1
#Author       : Afsal Ashraf 
#Description  : The Script is used to fetch Instance Meta Data Using Shared Azure Tokens 
#Created Date : 01 - 04 -23
########################################################################################

$accessToken = "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsIng1dCI6Ii1LSTNROW5OUjdiUm9meG1lWm9YcWJIWkdldyIsImtpZCI6Ii1LSTNROW5OUjdiUm9meG1lWm9YcWJIWkdldyJ9.eyJhdWQiOiJodHRwczovL21hbmFnZW1lbnQuYXp1cmUuY29tLyIsImlzcyI6Imh0dHBzOi8vc3RzLndpbmRvd3MubmV0LzRhNjI5NWE5LTllNjYtNDJkNS1iNGU1LWZjZTc0MjE2OWIyMy8iLCJpYXQiOjE2ODAzNjE2NTUsIm5iZiI6MTY4MDM2MTY1NSwiZXhwIjoxNjgwMzY2MDg0LCJhY3IiOiIxIiwiYWlvIjoiQVdRQW0vOFRBQUFBSG5Bdkxlb2J3UndFS0x2MDZwSUduanJpSzArOTl6aTcxRlJQS0cvMmVIcVRMOFM1Q0U4blMxSEc5b0U0N2p1THVJdVp3TEZ0YlRwY0pRMVd3MHZ0WTN1aUV6NmY3Rk9qZis1UUxHNjlqV2hOSDZRS1prdm9nVkJjTGZQQ0pFdHMiLCJhbHRzZWNpZCI6IjE6bGl2ZS5jb206MDAwMzdGRkUxOTY5QjdCNiIsImFtciI6WyJwd2QiXSwiYXBwaWQiOiIwNGIwNzc5NS04ZGRiLTQ2MWEtYmJlZS0wMmY5ZTFiZjdiNDYiLCJhcHBpZGFjciI6IjAiLCJlbWFpbCI6ImFmc2FsLnYuYXNocmFmQG91dGxvb2suY29tIiwiZmFtaWx5X25hbWUiOiIzZTA1MjIxNi00NzUwLTRiNTQtYTZjNi03NTNkOWE0ZDY5MzMiLCJnaXZlbl9uYW1lIjoiMDVlYjUzNzAtOTliMy00NzFlLWEwNzctODk2ZTJmYTA0MjkxIiwiZ3JvdXBzIjpbIjc0YzY0Nzg5LWJlZmItNDU1OC05NGUxLTgxMjFkODkyYWZjMyJdLCJpZHAiOiJsaXZlLmNvbSIsImlwYWRkciI6IjE4NS4yMjEuNjkuNDciLCJuYW1lIjoiMDVlYjUzNzAtOTliMy00NzFlLWEwNzctODk2ZTJmYTA0MjkxIDNlMDUyMjE2LTQ3NTAtNGI1NC1hNmM2LTc1M2Q5YTRkNjkzMyIsIm9pZCI6IjZkNDViMTYxLTI1OWQtNDc4Ni1hMTRjLTc3MGM2OThlMDUyYSIsInB1aWQiOiIxMDAzMDAwMEFEQThEQTNEIiwicmgiOiIwLkFTc0FxWlZpU21hZTFVSzA1ZnpuUWhhYkkwWklmM2tBdXRkUHVrUGF3ZmoyTUJNckFPVS4iLCJzY3AiOiJ1c2VyX2ltcGVyc29uYXRpb24iLCJzdWIiOiJCY0UtVzM1R2NYOVh6c21KLU1maExDM1FWVF9rX3FvRjVnNVEzU3RQTGVJIiwidGlkIjoiNGE2Mjk1YTktOWU2Ni00MmQ1LWI0ZTUtZmNlNzQyMTY5YjIzIiwidW5pcXVlX25hbWUiOiJsaXZlLmNvbSNhZnNhbC52LmFzaHJhZkBvdXRsb29rLmNvbSIsInV0aSI6ImRERXhvQlZnSEUtZURiaURabUk4QUEiLCJ2ZXIiOiIxLjAiLCJ3aWRzIjpbIjYyZTkwMzk0LTY5ZjUtNDIzNy05MTkwLTAxMjE3NzE0NWUxMCIsImI3OWZiZjRkLTNlZjktNDY4OS04MTQzLTc2YjE5NGU4NTUwOSJdLCJ4bXNfY2MiOlsiQ1AxIl0sInhtc190Y2R0IjoxNTM2MDkzNjYyfQ.gpDQDk6JqM02RPlZYVKAUyjhtXwBO80yxyeEElbM0KQ4Lvna6Gm5Bs4ZNpmCLcbBq8co7ZzPMBEY3iuDlyDWLFPU79dEldT-R7f-FDtkkXYtCkXC72_uEm81NfXm6PglBJqUpTPJ4L3uZkMBom_Y21ZweaKBk1LeApPA6mPAs0YNiO57WzaTkayKqeoHEVexlFAkILyae3QZUzdko_HdX-JwduAqyWH-NOKUxKMSD13uGwiTjoIDX5k2rVGr0PJNm33rg0k9un_5Q3SWSp5Ob8Ms-9XPOgPAavR-UiWPxhsemumUXMGEw2EIEBgXUi-Z3sBNG4ImkRu--x89gpWpbQ"
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