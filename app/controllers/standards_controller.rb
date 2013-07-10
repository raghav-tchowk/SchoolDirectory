class StandardsController < ApplicationController

  def index
    list
    render("list")
  end


  def list
    @notes=Standard.all
    @q=Standard.search(params[:q])
    @notes=@q.result()
  end


  def show
    @note=Standard.find(params[:id])
  end


  def new
    @note =Standard.new
  end


  def create
    @note =Standard.new(params[:note])
    if @note.save
      flash[:notice]="Standard #{@note.name} created. "
      redirect_to(:action=>"show", :id=>@note.id)
    else
      render("new")
    end
  end


  def edit
    @note=Standard.find(params[:id])
  end 


  def update
    @note=Standard.find(params[:id])
    if @note.update_attributes(params[:note])
      flash[:notice]="Standard account #{@note.name} info updated."
      redirect_to(:action=>"show", :id=>@note.id)    
    else
      render("edit")
    end
  end


  def delete
    @note=Standard.find(params[:id])
  end


  def destroy
    Standard.find(params[:id]).destroy
    flash[:notice]="Standard account destroyed."
    redirect_to(:action=>"list")
  end
end
