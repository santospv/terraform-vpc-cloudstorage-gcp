terraform {
    required_providers {
        google  = {
            source  = "hashicorp/google"
            version = "3.52.0"
        }
    } 

    backend "gcs" {
        bucket  = "terraform_bucket_pvs"
        prefix  = "terraform/terraform.tfstate"
        credentials  = "pvs-devops-iac-ff885801cfd9.json"
    }
}

provider "google" {
    
    project = var.gcp_project
    region  = var.gcp_region
    credentials  = "${file("serviceaccount.yaml")}"

}


