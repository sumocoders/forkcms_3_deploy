# !!! Do not use this gem, use the forkcms_deploy-gem, which is version-independant from now on !!!

# ForkCMS Deploy gem
This is a gem that enables you to deploy a ForkCMS 3.x.x install to your server. It was built specific for Fork CMS so your Capfile will be neat and tidy.

## Installation
The recipe is available in the forkcms_deploy gem, which can be installed via [RubyGems.org](http://rubygems.org)
	gem install forkcms_3_deploy

## Available recipes
* forkcms_3_deploy				- ForkCMS specific tasks.
* forkcms_3_deploy/defaults		- Best practices for each deployment.

## Example recipe
This recipe will deploy the ForkCMS-instance to your-app.com.

	load 'deploy' if respond_to?(:namespace) # cap2 differentiator

	# set your application name here
	set :application, "your-app.com"								# eg.: sumocoders.be

	# set user to use on server
	set :user, "your-user"											# eg.: sumocoders

	# deploy to path (on server)
	set :deploy_to, "/home/#{user}/apps/#{application}"				# eg.: /home/sumocoders/apps/sumocoders.be

	# set document_root
	set :document_root, "/home/#{user}/www.your-app.com"			# eg.: /home/sumocoders/www.sumocoderS.be

	# define roles
	server "your-app.com", :app, :web, :db, :primary => true		# eg.: crsolutions.be

	# git repo & branch
	set :repository, "git@your-git.com:your-app.git"				# eg.: git@crsolutions.be:sumocoders.be.git
	set :branch, "master"

	begin
		require 'forkcms_3_deploy'
		require 'forkcms_3_deploy/defaults'							# optional, contains best practices
	rescue LoadError
		$stderr.puts <<-INSTALL
	You need the forkcms_3_deploy gem (which simplifies this Capfile) to deploy this application
	Install the gem like this:
		gem install forkcms_3_deploy
					INSTALL
		exit 1
	end