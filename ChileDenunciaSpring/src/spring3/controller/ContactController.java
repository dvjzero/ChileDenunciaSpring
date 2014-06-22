package spring3.controller;
 
//import net.viralpatel.spring3.form.Contact;
import java.lang.ProcessBuilder.Redirect;
import java.rmi.RemoteException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import spring3.form.Contact;
import spring3.form.ContactForm;












import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;








import org.springframework.web.servlet.view.RedirectView;

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
import webservice.ServicioUsuarioStub.EliminarUsuario;
import webservice.ServicioUsuarioStub.EliminarUsuarioResponse;
import webservice.ServicioUsuarioStub.UsuarioVO;





 
@Controller
@SessionAttributes
public class ContactController {
 
    @RequestMapping(value = "/addContact", method = RequestMethod.POST)
    public ModelAndView addContact(@ModelAttribute("contact") @Valid  Contact contact, BindingResult result) {
         //BindingResult result, 
    	 if(result.hasErrors()) {
    		 System.out.println("ERROR");
             return new ModelAndView("contact");
         }
        System.out.println("tipo" + contact.getType() + 
                    "denuncia:" + contact.getComplaint());
        
       
        try {
        	ServicioDenunciaStub oStub = new ServicioDenunciaStub();
//        	ServicioContactoStub oStub = new ServicioContactoStub();
    		// AGREGA
        	DenunciaVO oDenunciaVO = new DenunciaVO();
        	oDenunciaVO.setTipo(contact.getType());
        	oDenunciaVO.setDenuncia(contact.getComplaint());
        	oDenunciaVO.setCiudad(contact.getCity());
        	oDenunciaVO.setSector(contact.getSector());
        	oDenunciaVO.setFecha_creacion(contact.getCreation_date());
        	oDenunciaVO.setFecha_modificacion(contact.getModified_date());
        	oDenunciaVO.setUsuario_creador(contact.getUsers_creator());
        	oDenunciaVO.setUsuario_modificador(contact.getUsers_modifies());
        	oDenunciaVO.setFecha_usuario_modifica(contact.getModification_date());
        	oDenunciaVO.setDesactivar(contact.getOff());
        	
//    		ContactoVO oContactoVO = new ContactoVO();
//    		oContactoVO.setNombre(contact.getFirstname());
//    		oContactoVO.setApellido(contact.getLastname());
//    		oContactoVO.setMail(contact.getEmail());
//    		oContactoVO.setTelefono(contact.getTelephone());
    		
        	AgregarDenuncia oAgregarDenuncia = new AgregarDenuncia();
        	oAgregarDenuncia.setODenunciaVO(oDenunciaVO);
        	AgregarDenunciaResponse objResponse = oStub.agregarDenuncia(oAgregarDenuncia);
        	String mensaje = objResponse.get_return();
        	
        	System.out.println(mensaje);
        	return new ModelAndView("saludo", "message", mensaje);
        	
        	
//    		AgregarContacto oAgregarContacto = new AgregarContacto();
//    		oAgregarContacto.setOContactoVO(oContactoVO);
//    		AgregarContactoResponse objResponse = oStub.agregarContacto(oAgregarContacto);
//    		String mensaje = objResponse.get_return();
//
//		        System.out.println(mensaje);
//				return new ModelAndView("saludo", "message", mensaje);
		} catch (RemoteException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

			return new ModelAndView("error", "message", "ERROR");
		}
         
        //return "redirect:contacts.html";
        
    }
     
    @RequestMapping("/contacts")
    public ModelAndView showContacts() {
         

    	ModelAndView obj = new ModelAndView("contact", "command", new Contact());
    	Map referenceData = new HashMap();
		
		Map<String,String> type = new LinkedHashMap<String,String>();
		type.put("Accidente", "Accidente");
		type.put("Asalto", "Asalto");
		type.put("Atención público", "Atención público");
		type.put("Basura", "Basura");
		type.put("Desórdenes", "Desórdenes");
		type.put("Narcotráfico", "Narcotráfico");
		type.put("Robo", "Robo");
		type.put("Vial", "Vial");
		
		referenceData.put("typeList", type);
    	obj.addAllObjects(referenceData);
        return  obj;
    }
    
    @RequestMapping("/show")
	public ModelAndView helloWorld() {
    	//String message = "Hola Mundo Spring se ha instaldo correctamente";
    	 List<Contact> contacts = new ArrayList<Contact>();
    	 

    	    
    	 ContactForm contactForm = new ContactForm();
         
         try {
        	ServicioDenunciaStub oStub = new ServicioDenunciaStub();
        	MostrarDenuncia oMostrarDenuncia = new MostrarDenuncia();
        	
        	MostrarDenunciaResponse objResponse = oStub.mostrarDenuncia(oMostrarDenuncia);
        	DenunciaVO[] contacts2 = objResponse.get_return();
        	
//     		ServicioContactoStub oStub = new ServicioContactoStub();
//        	 MostrarContacto oMostrarContacto = new MostrarContacto();
//     		
//     		MostrarContactoResponse objResponde =  oStub.mostrarContacto(oMostrarContacto);
//     		ContactoVO[] contacts2= objResponde.get_return();
     		
			 contactForm.setContacts(contacts2);
	         return new ModelAndView("showcontactrow" , "contactForm", contactForm);
	         
		} catch (RemoteException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

			return new ModelAndView("error", "message", "ERROR");
		}
        
	}
    
    
    
    
	@RequestMapping("/buscar")
    public ModelAndView buscar(@ModelAttribute("command")@Valid Contact contact){
 ContactForm contactForm = new ContactForm();
         
         try {
        	 ServicioDenunciaStub oStub = new ServicioDenunciaStub();

        	// MostrarClientes oMostrarContacto = new MostrarClientes();
        	 DenunciaVO denuncia = new DenunciaVO();
        	 String a = denuncia.getUsuario_creador();

        	 denuncia.setUsuario_creador(contact.getUsers_creator());

        	 if(a==""){
        		 String mensaje1="Tiene que llenar un campo ";
        		 return new ModelAndView("buscar" , "message", mensaje1);
        		 
        	 }else{
             denuncia.setUsuario_creador(contact.getUsers_creator());
             
             System.out.println(contact.getUsers_creator());

        	 
        	 FiltrarDenuncia  oFiltrarDenuncia = new FiltrarDenuncia();
        	 oFiltrarDenuncia.setUsuario_creador(contact.getUsers_creator());
        	
        	 System.out.println("llega aca");
        	FiltrarDenunciaResponse oResponse = oStub.filtrarDenuncia(oFiltrarDenuncia);
        	DenunciaVO[] contacts2 = oResponse.get_return();

     		System.out.println("llega aca 2");
			 contactForm.setContacts(contacts2);
	         return new ModelAndView("showBusqueda" , "contactForm", contactForm);
        	 }
		} catch (RemoteException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

			return new ModelAndView("error", "message", "ERROR");
			
		}
    }
	
   
    

}