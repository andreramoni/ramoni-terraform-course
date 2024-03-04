data "archive_file" "my_dir" {
  type        = "zip"
  source_dir  = "."
  output_path = "archive.zip"
}

