class EmergencyAlertTypesController < ApplicationController

  def index
    list
    render("list")
  end


  def list
    @emalerts=EmergencyAlertType.all
  end


  def show
    @emalert=EmergencyAlertType.find(params[:id])
  end


  def new
    @emalert =EmergencyAlertType.new
  end


  def create
    @emalert =EmergencyAlertType.new(params[:emalert])
    if @emalert.save
      flash[:notice]="Emergency alert #{@emalert.name} created. "
      redirect_to(:action=>"show", :id=>@emalert.id)
    else
      render("new")
    end
  end


  def edit
    @emalert=EmergencyAlertType.find(params[:id])
  end 


  def update
    @emalert=EmergencyAlertType.find(params[:id])
    if @emalert.update_attributes(params[:emalert])
      flash[:notice]="Emergency #{@emalert.name} info updated."
      redirect_to(:action=>"show", :id=>@emalert.id)    
    else
      render("edit")
    end
  end


  def delete
    @emalert=EmergencyAlertType.find(params[:id])
  end


  def destroy
    EmergencyAlertType.find(params[:id]).destroy
    flash[:notice]="Emergency alert destroyed."
    redirect_to(:action=>"list")
  end
end
