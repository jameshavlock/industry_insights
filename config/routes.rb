Rails.application.routes.draw do



  # Routes for the Facility resource:

  # CREATE
  post("/insert_facility", { :controller => "facilities", :action => "create" })
          
  # READ
  get("/facilities", { :controller => "facilities", :action => "index" })
  
  get("/facilities/:path_id", { :controller => "facilities", :action => "show" })
  
  # UPDATE
  
  post("/modify_facility/:path_id", { :controller => "facilities", :action => "update" })
  
  # DELETE
  get("/delete_facility/:path_id", { :controller => "facilities", :action => "destroy" })

  #------------------------------

  # Routes for the Contact resource:

  # CREATE
  post("/insert_contact", { :controller => "contacts", :action => "create" })
          
  # READ
  get("/contacts", { :controller => "contacts", :action => "index" })
  
  get("/contacts/:path_id", { :controller => "contacts", :action => "show" })
  
  # UPDATE
  
  post("/modify_contact/:path_id", { :controller => "contacts", :action => "update" })
  
  # DELETE
  get("/delete_contact/:path_id", { :controller => "contacts", :action => "destroy" })

  #------------------------------

  # Routes for the Throughput resource:

  # CREATE
  post("/insert_throughput", { :controller => "throughputs", :action => "create" })
          
  # READ
  get("/throughputs", { :controller => "throughputs", :action => "index" })
  
  get("/throughputs/:path_id", { :controller => "throughputs", :action => "show" })
  
  # UPDATE
  
  post("/modify_throughput/:path_id", { :controller => "throughputs", :action => "update" })
  
  # DELETE
  get("/delete_throughput/:path_id", { :controller => "throughputs", :action => "destroy" })

  #------------------------------

  # Routes for the Padd resource:

  # CREATE
  post("/insert_padd", { :controller => "padds", :action => "create" })
          
  # READ
  get("/padds", { :controller => "padds", :action => "index" })
  
  get("/padds/:path_id", { :controller => "padds", :action => "show" })
  
  # UPDATE
  
  post("/modify_padd/:path_id", { :controller => "padds", :action => "update" })
  
  # DELETE
  get("/delete_padd/:path_id", { :controller => "padds", :action => "destroy" })

  #------------------------------

  # Routes for the Company resource:

  # CREATE
  post("/insert_company", { :controller => "companies", :action => "create" })
          
  # READ
  get("/companies", { :controller => "companies", :action => "index" })
  
  get("/companies/:path_id", { :controller => "companies", :action => "show" })
  
  # UPDATE
  
  post("/modify_company/:path_id", { :controller => "companies", :action => "update" })
  
  # DELETE
  get("/delete_company/:path_id", { :controller => "companies", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

end
