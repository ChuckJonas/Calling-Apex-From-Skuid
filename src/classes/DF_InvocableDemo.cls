public class DF_InvocableDemo {
    @InvocableMethod
    public static List<String> GetAvatar(List<Id> contactIds) {
        List<String> returnList = new List<String>();
        for(Id contactId : contactIds){
            returnList.add(DF_Gravatar.getGravatar(contactId));
        }
        return returnList;
    }
  }