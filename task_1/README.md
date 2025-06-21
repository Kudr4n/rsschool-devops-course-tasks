# rsschool-devops-course-tasks
RS School DevOps Course tasks repository

Terraform code for s3 bucket setup.

To make this workflow work needs:

1. Setup remote s3 bucket for terraform state
2. Run terraform locally to create IAM role for GitHub Actions Workflow
3. After IAM role created, code for workflow and terraform could be pushed to the github.