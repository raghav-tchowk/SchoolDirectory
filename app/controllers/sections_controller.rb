class SectionsController < ApplicationController

  def index
    list
    render("list")
  end


  def list
    @notes=Section.all
    @q=Section.search(params[:q])
    @notes=@q.result()
  end


  def show
    @note=Section.find(params[:id])
  end


  def new
    @note =Section.new
  end


  def create
    @note =Section.new(params[:note])
    if @note.save
      flash[:notice]="Section a/c #{@note.name} created. "
      redirect_to(:action=>"show", :id=>@note.id)
    else
      render("new")
    end
  end


  def edit
    @note=Section.find(params[:id])
  end 


  def update
    @note=Section.find(params[:id])
    if @note.update_attributes(params[:note])
      flash[:notice]="Section account #{@note.name} info updated."
      redirect_to(:action=>"show", :id=>@note.id)    
    else
      render("edit")
    end
  end


  def delete
    @note=Section.find(params[:id])
  end


  def destroy
    Section.find(params[:id]).destroy
    flash[:notice]="Section account destroyed."
    redirect_to(:action=>"list")
  end
end
