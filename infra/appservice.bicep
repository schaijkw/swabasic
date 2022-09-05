@description('Specifies the location for resources.')
param location string = 'westeurope'

param webappname string

resource appserviceplan 'Microsoft.Web/serverfarms@2022-03-01' = {
  location: location
  name: 'appservice'
  sku: {
    name: 'S1'
    tier: 'Standard'
  }
}

resource site 'Microsoft.Web/sites@2022-03-01' = {
   location: location
   name: webappname
   properties: {
       serverFarmId: appserviceplan.id
   }
}
