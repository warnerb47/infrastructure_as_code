# Présentation de [Vagrant](https://www.vagrantup.com/)

Vagrant est un outil open source qui permet de gerer des machines virtuelles à travers des providers comme virtualBox ou VMware.
Dans un fichier **VagrantFile** on va définir nos configurations qui décrivent notre infrastructure

# Création d'un VagrantFile
- Pour spécifier l'os: `config.vm.box`
- Pour spécifier le provider par defaut virtualBox: `config.vm.provider`
- Pour configuer votre adress ip, port etc: `config.vm.network`

# Vagrant CLI
- Pour générer un template: `vagrant init`
- Pour créer nos vms: `vagrant up`
- Pour se connecter au vm: `vagrant ssh`
- Pour créer arrêter nos vms : `vagrant halt`
- Pour créer supprimer nos vms: `vagrant destroy`

