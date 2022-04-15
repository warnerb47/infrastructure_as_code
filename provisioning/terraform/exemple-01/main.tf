resource "local_file" "mon_fichier" {
    filename = "${path.cwd}/mon_fichier.txt"
    content = "getting start with terraform"
}
