<?php
/*PLEASE DO NOT EDIT THIS CODE*/
/*This code was generated using the UMPLE 1.29.1.4450.6749b7105 modeling language!*/

class Admin
{

  //------------------------
  // MEMBER VARIABLES
  //------------------------

  //Admin Attributes
  private $adminId;
  private $username;
  private $hashPassword;

  //------------------------
  // CONSTRUCTOR
  //------------------------

  public function __construct($aAdminId, $aUsername, $aHashPassword)
  {
    $this->adminId = $aAdminId;
    $this->username = $aUsername;
    $this->hashPassword = $aHashPassword;
  }

  //------------------------
  // INTERFACE
  //------------------------

  public function setAdminId($aAdminId)
  {
    $wasSet = false;
    $this->adminId = $aAdminId;
    $wasSet = true;
    return $wasSet;
  }

  public function setUsername($aUsername)
  {
    $wasSet = false;
    $this->username = $aUsername;
    $wasSet = true;
    return $wasSet;
  }

  public function setHashPassword($aHashPassword)
  {
    $wasSet = false;
    $this->hashPassword = $aHashPassword;
    $wasSet = true;
    return $wasSet;
  }

  public function getAdminId()
  {
    return $this->adminId;
  }

  public function getUsername()
  {
    return $this->username;
  }

  public function getHashPassword()
  {
    return $this->hashPassword;
  }

  public function equals($compareTo)
  {
    return $this == $compareTo;
  }

  public function delete()
  {}

}
?>