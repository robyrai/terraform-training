resource "aws_s3_bucket" "remote_state" {
    bucket = "remote-state-jrs-robyrai"
    force_destroy = true
    acl = "private"
    tags = {
        Name = "remote state backend"
    }
}
