-- PLEASE DO NOT EDIT THIS CODE
-- This code was generated using the UMPLE 1.29.1.4450.6749b7105 modeling language!



CREATE TABLE IF NOT EXISTS `expo`
(
  /*------------------------*/
  /* MEMBER VARIABLES       */
  /*------------------------*/
  
  /*expo Attributes*/
  expo_id INT,
  PRIMARY KEY(expo_id)

);





CREATE TABLE IF NOT EXISTS `visitor`
(
  /*------------------------*/
  /* MEMBER VARIABLES       */
  /*------------------------*/
  
  /*visitor Attributes*/
  visitor_id INT,
  PRIMARY KEY(visitor_id)

);





CREATE TABLE IF NOT EXISTS `vote`
(
  /*------------------------*/
  /* MEMBER VARIABLES       */
  /*------------------------*/

  /*vote Associations*/
  stand_stand_id VARCHAR(255),
  visitor_visitor_id INT,
  
  /*vote Attributes*/
  vote_id INT,
  vote_value INT,
  PRIMARY KEY(vote_id)

);





CREATE TABLE IF NOT EXISTS `admin`
(
  /*------------------------*/
  /* MEMBER VARIABLES       */
  /*------------------------*/
  
  /*admin Attributes*/
  admin_id INT,
  username VARCHAR(255),
  hash_password VARCHAR(255),
  PRIMARY KEY(admin_id)

);





CREATE TABLE IF NOT EXISTS `institute`
(
  /*------------------------*/
  /* MEMBER VARIABLES       */
  /*------------------------*/
  
  /*institute Attributes*/
  institute_id VARCHAR(255),
  PRIMARY KEY(institute_id)

);





CREATE TABLE IF NOT EXISTS `stand`
(
  /*------------------------*/
  /* MEMBER VARIABLES       */
  /*------------------------*/

  /*stand Associations*/
  expo_expo_id INT,
  study_study_id VARCHAR(255),
  
  /*stand Attributes*/
  stand_id VARCHAR(255),
  name VARCHAR(255),
  PRIMARY KEY(stand_id)

);





CREATE TABLE IF NOT EXISTS `study`
(
  /*------------------------*/
  /* MEMBER VARIABLES       */
  /*------------------------*/

  /*study Associations*/
  institute_institute_id VARCHAR(255),
  
  /*study Attributes*/
  study_id VARCHAR(255),
  PRIMARY KEY(study_id)

);




ALTER TABLE `vote` ADD CONSTRAINT `fk_vote_stand_stand_id` FOREIGN KEY (`stand_stand_id`) REFERENCES `stand`(`stand_id`);
ALTER TABLE `vote` ADD CONSTRAINT `fk_vote_visitor_visitor_id` FOREIGN KEY (`visitor_visitor_id`) REFERENCES `visitor`(`visitor_id`);



ALTER TABLE `stand` ADD CONSTRAINT `fk_stand_expo_expo_id` FOREIGN KEY (`expo_expo_id`) REFERENCES `expo`(`expo_id`);
ALTER TABLE `stand` ADD CONSTRAINT `fk_stand_study_study_id` FOREIGN KEY (`study_study_id`) REFERENCES `study`(`study_id`);

ALTER TABLE `study` ADD CONSTRAINT `fk_study_institute_institute_id` FOREIGN KEY (`institute_institute_id`) REFERENCES `institute`(`institute_id`);
