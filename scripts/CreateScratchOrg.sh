echo "*** Creating scratch org ..."
sfdx force:org:create -f config/project-scratch-def.json --setdefaultusername --setalias richTextInputFSCScratch -d 30

#echo "*** Opening scratch org ..."
#sfdx force:org:open

echo "*** Installing Dependent Packages ..."
#GPBU Package Manager
#sfdx force:package:install --package 0Ho3h000000k9sWCAQ -w 1000 -u MyComponentsScratch 


#sfdx force:package:install --package 04t6C000000HrR5 -w 1000 -u MyComponentsScratch

echo "*** Pushing metadata to scratch org ..."
sfdx force:source:push

echo "*** Generating password for your user ..."
sfdx force:user:password:generate --targetusername richTextInputFSCScratch
