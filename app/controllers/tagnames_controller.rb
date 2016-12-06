class TagnamesController < ApplicationController
  def index
    @tagnames = Tagname.all

    render("tagnames/index.html.erb")
  end

  def show
    @tagname = Tagname.find(params[:id])

    render("tagnames/show.html.erb")
  end

  def new
    @tagname = Tagname.new

    render("tagnames/new.html.erb")
  end

  def create
    @tagname = Tagname.new

    @tagname.parent_id = params[:parent_id]
    @tagname.name = params[:name]

    save_status = @tagname.save

    if save_status == true
      redirect_to("/tagnames/#{@tagname.id}", :notice => "Tagname created successfully.")
    else
      render("tagnames/new.html.erb")
    end
  end

  def edit
    @tagname = Tagname.find(params[:id])

    render("tagnames/edit.html.erb")
  end

  def update
    @tagname = Tagname.find(params[:id])

    @tagname.parent_id = params[:parent_id]
    @tagname.name = params[:name]

    save_status = @tagname.save

    if save_status == true
      redirect_to("/tagnames/#{@tagname.id}", :notice => "Tagname updated successfully.")
    else
      render("tagnames/edit.html.erb")
    end
  end

  def destroy
    @tagname = Tagname.find(params[:id])

    @tagname.destroy

    if URI(request.referer).path == "/tagnames/#{@tagname.id}"
      redirect_to("/", :notice => "Tagname deleted.")
    else
      redirect_to(:back, :notice => "Tagname deleted.")
    end
  end
end
