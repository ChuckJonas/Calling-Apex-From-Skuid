public class DF_RemoteActionDemo {
    
  @RemoteAction
  public static String getGravatar(Id contactId) {
            return DF_Gravatar.getGravatar(contactId);
  }
}