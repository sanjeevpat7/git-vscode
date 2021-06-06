targetScope = 'subscription'

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'sanjeev-bicep'
  location: deployment().location
}

module appPlanDeploy 'appPlan.bicep' = {
  name: 'appPlandeploy'
  scope: rg
  params: {
    namePrefix: 'sanjeev'
  }
}
