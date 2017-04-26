# EC2 Deployment

From a fresh EC2 instance, here are the steps needed to deploy WSO2.

## Prerequisities
Ensure that TCP ports 9443 and 8243 are open

## Log-in as root
`sudo su -`

## Get updates
`yum -y update`

## Install java
```
yum install -y java
echo "export JAVA_HOME=/usr" >> ~/.bashrc_profile
export JAVA_HOME=/usr
```

## Make a webapp directory
```
mkdir /wso2
cd /wso2
```

## Install unzip
`yum install -y unzip`
### Download server
### http://wso2.com/api-management/#iBottom
`unzip wso2am-2.1.0.zip`

## Modify the host
`vi /wso2/wso2am-2.1.0/repository/conf/api-manager.xml`
### Replace ${carbon.local.ip} with host
`<GatewayEndpoint>http://${carbon.local.ip}:${http.nio.port},https://${carbon.local.ip}:${https.nio.port}</GatewayEndpoint>`

`vi /wso2/wso2am-2.1.0/repository/conf/carbon.xml
 ### Uncomment and modify with server host
```
<!--HostName>www.wso2.org</HostName-->
<!--MgtHostName>mgt.wso2.org</MgtHostName-->
```

## Start the server
`/wso2/wso2am-2.1.0/bin/wso2server.sh`
