az login --service-principal -u ${{ inputs.APP_ID }} -p ${{ inputs.APP_SECRET }} --tenant ${{ inputs.TENANT_ID }}

aks get-credentials --name ${{ inputs.CLUSTER_NAME }} --resource-group ${{ inputs.RESOURCE_GROUP_NAME }} --subscription ${{ inputs.SUBSCRIPTION_ID }}

gh secret set ${{ inputs.SECRET_NAME }} < ~/.kube/config