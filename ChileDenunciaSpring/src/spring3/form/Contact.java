/**
 * Contact.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package spring3.form;

public class Contact implements java.io.Serializable {
	 
    private java.lang.String type;
  
    private java.lang.String complaint;
 
    private java.lang.String city;
    
    private java.lang.String sector;
    
    private java.lang.String creation_date;
    
    private java.lang.String modified_date;

    private java.lang.String users_creator;
    
    private java.lang.String users_modifies;
    
    private java.lang.String modification_date;
    
    private java.lang.String off;

	public Contact() {
		super();
	}

	public Contact(String type, String complaint, String city, String sector,
			String creation_date, String modified_date, String users_creator,
			String users_modifies, String modification_date, String off) {
		super();
		this.type = type;
		this.complaint = complaint;
		this.city = city;
		this.sector = sector;
		this.creation_date = creation_date;
		this.modified_date = modified_date;
		this.users_creator = users_creator;
		this.users_modifies = users_modifies;
		this.modification_date = modification_date;
		this.off = off;
	}

	/**
	 * @return the type
	 */
	public java.lang.String getType() {
		return type;
	}

	/**
	 * @param type the type to set
	 */
	public void setType(java.lang.String type) {
		this.type = type;
	}

	/**
	 * @return the complaint
	 */
	public java.lang.String getComplaint() {
		return complaint;
	}

	/**
	 * @param complaint the complaint to set
	 */
	public void setComplaint(java.lang.String complaint) {
		this.complaint = complaint;
	}

	/**
	 * @return the city
	 */
	public java.lang.String getCity() {
		return city;
	}

	/**
	 * @param city the city to set
	 */
	public void setCity(java.lang.String city) {
		this.city = city;
	}

	/**
	 * @return the sector
	 */
	public java.lang.String getSector() {
		return sector;
	}

	/**
	 * @param sector the sector to set
	 */
	public void setSector(java.lang.String sector) {
		this.sector = sector;
	}

	/**
	 * @return the creation_date
	 */
	public java.lang.String getCreation_date() {
		return creation_date;
	}

	/**
	 * @param creation_date the creation_date to set
	 */
	public void setCreation_date(java.lang.String creation_date) {
		this.creation_date = creation_date;
	}

	/**
	 * @return the modified_date
	 */
	public java.lang.String getModified_date() {
		return modified_date;
	}

	/**
	 * @param modified_date the modified_date to set
	 */
	public void setModified_date(java.lang.String modified_date) {
		this.modified_date = modified_date;
	}

	/**
	 * @return the users_creator
	 */
	public java.lang.String getUsers_creator() {
		return users_creator;
	}

	/**
	 * @param users_creator the users_creator to set
	 */
	public void setUsers_creator(java.lang.String users_creator) {
		this.users_creator = users_creator;
	}

	/**
	 * @return the users_modifies
	 */
	public java.lang.String getUsers_modifies() {
		return users_modifies;
	}

	/**
	 * @param users_modifies the users_modifies to set
	 */
	public void setUsers_modifies(java.lang.String users_modifies) {
		this.users_modifies = users_modifies;
	}

	/**
	 * @return the modification_date
	 */
	public java.lang.String getModification_date() {
		return modification_date;
	}

	/**
	 * @param modification_date the modification_date to set
	 */
	public void setModification_date(java.lang.String modification_date) {
		this.modification_date = modification_date;
	}

	/**
	 * @return the off
	 */
	public java.lang.String getOff() {
		return off;
	}

	/**
	 * @param off the off to set
	 */
	public void setOff(java.lang.String off) {
		this.off = off;
	}
    
    
   

}
