resource "aws_iam_role" "github_actions_role" {
  name               = var.ghname
  assume_role_policy = file("files/trust-policy.json")
}

resource "aws_iam_role_policy_attachment" "role_policy_attachment" {
  for_each   = toset(var.iam_policy_arn)
  role       = aws_iam_role.github_actions_role.name
  policy_arn = each.key
}
