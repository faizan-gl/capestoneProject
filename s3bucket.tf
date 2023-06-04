# resource "aws_s3_bucket" "demoBucket" {
#   bucket            = "faizanBucket"
#   region            = "eu-central-1"
#   tags = {
#     Name        = "Terraform .tfstate bucket"
#     Environment = "Dev"
#   }
# }