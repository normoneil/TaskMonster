class NotesController < ApplicationController
  def index
    @notes = Note.all

    render("notes/index.html.erb")
  end

  def show
    @note = Note.find(params[:id])

    render("notes/show.html.erb")
  end

  def new
    @note = Note.new

    render("notes/new.html.erb")
  end

  def create
    @note = Note.new

    @note.parent_id = params[:parent_id]
    @note.title = params[:title]
    @note.body = params[:body]
    @note.user_id = params[:user_id]
    @note.category_id = params[:category_id]
    @note.view_id = params[:view_id]

    save_status = @note.save

    if save_status == true
      redirect_to("/notes/#{@note.id}", :notice => "Note created successfully.")
    else
      render("notes/new.html.erb")
    end
  end

  def edit
    @note = Note.find(params[:id])

    render("notes/edit.html.erb")
  end

  def update
    @note = Note.find(params[:id])

    @note.parent_id = params[:parent_id]
    @note.title = params[:title]
    @note.body = params[:body]
    @note.user_id = params[:user_id]
    @note.category_id = params[:category_id]
    @note.view_id = params[:view_id]

    save_status = @note.save

    if save_status == true
      redirect_to("/notes/#{@note.id}", :notice => "Note updated successfully.")
    else
      render("notes/edit.html.erb")
    end
  end

  def destroy
    @note = Note.find(params[:id])

    @note.destroy

    if URI(request.referer).path == "/notes/#{@note.id}"
      redirect_to("/", :notice => "Note deleted.")
    else
      redirect_to(:back, :notice => "Note deleted.")
    end
  end
end
