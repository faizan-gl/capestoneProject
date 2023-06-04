terraform {
  backend "s3" {
    bucket = "faizan-tf-statefile-bucket"
    #bucket = "mybucket-harsh-kasana"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}


