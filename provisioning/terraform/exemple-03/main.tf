# utilisation de variables
# https://github.com/outofdevops/cicd-iac

locals {
  yaml_input_file         = "./input.yaml"
  yaml_input_file_content = fileexists(local.yaml_input_file) ? file(local.yaml_input_file) : "NoInputFileFound: true"
  yaml_input  = yamldecode(local.yaml_input_file_content)

  json_input_file         = "./input.json"
  json_input_file_content = fileexists(local.json_input_file) ? file(local.json_input_file) : "NoInputFileFound: true"
  json_input  = jsondecode(local.json_input_file_content)
}


resource "local_file" "prod_env" {
    filename = "${path.cwd}/${local.yaml_input["filename"]}"
    content = local.yaml_input["content"]
}

resource "local_file" "staging_env" {
    filename = "${path.cwd}/${local.json_input["filename"]}"
    content = local.json_input["content"]
}
