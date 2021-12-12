# Test App in Docker with Terraform on AWS ECS Fargate

## Requirements

- Git
- Docker
- Python 3 or above
- Terraform v0.12 or higher
- AWS Cloud Account

> Note: The app can be run by `python` directly or in `docker`.


## Setup

- Open the OS terminal.
- Clone the project with the command; 
`git clone https://github.com/bkburakkaya/test-app.git`
- Running on Python;
    -   `pip3 install -r requirements.txt`
    -   `python3 -m flask run --host=0.0.0.0 --port=3000`
- Running on Docker;
    -   `docker build --tag test-app .`
    -   `docker run -d -p 3000:3000 test-app`
- The app is now accessible from the link below;
http://0.0.0.0:3000/


## Deploy to AWS ECS Fargate with Terraform (Installation)

**Pre-Requirements**: Docker, AWS Account, AWS Access Key-Secret Key
- Open the OS terminal.
- Go to project / application main path.
- Create a image for the application in Docker;
`docker build --tag test-app .`
- Push the image that is created newly to Docker Hub (Container Image Library); 
Replace the path with yours, and change the tag name as desired.
`docker push burakkaya28/test-app:latest`
- Create an API user on AWS with the following permissions; (**Keep Access Key-Secret Key data**)
    - IAMFullAccess
    - AutoScalingFullAccess
    - ElasticLoadBalancingFullAccess
    - CloudWatchFullAccess
    - AmazonECS_FullAccess
    - AmazonECSTaskExecutionRolePolicy
    - AmazonEC2FullAccess
    - AWSCodeDeployRoleForECS
    - AWSElasticBeanstalkRoleECS
    - AmazonRoute53FullAccess
- Open OS Terminal.
- Add Access Key and Secret Key in a file which specified by AWS in **$HOME/.aws/credential**
- Change directory to **project_path/terraform**.
- Edit variables.tf file to edit variables for deployment. All variables have a description.
- Init directory for Terraform;
`terraform init`
- Plan the action on Terraform;
`terraform plan`
- Apply the action on Terraform;
`terraform apply`
- Terraform will provide an output that shows domain name of the service which deployed AWS ECS Fergate by Route53 service.
- That's it!

## Usage

This app shows the updated/current version of itself by HTTP Rest API.

- **HTTP Type**: POST
- **Authentication**: None
- **URL Slag**: /version
- **Response Body**:
{
    "version": "STRING"
}