# Github-Runner
Baser sur [dind:ubuntu-18.04](https://github.com/cruizsan/docker-registry/tree/master/dind)

### Librairie installée
* libunwind8 
* icu-devtools
* git
* actions-runner-linux-x64 :: fournis par github, hébergé sur github

### Créer l'image
```
# name = github-runner
# version = v0.0.1
./buil-docker-image.sh
```

### Créer le conteneur
```
# Il faut spécfiquement fournir 3 éléments ...
  # REPO_URL = url de github (mon repository)
  # RUNNER_TOKEN = Token fournis par Github (voir image ci dessous)
  # RUNNER_NAME = Nom du self-hosted qui apparaitra dans Github
docker run -it -e REPO_URL="<url_gitub>" -e RUNNER_TOKEN="<Github_Token>" -e RUNNER_NAME="<nom>" --name "exemple-name" --privileged github-runner:v0.0.1
```

##### RUNNER_TOKEN & REPO_URL
![alt](https://github.com/cruizsan/docker-registry/raw/master/github-runner/repo_url_and_runner_token.png)
