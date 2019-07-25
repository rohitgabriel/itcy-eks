terraform {
  backend "remote" {
    organization = "eit-demo"

    workspaces {
      name = "intercity-prod-eks"
    }
  }
}


