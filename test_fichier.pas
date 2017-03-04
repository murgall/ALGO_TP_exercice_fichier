{ PROGRAMME : FICHIER

BUT: Cette algorithme permet de rentrer les données demandées par le programme a un utilisateur et de les enregistrer dans un fichier texte
ENTREE: Les données entrées par l'utilisateur
SORTIE : Le fichier texte

TYPE data=ENREGISTREMENT
	nom : CHAINE
	prenom : CHAINE
	adresse : CHAINE
	cp : CHAINE
	ville ; CHAINE
FIN;

VAR
	f:texte
	CLIENT:data

procédure NOM 
debut
	AJOUTER(f)
	ECRIRE ('entrer un nom d''utilisateur')
	LIRE(CLIENT.nom)
	ECRIRE(f&CLIENT.nom)
	FERMER(f)
FIN

procédure PRENOM 
debut
	AJOUTER(f);
	ECRIRE('entrer un prenom d''utilisateur')
	LIRE(CLIENT.prenom)
	ECRIRE(f&CLIENT.prenom)
	FERMER(f)
FIN

procédure ADRESSE 
debut
	AJOUTER(f)
	ECRIRE('entrer une adresse')
	LIRE(CLIENT.adresse)
	ECRIRE(f&CLIENT.adresse)
	FERMER(f)
FIN

procédure CODE_POSTALE 
debut
	AJOUTER(f)
	REPETER
		ECRIRE('entrer un code postale(en chiffre)')
		LIRE(CLIENT.cp)
	JUSQU'A (longueur(CLIENT.cp)=5)
	ECRIRE(f&CLIENT.cp)
	FERMER(f)
FIN

procédure VILLE 
debut
	AJOUTER(f)
	ECRIRE('entrer une ville')
	LIRE(CLIENT.ville)
	ECRIRE(f&CLIENT.ville)
	FERMER(f)
FIN


DEBUT
	clrscr
	ECRIRE('programme principal')
	ASSIGNER(f&'init.txt')
	NOM
	PRENOM
	ADRESSE
	CODE_POSTALE
	VILLE
FIN.


JEU D'ESSAI
	"programme principal"
	"entrer un nom d'utilisateur"
	ELBERTSE
	"entrer un prenom d'utilisateur"
	Alexy
	"Entrer une adresse"
	Bischwiller
	"Entrer un code postale(en chiffre)"
	670000
	"Entrer un code postale(en chiffre)"
	67300"
	"entrer une ville"
	Schiltigheim
Fin programme


}





PROGRAM test_fichier;

USES crt, dos;

TYPE data=record
	nom : STRING;
	prenom : STRING;
	adresse : STRING;
	cp : STRING;
	ville : STRING;
END;

VAR
	f:TextFile;
	CLIENT: data;

procedure NOM ;
BEGIN
	append(f);
	writeln('entrer un nom d''utilisateur');
	readln(CLIENT.nom);
	writeln(f,CLIENT.nom);
	close(f);
END;

procedure PRENOM ;
BEGIN
	append(f);
	writeln('entrer un prenom d''utilisateur');
	readln(CLIENT.prenom);
	writeln(f,CLIENT.prenom);
	close(f);
END;

procedure ADRESSE ;
BEGIN
	append(f);
	writeln('entrer une adresse');
	readln(CLIENT.adresse);
	writeln(f,CLIENT.adresse);
	close(f);
END;

procedure CODE_POSTALE ;
BEGIN
	append(f);
	REPEAT
		writeln('entrer un code postale(en chiffre)');
		readln(CLIENT.cp);
	UNTIL (length(CLIENT.cp)=5);
	writeln(f,CLIENT.cp);
	close(f);
END;

procedure VILLE ;
BEGIN
	append(f);
	writeln('entrer une ville');
	readln(CLIENT.ville);
	writeln(f,CLIENT.ville);
	close(f);
END;


BEGIN
	clrscr;
	writeln('programme principal');
	assign(f,'init.txt');
	NOM;
	PRENOM;
	ADRESSE;
	CODE_POSTALE;
	VILLE;
	readln;
END.