# Docker In Docker
Baser sur ubuntu 18.04

### Librairie installée
* apt-transport-https
* ca-certificates
* curl
* lxc
* iptables
* wget
* dmsetup
* docker
* docker-compose

### Utilisation de vfs
```
/etc/docker/daemon.json
{
    "storage-driver": "vfs"
}
```

### Créer l'image
```
# name = dind
# version = ubuntu-18.04
./build-docker-image.sh
```

### tips
Pour utiliser docker dans docker, il ne faut pas oublier le "--privileged"
```
docker run -it --privileged dind:ubuntu-18.04
```
