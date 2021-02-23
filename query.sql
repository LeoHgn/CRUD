/*PROFILS*/

/*créer*/
INSERT INTO profil ($id_profil, $designation);
/*modifier*/
UPDATE profil SET $VARIABLE = ''
WHERE id_profil = $id_profil;
/*supprimer*/
DELETE FROM profil
WHERE profil = $id_profil;

/*afficher liste utilisateurs pour attribuer profil*/
Select * FROM utilisateur
ORDER BY nom;


/*--------------------------------------------------------------------------------*/
/* UTILISATEUR */

/*créer*/
INSERT INTO utilisateur ($id, $nom, $prenom, $courriel, $telephone, $civilite, $titre, $fonction, $siren, $id_profil, $login, $password);
/*modifier*/
UPDATE utilisateur SET $VARIABLE = ''
WHERE Identifiant = $id;
/*supprimer*/
DELETE FROM utilisateur
WHERE utilisateur = $id;
/*mon compte*/
Select * FROM utilisateur 
WHERE id = $id;

/*afficher habilitations*/
SELECT * FROM habilitations H 
JOIN service S ON H.service_associe = S.code_service 
JOIN organisme O ON S.SIREN = O.SIREN
JOIN utilisateur U ON O.SIREN = U.SIREN
WHERE U.Identifiant = $id;
ORDER BY O.SIREN;

/*afficher liste utilisateurs par organisme*/
SELECT * FROM utilisateur U
JOIN organisme O ON U.SIREN = O.SIREN
WHERE O.SIREN = $SIREN;
ORDER BY U.Identifiant;

/*afficher liste utilisateurs par service*/
SELECT * FROM utilisateur U
JOIN organisme O ON U.SIREN = O.SIREN
JOIN service S ON O.SIREN = S.SIREN
WHERE S.code_service = $code_service;
ORDER BY U.Identifiant;


/*--------------------------------------------------------------------------------*/
/*HABILITATION*/

/*créer*/
INSERT INTO habilitation ($Nom, $service_associe);
/*modifier*/
UPDATE habilitation SET $VARIABLE = ''
WHERE Nom = $Nom;
/*supprimer*/
DELETE FROM habilitation
WHERE Nom = $Nom;


/*--------------------------------------------------------------------------------*/
/*ORGANISME*/

/*associer utilisateur à l'organisme*/
UPDATE utilisateur SET SIREN = $SIREN
WHERE Identifiant = $Identifiant;
/*supprimer utilisateur*/
UPDATE utilisateur SET SIREN = NULL
WHERE Identifiant = $Identifiant;
/*activer service*/
INSERT INTO service ($code_service, $nom_service, $THIS_SIREN);
/*désactiver service*/
UPDATE service set SIREN = NULL
WHERE code_service = $code_service;
/*afficher la liste des services*/
SELECT * FROM service S
JOIN organisme O ON S.SIREN = O.SIREN
WHERE S.SIREN = $SIREN;
/*afficher la liste des utilisateurs*/
SELECT * FROM utilisateur U
JOIN organisme O ON U.SIREN = O.SIREN
WHERE U.SIREN = $SIREN;


/*--------------------------------------------------------------------------------*/
/*ORDRE_SYNCHRONISATION*/

/*créer*/
INSERT INTO ordres_synchronisation ($SIREN, $Id_utilisateur, $Nom_habilitation, $date, $Id_type);


/*--------------------------------------------------------------------------------*/
/*SERVICE*/

/*créer*/
INSERT INTO service ($code_service, $nom_service, $SIREN);
/*modifier*/
UPDATE service SET $VARIABLE = ""
WHERE code_service = $code_service;
/*supprimer*/
DELETE FROM service
WHERE code_service = $code_service;
/*créer habilitation*/
INSERT INTO habilitation ($Nom, $THIS_service_associe);
/*lister habilitations*/
SELECT * FROM habilitation
JOIN service ON service_associe = code_service
WHERE code_service = $code_service;