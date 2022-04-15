# Présentation de [Anible](https://docs.ansible.com/)
Ansible est un outil open source qui permet la gestion de configuration et le déploiement d'application.

# Quelques concepts
- **Inventory**: liste des serveurs et variables
- **Task**: une action a réaliser
- **Module**: une fonction appelé par un task
- **Role**: regroupement de  task
- **Playbook**: Définition des rôles devant être joués sur un inventory
- **Groupe**: regroupement de serveurs par catégorie dans l'inventory
- **Variables**: pareil qu'en programmation un objet qui contient une valeur

# Quelques commandes
- `ansible -i hosts production -m ping`: pour pinger tous les serveurs de notre inventory
- `ansible -i hosts production -a "free -h"`: pour pinger tous les serveurs de notre inventory
- `ansible-playbook -i hosts playbook.yml`: pour executer un playbook

# ansible galaxy [cf](https://galaxy.ansible.com/docs/)
Galaxy is a hub for finding and sharing Ansible content.
Il dispose d'un CLI `ansible-galaxy`
- `ansible-galaxy init mon_role`

[installer un role depuis ansible galaxy](https://galaxy.ansible.com/ericsysmin/docker)