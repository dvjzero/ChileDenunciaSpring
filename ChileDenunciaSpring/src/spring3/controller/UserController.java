package spring3.controller;
 
//import net.viralpatel.spring3.form.Contact;
import java.rmi.RemoteException;
import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import spring3.form.User;
import spring3.form.UserForm;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import validator.UsuarioValidator;
import webservice.ServicioUsuarioStub;
import webservice.ServicioUsuarioStub.AgregarUsuario;
import webservice.ServicioUsuarioStub.AgregarUsuarioResponse;
import webservice.ServicioUsuarioStub.LoginUsuario;
import webservice.ServicioUsuarioStub.LoginUsuarioResponse;
import webservice.ServicioUsuarioStub.UsuarioVO;
import webservice.ServicioUsuarioStub.MostrarUsuario;
import webservice.ServicioUsuarioStub.MostrarUsuarioResponse;
import webservice.ServicioUsuarioStub.EliminarUsuario;
import webservice.ServicioUsuarioStub.EliminarUsuarioResponse;
//import webservice.ServicioUsuarioStub.FiltrarUsuario;
//import webservice.ServicioUsuarioStub.FiltrarUsuarioResponse;
import webservice.ServicioDenunciaStub;
import webservice.ServicioDenunciaStub.AgregarDenuncia;
import webservice.ServicioDenunciaStub.AgregarDenunciaResponse;
import webservice.ServicioDenunciaStub.DenunciaVO;
import webservice.ServicioDenunciaStub.MostrarDenuncia;
import webservice.ServicioDenunciaStub.MostrarDenunciaResponse;
import webservice.ServicioDenunciaStub.EliminarDenuncia;
import webservice.ServicioDenunciaStub.EliminarDenunciaResponse;
import webservice.ServicioDenunciaStub.FiltrarDenuncia;
import webservice.ServicioDenunciaStub.FiltrarDenunciaResponse;




 
@Controller
@SessionAttributes
public class UserController {
	private UsuarioValidator userValidator;
	
	/**
	 * @return the userValidator
	 */
	public UsuarioValidator getUserValidator() {
		return userValidator;
	}

	/**
	 * @param userValidator the userValidator to set
	 */
	public void setUserValidator(UsuarioValidator userValidator) {
		this.userValidator = userValidator;
	}

	@Autowired
    public UserController(UsuarioValidator userValidator) {
		
		this.userValidator = userValidator;
	}

	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
    public ModelAndView addUser(@ModelAttribute("user") @Valid  User user, BindingResult result, Model model) {
         //BindingResult result, 
	
		userValidator.validate(user, result);
		
		
		if (result.hasErrors()) {
			String mensaje="Alguno de los datos esta mal ingresado."
					+ "<br>Por ejemplo puede que haya ingresado letras en vez de numeros.";
			
			System.out.println("ERROR");
			//return new ModelAndView("mensaje", "message", mensaje);
			ModelAndView oTemp = new  ModelAndView("user");
			oTemp.addObject("administrador", user);
			oTemp.addObject("message", userValidator.getMensaje());
			
//			return new ModelAndView("user", "command", new User());
			oTemp.addObject("errors",result.getFieldErrors());
			System.out.println("ERROR ;) "+result.getFieldErrors());
			return oTemp;
		}
    	 if(result.hasErrors()) {
    		 System.out.println("ERROR");
             return new ModelAndView("contact");
         }
        System.out.println("nombre" + user.getName() + 
                    "mail:" + user.getMail());
        
        
       
        try {
        	ServicioUsuarioStub oStub = new ServicioUsuarioStub();
        	

    		// AGREGA
        	UsuarioVO oUsuarioVO = new UsuarioVO();
        	oUsuarioVO.setNombre(user.getName());
        	oUsuarioVO.setClave(user.getPassword());
        	oUsuarioVO.setCiudad(user.getCity());
        	oUsuarioVO.setSector(user.getSector());
        	oUsuarioVO.setMail(user.getMail());
//        	oUsuarioVO.setDesactivar(user.getOff());

        	AgregarUsuario oAgregarUsuario = new AgregarUsuario();
        	oAgregarUsuario.setOUsuarioVO(oUsuarioVO);
        	AgregarUsuarioResponse objResponse = oStub.agregarUsuario(oAgregarUsuario);
        	
    		
        	

        	String mensaje = objResponse.get_return();
        	
        	System.out.println(mensaje);
        	return new ModelAndView("saludo", "message", mensaje);
        	
 
		} catch (RemoteException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

			return new ModelAndView("error", "message", "ERROR");
		}
         
        //return "redirect:contacts.html";
        
    }
    
