terraform {
  backend "s3" {
    bucket       = "iac-auto-tfstate"
    region       = "us-east-2"
    use_lockfile = true
    encrypt      = true
  }
}