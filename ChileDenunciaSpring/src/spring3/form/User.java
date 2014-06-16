package spring3.form;

public class User implements java.io.Serializable{

	
	private java.lang.String name;
	private java.lang.String password;
	private java.lang.String city;
	private java.lang.String sector;
	private java.lang.String mail;
	private java.lang.Integer off;
	public User() {
		super();
	}
	public User(String name, String password, String city, String sector,
			String mail, Integer off) {
		super();
		this.name = name;
		this.password = password;
		this.city = city;
		this.sector = sector;
		this.mail = mail;
		this.off = off;
	}
	/**
	 * @return the name
	 */
	public java.lang.String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(java.lang.String name) {
		this.name = name;
	}
	/**
	 * @return the password
	 */
	public java.lang.String getPassword() {
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(java.lang.String password) {
		this.password = password;
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
	 * @return the mail
	 */
	public java.lang.String getMail() {
		return mail;
	}
	/**
	 * @param mail the mail to set
	 */
	public void setMail(java.lang.String mail) {
		this.mail = mail;
	}
	/**
	 * @return the off
	 */
	public java.lang.Integer getOff() {
		return off;
	}
	/**
	 * @param off the off to set
	 */
	public void setOff(java.lang.Integer off) {
		this.off = off;
	}
	
	
	
}
