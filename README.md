# AWS EKS Cluster

This project allows you to provision an EKS (Amazon Elastic Kubernetes Service) cluster at AWS using infrastructure as code (IaC) through Terraform.

The project uses terraform modules to organize and reuse code, facilitating infrastructure creation and maintenance in a modular way.

## Project structure
Project structure list:

- **infra/**: The main project directory, where the Terraform code resides.
  - **modules/**: Contains the Terraform modules to provision different parts of the EKS cluster.
  - **modules.tf**: Main file that includes the modules in the project.
  - **output.tf**: File to define the outputs (outputs) of Terraform.
  - **provider.tf**: Terraform provider configuration file.
  - **variables.tf**: file to define the variables of the earth.

The modules included in this project are:

- **cluster**: Responsible for creating the EKS cluster, including Roles, OIDC and Security Rules.
- **load-balancer-controller**: Provide the Kubernetes load balancing controller.
- **mng-node-group**: Creates the Managed Node Group group for the EKS cluster.
- **network**: Defines the VPC network, sub-rights, gateways, routing tables, etc.

## How to use the project
You can choose between the two options to use the project

### Option 1: Repository clone
To use this project, follow these steps:

1. Clone the repository to your local machine.
2. Configure AWS Credentials and other variables needed in the `terraform.tfvarrs` file, check the documentation of variables.
3. Run `terraform init` to initialize the project.
4. Run `terraform apply` to create the infrastructure in the AWS environment.

### Option 2: Use as a module

You can also use this project as a module in other terraform projects.

1. To do this, add the following code to your Terraform configuration file:

    ```hcl
    module "module-eks" {
        source = "github.com/thdesous/aws-eks-cluster/infra"
        tags   = var.tags
    }
    ```

2. Configure AWS credentials and other variables
   -  `terraform.tfvars`
        ```hcl   
        tags = {
            Environment = "test"
            YourTag1    = "your-tag-value"
        }
        ```

   - `variables.tf` 
        ```hcl   
        variable "tags" {
            type        = map(any)
            description = "A map of tags to add to all resources"
        }
        ```

3. Run `terraform init` to initialize the project.
4. Run `terraform apply` to create the infrastructure in the AWS environment.
 

## Contributing

If you encounter problems or have suggestions for improvement, feel free to open a Issue or send a pull Request.

## License

This project is licensed under the MIT license.See the [License] (license) file for details.