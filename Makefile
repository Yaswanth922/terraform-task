init:
	terraform init

validate:
	terraform validate

plan:
	terraform plan

apply:
	make plan
	make validate
	make init
	terraform apply -auto-approve

plan-destroy:
	terraform plan -destroy

destroy:
	make plan-destroy
	make validate
	make init
	terraform destroy -auto-approve