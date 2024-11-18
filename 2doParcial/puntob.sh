vagrant@vmAMN316:
    1  ip address show
    2  ll .ssh/
    3  ssh-keygen
    4  cat .ssh/id_rsa.pub
    5  ssh vagrant@192.168.56.9 #(checko conexion)
    6  git clone https://github.com/upszot/UTN-FRA_SO_Ansible.git
    7  ll
    8  cd UTN-FRA_SO_Ansible/ejemplo_02
    9  ll
   10  nano inventory
   11  nano playbook.yml
   20  sudo apt update
   21  sudo apt install ansible
   23  ansible-playbook -i inventory playbook.yml
   24  cd ..
   25  history > puntob.sh

vagrant@vmAnsDev316:
    1  ip address show
    2  ll .ssh/
    3  nano .ssh/authorized_keys
    4  sudo apt list --installed |grep apache #(checko instalacion)
    5  history > puntob.sh
