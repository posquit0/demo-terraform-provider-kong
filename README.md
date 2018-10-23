# Demo for Terraform Provider Kong

This project shows how to automate Kong API Gateway management with Terraform.


## Requirements

* [Terraform](https://www.terraform.io/) 0.11.0+
* [Kong](https://konghq.co://konghq.com) CE 0.14.0+ or EE 0.33.0+
* [Terraform Provider Kong](https://github.com/kevholditch/terraform-provider-kong) 1.7.0+


## Getting Started

### Install Terraform Provider Kong

Kong Provider is not official Terraform provider. You need to download and locate the provider plugin manually.

```bash
$ wget https://github.com/kevholditch/terraform-provider-kong/releases/download/v1.7.0/terraform-provider-kong_1.7.0_darwin_amd64.zip
$ unzip -j terraform-provider-kong_1.7.0_darwin_amd64.zip terraform-provider-kong_v1.7.0 -d ~/.terraform.d/plugins/
```

### Initialize Terraform

```bash
$ git clone https://github.com/posquit0/demo-terraform-provider-kong
$ cd demo-terraform-provider-kong
$ terraform init
# If you use S3 backend
# $ cat <<EOF > ./backend.conf
# bucket = "terraform.apigateway.my-company.dev"
# key = "tfstate"
# region = "ap-northeast-2"
# encrypt = true
# EOF
# $ terraform init -backend-config ./backend.conf
```

### Configure Variables

```bash
$ cp terraform.tfvars.sample terraform.tfvars
# Configure variables
$ vi terraform.tfvars
```

### Apply Changes in Kong API Gateway

```bash
$ terraform apply
```


## Usage

```zsh
$ terraform apply
```


## Related Links

* [GitHub: kevholditch/terraform-provider-kong](https://github.com/kevholditch/terraform-provider-kong)


## Contributing

#### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/posquit0/demo-terraform-provider-kong/issues) to report any bugs or ask feature requests.


## License

Provided under the terms of the [MIT License](https://github.com/posquit0/demo-terraform-provider-kong/blob/master/LICENSE).

Copyright © 2018, [Byungjin Park](http://www.posquit0.com).
