#! /bin/bash


curl \
        -b cookies \
        -d 'action=updateStatus' \
	-d 'name=O2' \
	-d 'provider=admin' \
        -d 'publishToGateway=true' \
	-d 'requireResubscription=true' \
	-d 'status=PUBLISHED' \
	-d 'version=v1' \
        -k \
        -X POST \
	$WSO2_URL/publisher/site/blocks/life-cycles/ajax/life-cycles.jag
