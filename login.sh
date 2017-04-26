#! /bin/bash


curl \
	-c cookies \
	-d 'action=login' \
	-d 'username=admin' \
	-d 'password=admin' \
	-k \
	-X POST \
	$WSO2_URL/publisher/site/blocks/user/login/ajax/login.jag 
