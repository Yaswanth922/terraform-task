TF=terraform

init:
	$(TF) init -reconfigure

validate:
	$(TF) validate

plan: validate init
	$(TF) plan -out=tfplan

apply: plan
	$(TF) apply -auto-approve tfplan

destroy: init
	$(TF) destroy -auto-approve

fmt:
	$(TF) fmt -recursive