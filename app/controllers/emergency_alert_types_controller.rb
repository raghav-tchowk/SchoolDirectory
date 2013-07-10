class EmergencyAlertTypesController < ApplicationController

  def index
    list
    render("list")
  end


  def list
    @notes=EmergencyAlertType.all
  end


  def show
    @note=EmergencyAlertType.find(params[:id])
  end


  def new
    @note =EmergencyAlertType.new
  end


  def create
    @note =EmergencyAlertType.new(params[:note])
    if @note.save
      flash[:notice]="Emergency alert #{@note.name} created. "
      redirect_to(:action=>"show", :id=>@note.id)
    else
      render("new")
    end
  end


  def edit
    @note=EmergencyAlertType.find(params[:id])
  end 


  def update
    @note=EmergencyAlertType.find(params[:id])
    if @note.update_attributes(params[:note])
      flash[:notice]="Emergency #{@note.name} info updated."
      redirect_to(:action=>"show", :id=>@note.id)    
    else
      render("edit")
    end
  end


  def delete
    @note=EmergencyAlertType.find(params[:id])
  end


  def destroy
    EmergencyAlertType.find(params[:id]).destroy
    flash[:notice]="Emergency alert destroyed."
    redirect_to(:action=>"list")
  end
end
