class ViewsController < ApplicationController
  def index
    @views = View.all

    render("views/index.html.erb")
  end

  def show
    @view = View.find(params[:id])

    render("views/show.html.erb")
  end

  def new
    @view = View.new

    render("views/new.html.erb")
  end

  def create
    @view = View.new
    @view.name = params[:name]
    save_status = @view.save

    if save_status == true
      redirect_to("/views/", :notice => "View created successfully.")
    else
      render("views/new.html.erb")
    end
  end

  def edit
    @view = View.find(params[:id])

    render("views/edit.html.erb")
  end

  def update
    @view = View.find(params[:id])

    @view.name = params[:name]

    save_status = @view.save

    if save_status == true
      redirect_to("/views/#{@view.id}", :notice => "View updated successfully.")
    else
      render("views/edit.html.erb")
    end
  end

  def destroy
    @view = View.find(params[:id])
    if @view.notes.count != 0
      redirect_to("/views", :notice => "Cannot delete: a Note exists in this view!")
    else
      @view.destroy

      if URI(request.referer).path == "/views/#{@view.id}"
        redirect_to("/", :notice => "View deleted.")
      else
        redirect_to(:back, :notice => "View deleted.")
      end
    end
  end
end
