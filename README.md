# Brief 21 

Description du projet écrit en Rust. 

## Pré-requis :
**En local :**
- Rust / Cargo
- PostgreSQL

**Avec Docker**
- Docker installé et allumé

### Pour démarrer le projet en local : 
- Cloner le repo : adresse_repo
- Créer une base de données avec postgreSQL en local
- Compiler et exécuter le projet : 
```bash 
cargo run 
```


### Pour démarrer le projet via l'image Docker

1- Construire l'image Docker :   
    
```bash 
docker build -t registry.nocturlab.fr/nom-de-l-owner/nom-image 
```

2- Envoyer l'image Docker vers le serveur : 
```bash
docker push registry.nocturlab.fr/nom-de-l_owner/nom-image
```

3- Se connecter avec identifiants sur le serveur (ssh)

4- Créer et lancer le containeur à l'aide du fichier compose.yml
```bash
docker-compose up
```

Possibilité de lancer la commande suivante pour avoir des logs de potentielles erreurs lors du lancement du containeur (Le nombre à la fin de la ligne correspond aux n dernières lignes de logs à afficher) :
```bash 
docker compose up -d && docker compose -p traefik logs -f -n10
```

