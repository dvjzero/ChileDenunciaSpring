
/**
 * ServicioUsuarioCallbackHandler.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:33:49 IST)
 */

    package webservice;

    /**
     *  ServicioUsuarioCallbackHandler Callback class, Users can extend this class and implement
     *  their own receiveResult and receiveError methods.
     */
    public abstract class ServicioUsuarioCallbackHandler{



    protected Object clientData;

    /**
    * User can pass in any object that needs to be accessed once the NonBlocking
    * Web service call is finished and appropriate method of this CallBack is called.
    * @param clientData Object mechanism by which the user can pass in user data
    * that will be avilable at the time this callback is called.
    */
    public ServicioUsuarioCallbackHandler(Object clientData){
        this.clientData = clientData;
    }

    /**
    * Please use this constructor if you don't want to set any clientData
    */
    public ServicioUsuarioCallbackHandler(){
        this.clientData = null;
    }

    /**
     * Get the client data
     */

     public Object getClientData() {
        return clientData;
     }

        
           /**
            * auto generated Axis2 call back method for mostrarUsuario method
            * override this method for handling normal response from mostrarUsuario operation
            */
           public void receiveResultmostrarUsuario(
                    webservice.ServicioUsuarioStub.MostrarUsuarioResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from mostrarUsuario operation
           */
            public void receiveErrormostrarUsuario(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for filtrarUsuario method
            * override this method for handling normal response from filtrarUsuario operation
            */
           public void receiveResultfiltrarUsuario(
                    webservice.ServicioUsuarioStub.FiltrarUsuarioResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from filtrarUsuario operation
           */
            public void receiveErrorfiltrarUsuario(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for agregarUsuario method
            * override this method for handling normal response from agregarUsuario operation
            */
           public void receiveResultagregarUsuario(
                    webservice.ServicioUsuarioStub.AgregarUsuarioResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from agregarUsuario operation
           */
            public void receiveErroragregarUsuario(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for eliminarUsuario method
            * override this method for handling normal response from eliminarUsuario operation
            */
           public void receiveResulteliminarUsuario(
                    webservice.ServicioUsuarioStub.EliminarUsuarioResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from eliminarUsuario operation
           */
            public void receiveErroreliminarUsuario(java.lang.Exception e) {
            }
                


    }
    