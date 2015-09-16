global class DF_WebserviceDemo {
  webservice static String getGravatar(Id contactId) {
      return DF_Gravatar.getGravatar(contactId);
    }
}