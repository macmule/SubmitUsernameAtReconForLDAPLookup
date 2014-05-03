#!/bin/sh
####################################################################################################
#
# More information: 
#
# GitRepo: https://github.com/macmule/SubmitUsernameAtReconForLDAPLookup
#
# License: http://macmule.com/license/
#
####################################################################################################

# Get the logged in users username
loggedInUser=`/bin/ls -l /dev/console | /usr/bin/awk '{ print $3 }'`


echo "Running recon for $loggedInUser `date`..."

# Run recon, submitting the users username which as of 8.61+ can then perform an LDAP lookup
sudo jamf recon -endUsername $loggedInUser

echo "Finished running recon for $loggedInUser `date`..."
