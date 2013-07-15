class EventAlertTypesController < ApplicationController

  def index
    list
    render("list")
  end


  def list
    @eventalerttypes=EventAlertType.all
    @q=EventAlertType.search(params[:q])
    @eventalerttypes=@q.result()
  end


  def show
    @eventalerttype=EventAlertType.find(params[:id])
  end


  def new
    @eventalerttype =EventAlertType.new
  end


  def create
    @eventalerttype =EventAlertType.new(params[:eventalerttype])
    if @eventalerttype.save
      flash[:notice]="Event alert #{@eventalerttype.name} created. "
      redirect_to(:action=>"show", :id=>@eventalerttype.id)
    else
      render("new")
    end
  end


  def edit
    @eventalerttype=EventAlertType.find(params[:id])
  end 


  def update
    @eventalerttype=EventAlertType.find(params[:id])
    if @eventalerttype.update_attributes(params[:eventalerttype])
      flash[:notice]="Event alert account #{@eventalerttype.name} info updated."
      redirect_to(:action=>"show", :id=>@eventalerttype.id)    
    else
      render("edit")
    end
  end


  def delete
    @eventalerttype=EventAlertType.find(params[:id])
  end


  def destroy
    EventAlertType.find(params[:id]).destroy
    flash[:notice]="Event alert account destroyed."
    redirect_to(:action=>"list")
  end
end
