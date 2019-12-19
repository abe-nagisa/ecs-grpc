.PHONY: deploy
deploy:
	@./deploy_images.sh
	@terraform apply

.PHONY: delete
delete:
	@eval $(egrep -v '^#' .env | xargs) | ./deploy_images.sh delete
	@eval $(egrep -v '^#' .env | xargs) | terraform destroy