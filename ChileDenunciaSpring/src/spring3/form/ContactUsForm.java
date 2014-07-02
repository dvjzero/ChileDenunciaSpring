package spring3.form;


public class ContactUsForm  implements java.io.Serializable {
    private java.lang.Object contactus;

    public ContactUsForm() {
    }

    public ContactUsForm(
           java.lang.Object contactus) {
           this.contactus = contactus;
    }


    /**
     * Gets the contacts value for this ContactForm.
     * 
     * @return contacts
     */
    public java.lang.Object getContactus() {
        return contactus;
    }


    /**
     * Sets the contacts value for this ContactForm.
     * 
     * @param contacts
     */
    public void setContactus(java.lang.Object contacts) {
        this.contactus = contactus;
    }


}