# certification-labs

Labs for certifications

## Terraform 

### Running in Azure

#### Export ARM variables
```
# run the following command before anything else
# grab key
age -d -i key -o .azurerm .azurerm.tar.gz.age && tar -xvzf .azurerm
source ~/.azurerm
rm key
```