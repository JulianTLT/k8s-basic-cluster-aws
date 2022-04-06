resource "aws_s3_bucket" "clusters_tf_state_s3_bucket" {
  bucket = "${var.clusters_name_prefix}-terraform-state"

  lifecycle {
    prevent_destroy = true
  }
  tags = {
    Name      = "${var.clusters_name_prefix} S3 Remote Terraform State Store"
    ManagedBy = "terraform"
  }

}

resource "aws_s3_bucket" "clusters_vpc_tf_state_s3_bucket" {
  bucket = "${var.clusters_name_prefix}-vpc-terraform-state"

  lifecycle {
    prevent_destroy = true
  }
  tags = {
    Name      = "${var.clusters_name_prefix} VPC S3 Remote Terraform State Store"
    ManagedBy = "terraform"
  }
}