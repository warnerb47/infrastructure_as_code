variable "file_content" {
  type = object({
    filename = string
    content = string
  })
  default = {
    content = "value"
    filename = "value"
  }
}
