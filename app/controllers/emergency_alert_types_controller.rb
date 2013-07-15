class EmergencyAlertTypesController < ApplicationController

  def index
    list
    render("list")
  end


  def list
    @emergencyalerttypes=EmergencyAlertType.all
  end


  def show
    @emergencyalerttype=EmergencyAlertType.find(params[:id])
  end


  def new
    @emergencyalerttype =EmergencyAlertType.new
  end


  def create
    @emergencyalerttype =EmergencyAlertType.new(params[:emergencyalerttype])
    if @emergencyalerttype.save
      flash[:notice]="Emergency alert #{@emergencyalerttype.name} created. "
      redirect_to(:action=>"show", :id=>@emergencyalerttype.id)
    else
      render("new")
    end
  end


  def edit
    @emergencyalerttype=EmergencyAlertType.find(params[:id])
  end 


  def update
    @emergencyalerttype=EmergencyAlertType.find(params[:id])
    if @emergencyalerttype.update_attributes(params[:emergencyalerttype])
      flash[:notice]="Emergency #{@emergencyalerttype.name} info updated."
      redirect_to(:action=>"show", :id=>@emergencyalerttype.id)    
    else
      render("edit")
    end
  end


  def delete
    @emergencyalerttype=EmergencyAlertType.find(params[:id])
  end


  def destroy
    EmergencyAlertType.find(params[:id]).destroy
    flash[:notice]="Emergency alert destroyed."
    redirect_to(:action=>"list")
  end
end
