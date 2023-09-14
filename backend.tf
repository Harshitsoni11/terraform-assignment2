terraform {
  backend "s3" {
    bucket = "harshits3"
    key = "harshitfile.tfstate"
    region = "ap-south-1"
  }
}