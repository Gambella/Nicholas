# Nicholas

FASE 1:

PUNTO 1

Trovare l'eseguibile di remmina:

which remmina.

PUNTO 2

Creare uno script remoto.sh che esegue il programma remmina:

#!/bin/bash

/usr/bin/remmina.

PUNTO 3

Creare uno script di nome remmina-distribute.sh che:

a. Copi sul desktop di tutti gli utenti il file remoto.sh

b. Crei n script remoto-$IP.shper ogni utente e per gli IP 10.2.60.100 10.2.4.140 10.2.4.11 10.2.7.100 10.2.40.100

#!/bin/bash

utenti="$(ls /home)"

TUTTI_GLI_IP="10.2.60.100 10.2.4.140 10.2.4.11 10.2.7.100 10.2.40.100"

for user in $utenti; do

	for IP in $TUTTI_GLI_IP; do
		 cp remoto.sh /home/$user/Scrivania/remoto-$IP.sh
	done
done

FASE 2:
 Cambiare il contenuto di remoto.sh in modo che esegua remmina -c VM.remmina da scaricare su https://github.com/feroda/lessons-itis/blob/master/remmina-script/VM.remmi
 
 #!/bin/bash

/usr/bin/remmina -c VM.remmina

 Copiare anche il file VM.remmina sul desktop di ogni utente
 
 #!/bin/bash

user=nicholas

cp VM.remmina /home/$user/Scrivania/
 
