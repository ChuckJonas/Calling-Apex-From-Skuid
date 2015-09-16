@RestResource(urlMapping='/demo/*')
global class DF_RestDemo {

    @HttpPost
    global static String getGravatar(Id contactId) {
      return DF_Gravatar.getGravatar(contactId);
    }
}