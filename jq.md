# jq

[Tutorial](https://stedolan.github.io/jq/tutorial/)

Some examples.

``` bash
jq '{info: .info} ' < val.json
jq '{licenses: .licenses} | .[0]' < val.json
jq '.licenses | .[0]' < val.json
jq '.licenses | .[0:2]' < val.json
jq '.categories | .[0:2]' < val.json
jq '.categories | .[0:2] | .[]'  < val.json
jq '.categories | .[0:2] | .[] | select(.id == 1)'  < val.json


jq '.categories | .[0:2] | .[] | select(.supercategory == "Plants")'  < val.json
jq '.categories | .[] | select(.supercategory == "Plants")'  < val.json

jq '.categories | .[] | select(.supercategory == "Plants")'  < train.json > category.json


jq '.[] | select(.supercategory == "Plantae")'  < categories.json
```
