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

- 
-
## Usage

This app shows the updated/current version of itself by HTTP Rest API.

**HTTP Type**: POST

**Authentication**: None

**URL Slag**: /version

**Response Body**:
{
    "version": "STRING"
}