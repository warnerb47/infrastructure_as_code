# utilisation de variables

resource "local_file" "fichier1" {
    filename = "${path.cwd}/${var.filename}"
    content = var.content
}

resource "local_file" "fichier2" {
    filename = "${path.cwd}/${var.file_content["filename"]}"
    content = var.file_content["content"]
}
