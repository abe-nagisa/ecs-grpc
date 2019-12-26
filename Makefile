.PHONY: deploy
deploy:
	@eval $(egrep -v '^#' .env | xargs) | ./deploy_images.sh
	@eval $(egrep -v '^#' .env | xargs) | terraform apply

.PHONY: delete
delete:
	@eval $(egrep -v '^#' .env | xargs) | ./deploy_images.sh delete
	@eval $(egrep -v '^#' .env | xargs) | terraform destroy