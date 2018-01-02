#!/bin/bash

# Init script for WordPress trunk site

echo "Commencing WordPress trunk Setup"

# Make a database, if we don't already have one
echo "Creating database (if it's not already there)"
mysql -u root --password=root -e "CREATE DATABASE IF NOT EXISTS ${VVV_SITE_NAME}"
mysql -u root --password=root -e "GRANT ALL PRIVILEGES ON ${VVV_SITE_NAME}.* TO wp@localhost IDENTIFIED BY 'wp';"

# Check for the presence of a `htdocs` folder.
if [ ! -d htdocs ]
then
	# Nginx Logs
	mkdir -p ${VVV_PATH_TO_SITE}/log
	touch ${VVV_PATH_TO_SITE}/log/error.log
	touch ${VVV_PATH_TO_SITE}/log/access.log

	echo "Checking out WordPress SVN"
	# If `htdocs` folder doesn't exist, check out WordPress
	# as that folder
	svn checkout http://svn.automattic.com/wordpress/trunk/ ../htdocs
	# Change into the `htdocs` folder we've checked SVN out into
	cd ../htdocs
	# Use WP CLI to create a `wp-config.php` file
	wp core config --dbname="${VVV_SITE_NAME}" --dbuser=wp --dbpass=wp --dbhost="localhost" --allow-root
	# Use WP CLI to install WordPress
	#wp core install --url=${VVV_SITE_NAME}.test --title="${VVV_SITE_NAME}" --admin_user=admin --admin_password=password --admin_email=admin@${VVV_SITE_NAME}.test --allow-root
	# Change folder to the parent folder of `htdocs`
	cd ..
else
	echo "Updating WordPress SVN"
	# If the `htdocs` folder exists, then run SVN update
	svn up htdocs
fi

# The Vagrant site setup script will restart Nginx for us

# Let the user know the good news
echo "WordPress trunk site now installed";
