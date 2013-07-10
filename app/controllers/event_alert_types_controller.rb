class EventAlertTypesController < ApplicationController

  def index
    list
    render("list")
  end


  def list
    @notes=EventAlertType.all
    @q=EventAlertType.search(params[:q])
    @notes=@q.result()
  end


  def show
    @note=EventAlertType.find(params[:id])
  end


  def new
    @note =EventAlertType.new
  end


  def create
    @note =EventAlertType.new(params[:note])
    if @note.save
      flash[:notice]="Event alert #{@note.name} created. "
      redirect_to(:action=>"show", :id=>@note.id)
    else
      render("new")
    end
  end


  def edit
    @note=EventAlertType.find(params[:id])
  end 


  def update
    @note=EventAlertType.find(params[:id])
    if @note.update_attributes(params[:note])
      flash[:notice]="Event alert account #{@note.name} info updated."
      redirect_to(:action=>"show", :id=>@note.id)    
    else
      render("edit")
    end
  end


  def delete
    @note=EventAlertType.find(params[:id])
  end


  def destroy
    EventAlertType.find(params[:id]).destroy
    flash[:notice]="Event alert account destroyed."
    redirect_to(:action=>"list")
  end
end
