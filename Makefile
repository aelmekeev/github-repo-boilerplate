name_param := $(if $(name),"-var=name=$(name)","")

create:
	terraform init && terraform apply -lock=false -input=false -auto-approve $(name_param)
	rm terraform.tfstate terraform.tfstate.backup

validate:
	terraform fmt -check && terraform init && terraform validate

format:
	terraform fmt -recursive