
package bean;

import java.io.PrintWriter;

/**
 *
 * @author Cokers
 */
public class FormBean {
    private String FName,LName,UserID,Password,RePassword,alias,CountryOfRes,City,Language,SecurityQues,SecurityAns,contactEmail, contactOther;
    public boolean isValid(){
        if(UserID.equals("") || UserID == null){
            return false;
        }else{
            return true;
        }
    }
    
    public String getContactEmail() {
        return contactEmail;
    }
    public void setContactEmail(String contactEmail) {
        this.contactEmail = contactEmail;
    }

    public String getContactOther() {
        return contactOther;
    }

    public void setContactOther(String contactOther) {
        this.contactOther = contactOther;
    }

    public String getCity() {
        return City;
    }
    public void setCity(String City) {
        this.City = City;
    }
    
    public void setFName(String s){
        FName = s;
    }
    public String getFName(){
        return this.FName;
    }
    
    public void setLName(String s){
        LName = s;
    }
    public String getLName(){
        return this.LName;
    }
    
    public void setUserID(String s){
        UserID = s;
    }
    public String getUserID(){
        return this.UserID;
    }
    
    public void setPassword(String s){
        Password = s;
    }
    public String getPasword(){
        return this.Password;
    }
    
    public void setRePassword(String s){
        RePassword = s;
    }
    public String getRePassword(){
        return this.RePassword;
    }
    
    public void setAlias(String s){
        alias = s;
    }
    public String getAlias(){
        return this.alias;
    }
    
    public void setCountryOfRes(String s){
        CountryOfRes = s;
    }
    public String getCountryOfRes(){
        return this.CountryOfRes;
    }
    
    public void setLanguage(String s){
        Language = s;
    }
    public String getLanguage(){
        return this.Language;
    }
    
    public void setSecurityQues(String s){
        SecurityQues = s;
    }
    public String getSercurityQues(){
        return this.SecurityQues;
    }
    
    public String getSecurityAns() {
        return SecurityAns;
    }
    public void setSecurityAns(String SecurityAns) {
        this.SecurityAns = SecurityAns;
    }
    
}
