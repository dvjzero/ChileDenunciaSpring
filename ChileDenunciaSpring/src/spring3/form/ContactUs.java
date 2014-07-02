package spring3.form;



	
	public class ContactUs implements java.io.Serializable {
		 
	    /**
		 * 
		 */
		private static final long serialVersionUID = 1L;

		private java.lang.String name;
	  
	    private java.lang.String mail;
	 
	    private java.lang.String subject;
	    
	    private java.lang.String message;

		public ContactUs() {
			super();
		}

		public ContactUs(String name, String mail, String subject,
				String message) {
			super();
			this.name = name;
			this.mail = mail;
			this.subject = subject;
			this.message = message;
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
		 * @return the subject
		 */
		public java.lang.String getSubject() {
			return subject;
		}

		/**
		 * @param subject the subject to set
		 */
		public void setSubject(java.lang.String subject) {
			this.subject = subject;
		}

		/**
		 * @return the message
		 */
		public java.lang.String getMessage() {
			return message;
		}

		/**
		 * @param message the message to set
		 */
		public void setMessage(java.lang.String message) {
			this.message = message;
		}


	    
	}
	
