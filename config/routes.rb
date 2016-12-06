Rails.application.routes.draw do
  devise_for :users
  root 'notes#index'

  # Routes for the Note resource:
  # CREATE
  get "/notes/new", :controller => "notes", :action => "new"
  post "/create_note", :controller => "notes", :action => "create"

  # READ
  get "/notes", :controller => "notes", :action => "index"
  get "/notes/:id", :controller => "notes", :action => "show"

  # UPDATE
  get "/notes/:id/edit", :controller => "notes", :action => "edit"
  post "/update_note/:id", :controller => "notes", :action => "update"

  # DELETE
  get "/delete_note/:id", :controller => "notes", :action => "destroy"
  #------------------------------

  # Routes for the Tagname resource:
  # CREATE
  get "/tagnames/new", :controller => "tagnames", :action => "new"
  post "/create_tagname", :controller => "tagnames", :action => "create"

  # READ
  get "/tagnames", :controller => "tagnames", :action => "index"
  get "/tagnames/:id", :controller => "tagnames", :action => "show"

  # UPDATE
  get "/tagnames/:id/edit", :controller => "tagnames", :action => "edit"
  post "/update_tagname/:id", :controller => "tagnames", :action => "update"

  # DELETE
  get "/delete_tagname/:id", :controller => "tagnames", :action => "destroy"
  #------------------------------

  # Routes for the Tag resource:
  # CREATE
  get "/tags/new", :controller => "tags", :action => "new"
  post "/create_tag", :controller => "tags", :action => "create"

  # READ
  get "/tags", :controller => "tags", :action => "index"
  get "/tags/:id", :controller => "tags", :action => "show"

  # UPDATE
  get "/tags/:id/edit", :controller => "tags", :action => "edit"
  post "/update_tag/:id", :controller => "tags", :action => "update"

  # DELETE
  get "/delete_tag/:id", :controller => "tags", :action => "destroy"
  #------------------------------

  # Routes for the View resource:
  # CREATE
  get "/views/new", :controller => "views", :action => "new"
  post "/create_view", :controller => "views", :action => "create"

  # READ
  get "/views", :controller => "views", :action => "index"
  get "/views/:id", :controller => "views", :action => "show"

  # UPDATE
  get "/views/:id/edit", :controller => "views", :action => "edit"
  post "/update_view/:id", :controller => "views", :action => "update"

  # DELETE
  get "/delete_view/:id", :controller => "views", :action => "destroy"
  #------------------------------

  # Routes for the Category resource:
  # CREATE
  get "/categories/new", :controller => "categories", :action => "new"
  post "/create_category", :controller => "categories", :action => "create"

  # READ
  get "/categories", :controller => "categories", :action => "index"
  get "/categories/:id", :controller => "categories", :action => "show"

  # UPDATE
  get "/categories/:id/edit", :controller => "categories", :action => "edit"
  post "/update_category/:id", :controller => "categories", :action => "update"

  # DELETE
  get "/delete_category/:id", :controller => "categories", :action => "destroy"
  #------------------------------


end
