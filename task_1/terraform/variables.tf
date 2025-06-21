variable "ghname" {
  type = string
}
variable "iam_policy_arn" {
  description = "IAM Policy to be attached to role"
  type        = list(string)
}
variable "bucket_name" {
  type = string
}