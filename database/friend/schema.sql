create table message(
                      idmessage int(11) NOT NULL AUTO_INCREMENT,
                      username varchar(50) NOT NULL,
                      liuname varchar(50) NOT NULL,
                      message text NOT NULL,
                      messagetime timestamp NULL default CURRENT_TIMESTAMP,
                      PRIMARY KEY(idmessage)
);

create table friend(
                      idfriend(11) NOT NULL AUTO_INCREMENT,
                      username varchar(50) NULL,
                      fname varchar(50) NULL,
                      PRIMARY KEY(idfriend)
);

create table user(
                      iduser int(11) NOT NULL AUTO_INCREMENT,
                      nameuser varchar(50) NOT NULL, 
                      ageuser int(11) NOT NULL,
                      sexuser char(4) NOT NULL,
                      emailuser varchar(50) NOT NULL,
                      passworduser varchar(50) NOT NULL,  
                      PRIMARY KEY(id),
                      UNIQUE KEY(nameuser)
);
