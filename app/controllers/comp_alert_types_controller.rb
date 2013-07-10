class CompAlertTypesController < ApplicationController

  def index
    list
    render("list")
  end


  def list
    @notes=CompAlertType.all
    @q=CompAlertType.search(params[:q])
    @notes=@q.result()
  end


  def show
    @note=CompAlertType.find(params[:id])
  end


  def new
    @note =CompAlertType.new
  end


  def create
    @note =CompAlertType.new(params[:note])
    if @note.save
      flash[:notice]="Competition Alert #{@note.name} created. "
      redirect_to(:action=>"show", :id=>@note.id)
    else
      render("new")
    end
  end


  def edit
    @note=CompAlertType.find(params[:id])
  end 


  def update
    @note=CompAlertType.find(params[:id])
    if @note.update_attributes(params[:note])
      flash[:notice]="Competition Alert #{@note.name} info updated."
      redirect_to(:action=>"show", :id=>@note.id)    
    else
      render("edit")
    end
  end


  def delete
    @note=CompAlertType.find(params[:id])
  end


  def destroy
    CompAlertType.find(params[:id]).destroy
    flash[:notice]="Competition Alert account destroyed."
    redirect_to(:action=>"list")
  end
end
