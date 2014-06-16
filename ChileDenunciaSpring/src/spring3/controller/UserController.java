package spring3.controller;
 
//import net.viralpatel.spring3.form.Contact;
import java.rmi.RemoteException;
import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;



import spring3.form.User;
import spring3.form.UserForm;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;



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


import webservice.ServicioUsuarioStub;
import webservice.ServicioUsuarioStub.AgregarUsuario;
import webservice.ServicioUsuarioStub.AgregarUsuarioResponse;
import webservice.ServicioUsuarioStub.UsuarioVO;
import webservice.ServicioUsuarioStub.MostrarUsuario;
import webservice.ServicioUsuarioStub.MostrarUsuarioResponse;
import webservice.ServicioUsuarioStub.EliminarUsuario;
import webservice.ServicioUsuarioStub.EliminarUsuarioResponse;
import webservice.ServicioUsuarioStub.FiltrarUsuario;
import webservice.ServicioUsuarioStub.FiltrarUsuarioResponse;



 
@Controller
@SessionAttributes
public class UserController {
 
    @RequestMapping(value = "/addUser", method = RequestMethod.POST)
    public ModelAndView addUser(@ModelAttribute("user") @Valid  User user, BindingResult result) {
         //BindingResult result, 
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
     
    @RequestMapping("/users")
    public ModelAndView showUsers() {
         
        return new ModelAndView("user", "command", new User());
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

}