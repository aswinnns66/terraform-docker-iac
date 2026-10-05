# Infrastructure as Code (IaC) with Terraform & Docker (Task 3)

## Objective
Provision, inspect, and destroy a local Docker container using Terraform and the `kreuzwerker/docker` provider.

## Workflow & Commands Executed
1. `terraform init`: Initialized the provider plugin.
2. `terraform plan`: Verified execution plan before applying.
3. `terraform apply -auto-approve`: Provisioned the Nginx container mapped to port 8080.
4. `terraform state list`: Inspected managed state objects.
5. `curl http://localhost:8080`: Validated Nginx service availability.
6. `terraform destroy -auto-approve`: Safely dismantled container infrastructure.

## Deliverables
- `main.tf`: Terraform configuration file defining Docker image and container.
- `logs/execution_logs.txt`: Full terminal execution logs demonstrating provisioning, curl verification, and teardown.
