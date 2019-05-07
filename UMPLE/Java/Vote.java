/*PLEASE DO NOT EDIT THIS CODE*/
/*This code was generated using the UMPLE 1.29.1.4450.6749b7105 modeling language!*/



// line 14 "model.ump"
public class Vote
{

  //------------------------
  // MEMBER VARIABLES
  //------------------------

  //Vote Attributes
  private Int voteId;
  private Int voteValue;

  //Vote Associations
  private Stand stand;
  private Visitor visitor;

  //------------------------
  // CONSTRUCTOR
  //------------------------

  public Vote(Int aVoteId, Int aVoteValue, Stand aStand, Visitor aVisitor)
  {
    voteId = aVoteId;
    voteValue = aVoteValue;
    boolean didAddStand = setStand(aStand);
    if (!didAddStand)
    {
      throw new RuntimeException("Unable to create vote due to stand");
    }
    boolean didAddVisitor = setVisitor(aVisitor);
    if (!didAddVisitor)
    {
      throw new RuntimeException("Unable to create vote due to visitor");
    }
  }

  //------------------------
  // INTERFACE
  //------------------------

  public boolean setVoteId(Int aVoteId)
  {
    boolean wasSet = false;
    voteId = aVoteId;
    wasSet = true;
    return wasSet;
  }

  public boolean setVoteValue(Int aVoteValue)
  {
    boolean wasSet = false;
    voteValue = aVoteValue;
    wasSet = true;
    return wasSet;
  }

  public Int getVoteId()
  {
    return voteId;
  }

  public Int getVoteValue()
  {
    return voteValue;
  }
  /* Code from template association_GetOne */
  public Stand getStand()
  {
    return stand;
  }
  /* Code from template association_GetOne */
  public Visitor getVisitor()
  {
    return visitor;
  }
  /* Code from template association_SetOneToMany */
  public boolean setStand(Stand aStand)
  {
    boolean wasSet = false;
    if (aStand == null)
    {
      return wasSet;
    }

    Stand existingStand = stand;
    stand = aStand;
    if (existingStand != null && !existingStand.equals(aStand))
    {
      existingStand.removeVote(this);
    }
    stand.addVote(this);
    wasSet = true;
    return wasSet;
  }
  /* Code from template association_SetOneToMany */
  public boolean setVisitor(Visitor aVisitor)
  {
    boolean wasSet = false;
    if (aVisitor == null)
    {
      return wasSet;
    }

    Visitor existingVisitor = visitor;
    visitor = aVisitor;
    if (existingVisitor != null && !existingVisitor.equals(aVisitor))
    {
      existingVisitor.removeVote(this);
    }
    visitor.addVote(this);
    wasSet = true;
    return wasSet;
  }

  public void delete()
  {
    Stand placeholderStand = stand;
    this.stand = null;
    if(placeholderStand != null)
    {
      placeholderStand.removeVote(this);
    }
    Visitor placeholderVisitor = visitor;
    this.visitor = null;
    if(placeholderVisitor != null)
    {
      placeholderVisitor.removeVote(this);
    }
  }


  public String toString()
  {
    return super.toString() + "["+ "]" + System.getProperties().getProperty("line.separator") +
            "  " + "voteId" + "=" + (getVoteId() != null ? !getVoteId().equals(this)  ? getVoteId().toString().replaceAll("  ","    ") : "this" : "null") + System.getProperties().getProperty("line.separator") +
            "  " + "voteValue" + "=" + (getVoteValue() != null ? !getVoteValue().equals(this)  ? getVoteValue().toString().replaceAll("  ","    ") : "this" : "null") + System.getProperties().getProperty("line.separator") +
            "  " + "stand = "+(getStand()!=null?Integer.toHexString(System.identityHashCode(getStand())):"null") + System.getProperties().getProperty("line.separator") +
            "  " + "visitor = "+(getVisitor()!=null?Integer.toHexString(System.identityHashCode(getVisitor())):"null");
  }
}