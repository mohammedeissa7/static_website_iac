# Terraform Beginner Bootcamp 2023

## How to checkout your linux distribution
os version check  :
```$  cat /etc/os-release```
## Terraform Basics 

**Terraform Registry**

Terraform sources their providers and modules from the Terraform registry which located at [registry.terraform.io](https://registry.terraform.io)

- Providers is an interface to APIs that will allow to create resources in terraform.
- Modules are a way to make large amount of terraform code modular, portable and sharable.

**Terraform Consoule**

*Intialize Terraform :*
At the start of a new terraform project we will run ```terraform init``` to download the binaries for the terraform providers that we'll use in this project.

*Plan Terraform :*
 ```terraform plan``` This will generate out a changeset, about the state of our infrastructure and what will be changed.

*Terraform Apply :*
- ```terraform apply```
This will run a plan and pass the changeset to be execute by terraform. Apply should prompt yes or no.
- If we want to automatically approve an apply we can provide the auto approve flag eg. terraform ```apply --auto-approve```

*Terraform Destroy :*
```teraform destroy``` This will destroy resources.

# Let's create our structure 
## Root Module Structure

Our root module structure is as follows:

```
PROJECT_ROOT
│
├── main.tf                 # everything else.
├── variables.tf            # stores the structure of input variables
├── terraform.tfvars        # the data of variables we want to load into our terraform project
├── providers.tf            # defined required providers and their configuration
├── outputs.tf              # stores our outputs
└── README.md               # required for root modules
```

# Terraform Varables 
**Terraform Cloud Variables :**

In terraform we can set two kind of variables:

- **Enviroment Variables** - those you would set in your bash terminal eg. AWS credentials
- **Terraform Variables** - those that you would normally set in your tfvars file
We can set Terraform Cloud variables to be sensitive so they are not shown visibliy in the UI.

**var flag**
We can use the ```-var``` flag to set an input variable or override a variable in the tfvars file eg. ```terraform -var user_ud="my-user_id"```

**terraform.tvfars :**
This is the default file to load in terraform variables in blunk

