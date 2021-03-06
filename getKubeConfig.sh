#!/bin/bash

az login --service-principal -u $APP_ID -p $APP_SECRET --tenant $TENANT_ID

az aks get-credentials --name $CLUSTER_NAME --resource-group $RESOURCE_GROUP_NAME --subscription $SUBSCRIPTION_ID