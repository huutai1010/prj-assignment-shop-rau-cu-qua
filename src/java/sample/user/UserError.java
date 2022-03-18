/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.user;


public class UserError {
    private String userIDError;
    private String fullNameError;
    private String passswordError;
    private String roleNameError;
    private String addressError;
    private String birthDayError;
    private String phoneError;
    private String emailError;
    private String confirmError;

    public UserError() {
        this.userIDError = "";
        this.fullNameError = "";
        this.passswordError = "";
        this.roleNameError = "";
        this.addressError = "";
        this.birthDayError = "";
        this.phoneError = "";
        this.emailError = "";
        this.confirmError = "";
    }

    public UserError(String userIDError, String fullNameError, String passswordError, String roleNameError, String addressError, String birthDayError, String phoneError, String emailError, String confirmError) {
        this.userIDError = userIDError;
        this.fullNameError = fullNameError;
        this.passswordError = passswordError;
        this.roleNameError = roleNameError;
        this.addressError = addressError;
        this.birthDayError = birthDayError;
        this.phoneError = phoneError;
        this.emailError = emailError;
        this.confirmError = confirmError;
    }

    public String getConfirmError() {
        return confirmError;
    }

    public void setConfirmError(String confirmError) {
        this.confirmError = confirmError;
    }

    public String getUserIDError() {
        return userIDError;
    }

    public void setUserIDError(String userIDError) {
        this.userIDError = userIDError;
    }

    public String getFullNameError() {
        return fullNameError;
    }

    public void setFullNameError(String fullNameError) {
        this.fullNameError = fullNameError;
    }

    public String getPassswordError() {
        return passswordError;
    }

    public void setPassswordError(String passswordError) {
        this.passswordError = passswordError;
    }

    public String getRoleNameError() {
        return roleNameError;
    }

    public void setRoleNameError(String roleNameError) {
        this.roleNameError = roleNameError;
    }

    public String getAddressError() {
        return addressError;
    }

    public void setAddressError(String addressError) {
        this.addressError = addressError;
    }

    public String getBirthDayError() {
        return birthDayError;
    }

    public void setBirthDayError(String birthDayError) {
        this.birthDayError = birthDayError;
    }

    public String getPhoneError() {
        return phoneError;
    }

    public void setPhoneError(String phoneError) {
        this.phoneError = phoneError;
    }

    public String getEmailError() {
        return emailError;
    }

    public void setEmailError(String emailError) {
        this.emailError = emailError;
    }
    
    
}
