## Instructions
### Terraform commands

* Create secrets.auto.tfvars with var:
``` bash
cd terraform
cat secrets.auto.tfvars
do_token = "your Digital Ocean Token"
ssh_key_name = "ssh public key in DO"
regiondc = "region"
countdroplets = "count droplets.."
namepj = "name project for example redmine"
```
* then init:
```
terraform init

```

* check plan
```
terraform plan
```


* apply code for create infra:

```
terraform apply
```
