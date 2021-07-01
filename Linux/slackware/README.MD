# Fazer pós instalação


## Random
- Copiar as pastas *.icons* e *.themes* (do git/linux/dotFiles) para a pasta /home/*<.user.>*
- Copiar o /root/*.xinitrc* para /home/<.user.>/xinitrc
- Copiar o *.zshrc* (do git/linux/dotFiles) para o /home


<br>

## Instalar o Java
- Download do jdk do site
- Criar uma pasta __.src__ no /home/*<.user.>*
- Descompactar (```tar -xvf jdk*.tar.gz```) para a pasta anterior
- Criar o script /etc/profile.d/openjdk.sh e permissões 755
```
#!/bin/sh
export JAVA_HOME=/home/<user>/.src
export MANPATH="${MANPATH}:${JAVA_HOME}/man"
export PATH="${PATH}:${JAVA_HOME}/bin:${JAVA_HOME}/jre/bin"
```


<br>

## SBOPKG
Os meus _queues_ para o **sbopkg**, um utilitário para automatizar a instalação dos pacotes do Slackbuilds.
- **Queue files folder:** */var/lib/sbopkg/queues*
- **Load queue file:** Queue > Load > *file*.sqf




