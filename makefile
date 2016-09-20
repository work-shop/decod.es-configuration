TARGET_IP=45.55.179.84
TARGET_USER=root

deploy:
	cp build.decodes.conf build.decodes
	cp build.post-receive post-receive
	cp decodes.conf decodes
	scp build.decodes $(TARGET_USER)@$(TARGET_IP):/etc/nginx/sites-available/
	scp decodes $(TARGET_USER)@$(TARGET_IP):/etc/nginx/sites-available/
	scp post-receive $(TARGET_USER)@$(TARGET_IP):/var/www/build.decod.es/git/hooks
	rm build.decodes post-receive decodes
