resource "aws_iam_user" "tim" {
  name        = "tim"
  path        = "/"
}

resource "aws_iam_group" "developers" {
  name = "developers"
  path = "/"
}


resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = [
    "${aws_iam_user.tim.name}"
    ]

  group = "${aws_iam_group.developers.name}"
}