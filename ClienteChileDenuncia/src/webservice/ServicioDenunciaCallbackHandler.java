
/**
 * ServicioDenunciaCallbackHandler.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:33:49 IST)
 */

    package webservice;

    /**
     *  ServicioDenunciaCallbackHandler Callback class, Users can extend this class and implement
     *  their own receiveResult and receiveError methods.
     */
    public abstract class ServicioDenunciaCallbackHandler{



    protected Object clientData;

    /**
    * User can pass in any object that needs to be accessed once the NonBlocking
    * Web service call is finished and appropriate method of this CallBack is called.
    * @param clientData Object mechanism by which the user can pass in user data
    * that will be avilable at the time this callback is called.
    */
    public ServicioDenunciaCallbackHandler(Object clientData){
        this.clientData = clientData;
    }

    /**
    * Please use this constructor if you don't want to set any clientData
    */
    public ServicioDenunciaCallbackHandler(){
        this.clientData = null;
    }

    /**
     * Get the client data
     */

     public Object getClientData() {
        return clientData;
     }

        
           /**
            * auto generated Axis2 call back method for eliminarDenuncia method
            * override this method for handling normal response from eliminarDenuncia operation
            */
           public void receiveResulteliminarDenuncia(
                    webservice.ServicioDenunciaStub.EliminarDenunciaResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from eliminarDenuncia operation
           */
            public void receiveErroreliminarDenuncia(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for mostrarDenuncia method
            * override this method for handling normal response from mostrarDenuncia operation
            */
           public void receiveResultmostrarDenuncia(
                    webservice.ServicioDenunciaStub.MostrarDenunciaResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from mostrarDenuncia operation
           */
            public void receiveErrormostrarDenuncia(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for filtrarDenuncia method
            * override this method for handling normal response from filtrarDenuncia operation
            */
           public void receiveResultfiltrarDenuncia(
                    webservice.ServicioDenunciaStub.FiltrarDenunciaResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from filtrarDenuncia operation
           */
            public void receiveErrorfiltrarDenuncia(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for agregarDenuncia method
            * override this method for handling normal response from agregarDenuncia operation
            */
           public void receiveResultagregarDenuncia(
                    webservice.ServicioDenunciaStub.AgregarDenunciaResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from agregarDenuncia operation
           */
            public void receiveErroragregarDenuncia(java.lang.Exception e) {
            }
                


    }
    