# https://serverfault.com/questions/532675/which-permissions-policies-for-iam-role-to-be-used-with-cloudwatch-monitoring-sc

resource "aws_iam_role_policy" "send_data_from_ec2_to_cloudwatch_policy" {
  name = "send_data_from_ec2_to_cloudwatch_policy"
  role = "${aws_iam_role.test_role.id}"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
	"cloudwatch:GetMetricStatistics",
        "cloudwatch:ListMetrics",
        "cloudwatch:PutMetricData",
        "ec2:DescribeTags"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}

resource "aws_iam_role" "send_data_from_ec2_to_cloudwatch_role" {
  name = "send_data_from_ec2_to_cloudwatch_role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}
