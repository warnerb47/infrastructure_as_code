# Présentation de [Terraform](https://www.terraform.io/)
Terraform est un outil open source qui permet de provisionner une infrastructure.

# Quelques concepts
- **Provider**:Terraform s'appuie sur des plugins appelés ["provider"](https://registry.terraform.io/browse/providers) pour interagir avec les fournisseurs de cloud, les fournisseurs SaaS et d'autres API.
- **HashiCorp Configuration Language**: est le langage utilisé par terraform
```
<block_type> <provider_ressource> <ressource_name> {
    key1 = value1
    key2 = value2
}
```
  - **block_type**: Définie le type de block (ressource, variable, terraform)
  - **provider_ressource**: Définie le provider et la ressource que l'on veut gérer
  - **ressource_name**: Le nom choisi pour identifier la ressource

# Terraform CLI
- `terraform init`: Terraform initialise le projet et détecter les providers
- `terraform plan`: Terraform rédige un plan pour arriver à l'état cible  
- `terraform apply`: Terraform apport les modifications nécessaires.