    @RequestMapping("/about")
    public ModelAndView quienesSomos() {
         
        return new ModelAndView("about");
    }
    
    @RequestMapping("/authorities")
    public ModelAndView relAuthorities() {
         
        return new ModelAndView("authorities");
    }
    
    @RequestMapping("/contactus")
    public ModelAndView regContactus() {
         
        return new ModelAndView("contactus");
    }
    
    @RequestMapping("/stats")
    public ModelAndView cargaEstad() {
         
        return new ModelAndView("stats");
    }
    
    @RequestMapping("/howto")
    public ModelAndView usoSitio() {
         
        return new ModelAndView("howto");
    }
    
    
    @RequestMapping("/reguser")
    public ModelAndView agregaUsuario() {
         
        return new ModelAndView("reguser");
    }

     
    @RequestMapping("/users")
    public ModelAndView showUsers() {
         
        return new ModelAndView("user", "administrador", new User());
    }
    
    @RequestMapping("/showuser")
	public ModelAndView helloWorld() {
    	//String message = "Hola Mundo Spring se ha instaldo correctamente";
    	 List<User> contacts = new ArrayList<User>();
    	 

    	    
    	 UserForm userForm = new UserForm();
         
         try {
        	 
        	
        	ServicioUsuarioStub oStub = new ServicioUsuarioStub();
        	MostrarUsuario oMostrarUsuario = new MostrarUsuario();
        	
        	MostrarUsuarioResponse objResponse = oStub.mostrarUsuario(oMostrarUsuario);
        	UsuarioVO[] contacts2 = objResponse.get_return();
        	
//        	ServicioDenunciaStub oStub = new ServicioDenunciaStub();
//        	MostrarDenuncia oMostrarDenuncia = new MostrarDenuncia();
//        	
//        	MostrarDenunciaResponse objResponse = oStub.mostrarDenuncia(oMostrarDenuncia);
//        	DenunciaVO[] contacts2 = objResponse.get_return();
        	
//     		ServicioContactoStub oStub = new ServicioContactoStub();
//        	 MostrarContacto oMostrarContacto = new MostrarContacto();
//     		
//     		MostrarContactoResponse objResponde =  oStub.mostrarContacto(oMostrarContacto);
//     		ContactoVO[] contacts2= objResponde.get_return();
     		
        	
        	
			 userForm.setUsers(contacts2);
	         return new ModelAndView("showuserrow" , "userForm", userForm);
	         
		} catch (RemoteException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

			return new ModelAndView("error", "message", "ERROR");
		}
        
	}
    @RequestMapping(value="/deleteContact",method =RequestMethod.POST)
    public RedirectView eliminarContacto(@RequestParam String id){
    	
    	try{
    		
    		ServicioUsuarioStub ostub = new ServicioUsuarioStub();
    		EliminarUsuario oeliminar = new EliminarUsuario();
    		oeliminar.setId(Integer.parseInt(id));
    		System.out.println(id);
    		EliminarUsuarioResponse usuarioResponse = ostub.eliminarUsuario(oeliminar);
    		String mensaje = usuarioResponse.get_return();
    		System.out.println(mensaje);
    		
    		
    		
    		
    		
    	}catch(RemoteException e){
    		
    		e.printStackTrace();
    	}
    	return new RedirectView("showuser.html");
    	
    }
    @RequestMapping("/login")
    public ModelAndView loginUser() {
         
        return new ModelAndView("login", "command", new User());
    }
    @RequestMapping(value="/loginUser",method = RequestMethod.POST)
    public ModelAndView loginUsuario(@ModelAttribute("user") @Valid  User user){
    	
    	try{
    		ServicioUsuarioStub ostub = new ServicioUsuarioStub();
    		LoginUsuario login = new LoginUsuario();
    	    UsuarioVO usuario = new UsuarioVO();
    	    usuario.setNombre(user.getName());
    	    usuario.setClave(user.getPassword());
    	    login.setUsuario(usuario);
    	    LoginUsuarioResponse response = ostub.loginUsuario(login);
    	    String mensaje = response.get_return();
    	    System.out.println(mensaje);
    		
    		
    		
    		
    	
    	return new ModelAndView("index","mensaje","message");
        
	} catch (RemoteException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();

		return new ModelAndView("error", "message", "ERROR");
	}
}
}