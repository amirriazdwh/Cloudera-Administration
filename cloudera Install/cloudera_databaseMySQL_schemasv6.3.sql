/*drop clouder manager server schema  this is the web server schema */
drop database scm;
CREATE DATABASE scm	 DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
drop user scm;
create user 'scm'@'%' IDENTIFIED BY 'oc4jAdmin!';
GRANT ALL ON scm.* TO 'scm'@'%' ;

/*activity monitor database and user*/
drop database amon;
CREATE DATABASE amon DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
drop user 'amon'@'%';
create user 'amon'@'%' IDENTIFIED BY 'oc4jAdmin!';
GRANT ALL ON amon.* TO 'amon'@'%';

 /* report monintor database and user*/
drop database rman ; 
CREATE DATABASE rman DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
drop user 'rman'@'%';
create user 'rman'@'%' IDENTIFIED BY 'oc4jAdmin!';
GRANT ALL ON rman.* TO 'rman'@'%' ;

/* drop hue schema */
drop database hue;
CREATE DATABASE hue DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
drop user 'hue'@'%';
create user 'hue'@'%' IDENTIFIED BY 'oc4jAdmin!';
GRANT ALL ON hue.* TO 'hue'@'%';

/*drop hive schema */
drop database metastore;
CREATE DATABASE metastore	 DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
drop user 'hive'@'%';
create user 'hive'@'%' IDENTIFIED BY 'oc4jAdmin!';
GRANT ALL ON metastore.* TO 'hive'@'%';

drop database sentry;
CREATE DATABASE sentry DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
drop user 'sentry'@'%';
create user 'sentry'@'%' IDENTIFIED BY 'oc4jAdmin!';
GRANT ALL ON sentry.* TO 'sentry'@'%';

drop database nav;
CREATE DATABASE nav DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
drop user 'nav'@'%';
create user 'nav'@'%' IDENTIFIED BY 'oc4jAdmin!';
GRANT ALL ON nav.* TO 'nav'@'%';

drop database navms;
CREATE DATABASE navms	 DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
drop user 'navms'@'%';
create user 'navms'@'%' IDENTIFIED BY 'oc4jAdmin!';
GRANT ALL ON navms.* TO 'navms'@'%';

drop database oozie;
CREATE DATABASE oozie DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
drop user 'oozie'@'%';
create user 'oozie'@'%' IDENTIFIED BY 'oc4jAdmin!';
GRANT ALL ON oozie.* TO 'oozie'@'%';
###############################################################
#  configure clouder manager server store store data in scm
################################################################
#sudo /opt/cloudera/cm/schema/scm_prepare_database.sh [options] <databaseType> <databaseName> 
#<databaseUser> <password>
#If it exists, remove the embedded PostgreSQL properties file: then name of file in case of mysql is db.properties
#sudo rm /etc/cloudera-scm-server/db.mgmt.properties
### in case of user scm@'%' you have to give ip address
#sudo /opt/cloudera/cm/schema/scm_prepare_database.sh -h 192.168.56.110 mysql scm scm
