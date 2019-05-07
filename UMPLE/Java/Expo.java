/*PLEASE DO NOT EDIT THIS CODE*/
/*This code was generated using the UMPLE 1.29.1.4450.6749b7105 modeling language!*/


import java.util.*;

// line 2 "model.ump"
public class Expo
{

  //------------------------
  // MEMBER VARIABLES
  //------------------------

  //Expo Attributes
  private Int expoId;

  //Expo Associations
  private List<Stand> stands;

  //------------------------
  // CONSTRUCTOR
  //------------------------

  public Expo(Int aExpoId)
  {
    expoId = aExpoId;
    stands = new ArrayList<Stand>();
  }

  //------------------------
  // INTERFACE
  //------------------------

  public boolean setExpoId(Int aExpoId)
  {
    boolean wasSet = false;
    expoId = aExpoId;
    wasSet = true;
    return wasSet;
  }

  public Int getExpoId()
  {
    return expoId;
  }
  /* Code from template association_GetMany */
  public Stand getStand(int index)
  {
    Stand aStand = stands.get(index);
    return aStand;
  }

  public List<Stand> getStands()
  {
    List<Stand> newStands = Collections.unmodifiableList(stands);
    return newStands;
  }

  public int numberOfStands()
  {
    int number = stands.size();
    return number;
  }

  public boolean hasStands()
  {
    boolean has = stands.size() > 0;
    return has;
  }

  public int indexOfStand(Stand aStand)
  {
    int index = stands.indexOf(aStand);
    return index;
  }
  /* Code from template association_MinimumNumberOfMethod */
  public static int minimumNumberOfStands()
  {
    return 0;
  }
  /* Code from template association_AddManyToOne */
  public Stand addStand(String aStandId, String aName, Study aStudy)
  {
    return new Stand(aStandId, aName, this, aStudy);
  }

  public boolean addStand(Stand aStand)
  {
    boolean wasAdded = false;
    if (stands.contains(aStand)) { return false; }
    Expo existingExpo = aStand.getExpo();
    boolean isNewExpo = existingExpo != null && !this.equals(existingExpo);
    if (isNewExpo)
    {
      aStand.setExpo(this);
    }
    else
    {
      stands.add(aStand);
    }
    wasAdded = true;
    return wasAdded;
  }

  public boolean removeStand(Stand aStand)
  {
    boolean wasRemoved = false;
    //Unable to remove aStand, as it must always have a expo
    if (!this.equals(aStand.getExpo()))
    {
      stands.remove(aStand);
      wasRemoved = true;
    }
    return wasRemoved;
  }
  /* Code from template association_AddIndexControlFunctions */
  public boolean addStandAt(Stand aStand, int index)
  {  
    boolean wasAdded = false;
    if(addStand(aStand))
    {
      if(index < 0 ) { index = 0; }
      if(index > numberOfStands()) { index = numberOfStands() - 1; }
      stands.remove(aStand);
      stands.add(index, aStand);
      wasAdded = true;
    }
    return wasAdded;
  }

  public boolean addOrMoveStandAt(Stand aStand, int index)
  {
    boolean wasAdded = false;
    if(stands.contains(aStand))
    {
      if(index < 0 ) { index = 0; }
      if(index > numberOfStands()) { index = numberOfStands() - 1; }
      stands.remove(aStand);
      stands.add(index, aStand);
      wasAdded = true;
    } 
    else 
    {
      wasAdded = addStandAt(aStand, index);
    }
    return wasAdded;
  }

  public void delete()
  {
    for(int i=stands.size(); i > 0; i--)
    {
      Stand aStand = stands.get(i - 1);
      aStand.delete();
    }
  }


  public String toString()
  {
    return super.toString() + "["+ "]" + System.getProperties().getProperty("line.separator") +
            "  " + "expoId" + "=" + (getExpoId() != null ? !getExpoId().equals(this)  ? getExpoId().toString().replaceAll("  ","    ") : "this" : "null");
  }
}