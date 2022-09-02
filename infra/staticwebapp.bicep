@description('Specifies the location for resources.')
param location string = 'westeurope'

param staticwebappname string = 'fallbackswaname'

resource swa 'Microsoft.Web/staticSites@2021-01-01' = {
   location: location
   name: staticwebappname
   sku: {
      name: 'Free'
      tier: 'Free'
   }
   properties: {
   }
}
