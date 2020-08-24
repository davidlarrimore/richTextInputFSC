
#No Longer Needed
#echo "*** Creating Managed Package ..."
#sfdx force:package:create --name "Demo Reset Tools" --packagetype Managed --path "force-app"
#sfdx force:package1:version:create --packageid 033xx00000007oi --name ”Spring 17” --description ”Spring 17 Release” --version 3.2 --managedreleased


#echo "*** Creating Unlocked Package ..."
#sfdx force:package:create --name "richTextAreaFSC" --packagetype Unlocked --path "force-app"

echo "*** Creating Unlocked Package Version..."
sfdx force:package:version:create --package "richTextAreaFSC" -x --wait 10 --codecoverage 

echo "*** Promoting Latest Unlocked Package ..."
sfdx force:package:version:promote -p $(sfdx force:package:version:list -p 'richTextAreaFSC' -o CreatedDate --concise | tail -1 | awk '{print $3}')

#echo "*** Pushing Package to Package Manager Org ..."
#sfdx force:package:install --package "Demo Reset Tools@0.1.0-6" --targetusername PackageManager --installationkey test1234
