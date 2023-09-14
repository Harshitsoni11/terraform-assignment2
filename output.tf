output "output_block" {
  value = concat(
    [for e2 in aws_instance.ec2instance: "the ec2 id ${e2.id}"],
    [for bucket in aws_s3_bucket.s3bucket: "the bucket id ${bucket.id}"]
    )
}