/*PLEASE DO NOT EDIT THIS CODE*/
/*This code was generated using the UMPLE 1.29.1.4450.6749b7105 modeling language!*/



// line 23 "model.ump"
public class Admin
{

  //------------------------
  // MEMBER VARIABLES
  //------------------------

  //Admin Attributes
  private Int adminId;
  private String username;
  private String hashPassword;

  //------------------------
  // CONSTRUCTOR
  //------------------------

  public Admin(Int aAdminId, String aUsername, String aHashPassword)
  {
    adminId = aAdminId;
    username = aUsername;
    hashPassword = aHashPassword;
  }

  //------------------------
  // INTERFACE
  //------------------------

  public boolean setAdminId(Int aAdminId)
  {
    boolean wasSet = false;
    adminId = aAdminId;
    wasSet = true;
    return wasSet;
  }

  public boolean setUsername(String aUsername)
  {
    boolean wasSet = false;
    username = aUsername;
    wasSet = true;
    return wasSet;
  }

  public boolean setHashPassword(String aHashPassword)
  {
    boolean wasSet = false;
    hashPassword = aHashPassword;
    wasSet = true;
    return wasSet;
  }

  public Int getAdminId()
  {
    return adminId;
  }

  public String getUsername()
  {
    return username;
  }

  public String getHashPassword()
  {
    return hashPassword;
  }

  public void delete()
  {}


  public String toString()
  {
    return super.toString() + "["+
            "username" + ":" + getUsername()+ "," +
            "hashPassword" + ":" + getHashPassword()+ "]" + System.getProperties().getProperty("line.separator") +
            "  " + "adminId" + "=" + (getAdminId() != null ? !getAdminId().equals(this)  ? getAdminId().toString().replaceAll("  ","    ") : "this" : "null");
  }
}