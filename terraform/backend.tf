terraform {
  backend "s3" {
    bucket = "tf-state-file-container"
    region = "ap-south-1"
    key = "eks/latest-state"
  }
}
