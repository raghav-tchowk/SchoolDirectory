class SubjectsController < ApplicationController

  def index
    list
    render("list")
  end


  def list
    @notes=Subject.all
    @q=Subject.search(params[:q])
    @notes=@q.result()
  end


  def show
    @note=Subject.find(params[:id])
  end


  def new
    @note =Subject.new
  end


  def create
    @note =Subject.new(params[:note])
    if @note.save
      flash[:notice]="Subject #{@note.name} created. "
      redirect_to(:action=>"show", :id=>@note.id)
    else
      render("new")
    end
  end


  def edit
    @note=Subject.find(params[:id])
  end 


  def update
    @note=Subject.find(params[:id])
    if @note.update_attributes(params[:note])
      flash[:notice]="Subject account #{@note.name} info updated."
      redirect_to(:action=>"show", :id=>@note.id)    
    else
      render("edit")
    end
  end


  def delete
    @note=Subject.find(params[:id])
  end


  def destroy
    Subject.find(params[:id]).destroy
    flash[:notice]="Subject account destroyed."
    redirect_to(:action=>"list")
  end
end
