public class DF_Gravatar {
  public static String getGravatar(String contactId) {
        Contact c = [SELECT Email FROM Contact WHERE Id = :contactId LIMIT 1];
        if(String.isEmpty(c.Email)){
            throw new GravatarException('Must Set Email to retrieve Gravatar');
        }
        String emailMD5 = EncodingUtil.convertToHex(Crypto.generateDigest('MD5', Blob.valueOf(c.Email)));
        String gravatarURL = 'https://www.gravatar.com/avatar/' + emailMD5 + '?s=200';
        return gravatarURL;
  }
    public class GravatarException extends Exception{}
}