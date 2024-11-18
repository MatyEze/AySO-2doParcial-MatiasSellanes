   13  lsblk -l
   14  sudo fdisk /dev/sdc #(creo particiones y dejo sdc1 como swap)
   16  sudo mkswap /dev/sdc1
   17  sudo swapon /dev/sdc1
   18  free -h #(chekeo)
   19  sudo fdisk /dev/sdc #(dejo como lvm a sdc2 sdc3 sdc5 sdc6)
   20  sudo fdisk -l
   21  sudo pvcreate /dev/sdc2 /dev/sdc3 /dev/sdc5 /dev/sdc6
   22  sudo vgcreate vgAdmin /dev/sdc2 /dev/sdc3
   23  sudo vgcreate vgDevelopers /dev/sdc5 /dev/sdc6
   24  sudo vgs #(chekeo)
   25  sudo pvs #(chekeo)
   27  sudo lvcreate -L 1.99G vgAdmin -n lvAdmin
   28  sudo lvcreate -L 1G vgDevelopers -n lvDevelopers
   29  sudo lvcreate -L 1G vgDevelopers -n lvTesters
   32  sudo lvcreate -L 0.99G vgDevelopers -n lvDevops
   33  sudo fdisk -l
   34  sudo mkfs.ext4 /dev/mapper/vgAdmin-lvAdmin 
   36  sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevelopers 
   37  sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvTesters 
   38  sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevops 
   39  sudo mkdir /mnt/lvDevelopers
   40  sudo mkdir /mnt/lvTesters
   41  sudo mkdir /mnt/lvDevops
   42  sudo mkdir /mnt/lvAdmin
   43  sudo mount /dev/mapper/vgAdmin-lvAdmin /mnt/lvAdmin/
   44  sudo mount /dev/mapper/vgDevelopers-lvDevelopers /mnt/lvDevelopers/
   45  sudo mount /dev/mapper/vgDevelopers-lvTesters /mnt/lvTesters/
   46  sudo mount /dev/mapper/vgDevelopers-lvDevops /mnt/lvDevops/
   47  df -h
   48  sudo fdisk -l
   49  sudo pvs
   50  sudo vgs
   51  lsblk
   54  history > 2doParcial/puntoa.sh
