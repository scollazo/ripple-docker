#!/bin/bash
if ! [ -f /var/lib/mongodb/ripple.0 ]
	then
	echo "First run, populating database"
	chown mongodb.mongodb /var/lib/mongodb -R 
	#Start mongo
	/etc/init.d/mongodb start
	echo -n "Waiting for mongodb socket ..."
	while ! [ -a /var/run/mongodb/mongodb-27017.sock ]
	        do
		 echo -n "."
       		 sleep 5
        	done
	echo  " ready!"

	#Create ripple database and default Administrator user (password: ripple)
	cd /opt/ripple/ 
	make db-migrate 
	# Stop mongod
	mongod -f /etc/mongodb.conf --shutdown && rm -f /opt/firstrun.sh
	fi

chown mongodb.mongodb /var/lib/mongodb -R 
supervisord


