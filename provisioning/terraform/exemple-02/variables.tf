# types existants : https://www.terraform.io/language/expressions/types
variable "filename" {
    default = "fichier1.txt"
    type = string
    description = "the path of local file"
}

variable "content" {
    default = "Content of file 1"
    type = string
    description = "the content of the file"
}

variable "file_content" {
  type = map(string)
  default = {
      "filename" = "fichier2.txt"
      "content" = "Content of file 2"
  }
}
