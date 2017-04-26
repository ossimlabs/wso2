# WSO2

Set `export WSO2_URL=<server_url>:9443`


## login.sh
This script will login under the admin user to get cookies to be used in the other scripts.


## addApi.sh
This script will register the O2 API in WSO2

### endpoint_config.json
Contains the JSON to configure the O2 production and development URLs.

### o2_api.json
Contains the JSON to configure the O2 API in Swagger format.

### o2_logo.png
The logo that will be used in the WSO2 API.



## updateStatus.sh
This script will officially publish the API, making it available in the WSO2 store.
