package validator;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import spring3.form.User;

public class UsuarioValidator implements Validator {
    private String mensaje = "";
	/**
	 * Metodo inicial que indica la clase que será Validada
	 */
	@Override
	public boolean supports(Class<?> clazz) {
		return User.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		User admin = (User) target;
		mensaje = "";
		if(admin.getName().length()==0) {
			mensaje +="Nombre Obligatorio";
			errors.rejectValue("name", "name.required","NOMBRE MINIMO");
		}
			//errors.rejectValue("name", "name.required","NOMBRE MINIMO");
		
		
//		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password",
//				"pass.required");

//		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password",
//				"ERROR");
		//if (user.getNombre().length() == 1) {
			//errors.rejectValue("nombre", "nombre.length");
		//}
	}

	/**
	 * @return the mensaje
	 */
	public String getMensaje() {
		return mensaje;
	}

	/**
	 * @param mensaje the mensaje to set
	 */
	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}


}
