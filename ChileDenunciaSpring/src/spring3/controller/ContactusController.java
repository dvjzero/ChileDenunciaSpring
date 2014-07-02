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

import spring3.form.ContactUs;
import spring3.form.ContactUsForm;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;



import org.springframework.web.servlet.view.RedirectView;











import webservice.ServicioContactanosStub;
import webservice.ServicioDenunciaStub;
import webservice.ServicioContactanosStub.*;
import webservice.ServicioDenunciaStub.DenunciaVO;
import webservice.ServicioDenunciaStub.MostrarDenuncia;
import webservice.ServicioDenunciaStub.MostrarDenunciaResponse;




@Controller
@SessionAttributes
public class ContactusController {

	
    @RequestMapping(value = "/addContactus", method = RequestMethod.POST)
    public ModelAndView addContactus(@ModelAttribute("contactus") @Valid  ContactUs contactus, BindingResult result) {
         //BindingResult result, 
    	 if(result.hasErrors()) {
    		 System.out.println("ERROR");
             return new ModelAndView("contactus");
         }
        System.out.println("nombre" + contactus.getName() + 
                    "mensaje:" + contactus.getMessage());
        
       
        try {
        	ServicioContactanosStub oStub  =new ServicioContactanosStub();

    		// AGREGA
        	ContactanosVO oContactanosVO = new ContactanosVO();
        	oContactanosVO.setNombre(contactus.getName());
        	oContactanosVO.setCorreo(contactus.getMail());
        	oContactanosVO.setAsunto(contactus.getSubject());
        	
        	oContactanosVO.setMensaje(contactus.getMessage());
        
        	AgregarContactanos oAgregarContactanos = new AgregarContactanos();
        	oAgregarContactanos.setOContactanosVO(oContactanosVO);
        	AgregarContactanosResponse objResponse = oStub.agregarContactanos(oAgregarContactanos);
        	

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
    
    @RequestMapping("/contactanos")
    public ModelAndView showContactanos() {
         

    	ModelAndView obj = new ModelAndView("contactus", "command", new ContactUs());
    	Map referenceData = new HashMap();
		
		Map<String,String> subject = new LinkedHashMap<String,String>();
		subject.put("Atención al Cliente", "Atención al Cliente");
		subject.put("Soporte Técnico", "Soporte Técnico");
		subject.put("Sugerencias", "Sugerencias");
		
		referenceData.put("subjectList", subject);
    	obj.addAllObjects(referenceData);
        return  obj;
    }
	
	
	
//    
//    @RequestMapping("/showcontacus")
//	public ModelAndView mostrarcontactus() {
//    	//String message = "Hola Mundo Spring se ha instaldo correctamente";
//    	 List<Contact> contacts = new ArrayList<Contact>();
//    	 
//
//    	    
//    	 ContactForm contactForm = new ContactForm();
//         
//         try {
//        	ServicioDenunciaStub oStub = new ServicioDenunciaStub();
//        	MostrarDenuncia oMostrarDenuncia = new MostrarDenuncia();
//        	
//        	MostrarDenunciaResponse objResponse = oStub.mostrarDenuncia(oMostrarDenuncia);
//        	DenunciaVO[] contacts2 = objResponse.get_return();
//        	
////     		ServicioContactoStub oStub = new ServicioContactoStub();
////        	 MostrarContacto oMostrarContacto = new MostrarContacto();
////     		
////     		MostrarContactoResponse objResponde =  oStub.mostrarContacto(oMostrarContacto);
////     		ContactoVO[] contacts2= objResponde.get_return();
//     		
//			 contactForm.setContacts(contacts2);
//	         return new ModelAndView("showcontactrow" , "contactForm", contactForm);
//	         
//		} catch (RemoteException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//
//			return new ModelAndView("error", "message", "ERROR");
//		}
//        
//	}
    
    
    
    
    
	
	
}
