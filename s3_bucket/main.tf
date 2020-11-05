resource "aws_s3_bucket" "main" {
  bucket = var.name
  acl    = "private"

  versioning {
     enabled = true
   }

  server_side_encryption_configuration {
    rule {
       apply_server_side_encryption_by_default {
          sse_algorithm = "AES256"
                }
         }
  }
}
