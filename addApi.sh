#! /bin/bash


ENDPOINT_CONFIG_JSON=`awk '$1=$1' ORS='' endpoint_config.json`
SWAGGER_JSON=`awk '$1=$1' ORS='' o2_api.json` 

curl \
	-b cookies \
	-F 'action=addAPI' \
	-F 'apiThumb=@o2_logo.png' \
	-F 'bizOwner=DigitalGlobe/Radiant' \
	-F 'bizOwnerMail=OTD@radiantblue.com' \
	-F 'context=/omar' \
	-F 'description=O2 Services Suite' \
	-F 'endpointType=nonsecured' \
	-F 'http_checked=' \
	-F 'https_checked=https' \
	-F 'name=O2' \
	-F 'swagger='"$SWAGGER_JSON"'' \
	-F 'tags=AVRO,MENSA,O2,SuperOverlay,TLV,WFS,WMS' \
	-F 'techOwner=Kevin Naquin' \
	-F 'techOwnerMail=knaquin@radiantblue.com' \
	-F 'tiersCollection=Unlimited' \
	-F 'uriTemplate-0=/*' \
	-F 'version=v1' \
	-F 'visibility=public' \
	-F 'endpoint_config='"$ENDPOINT_CONFIG_JSON"'' \
	-k \
	$WSO2_URL/publisher/site/blocks/item-add/ajax/add.jag 
