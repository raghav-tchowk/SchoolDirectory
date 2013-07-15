class EventAlertTypesController < ApplicationController

  def index
    list
    render("list")
  end


  def list
    @evalerts=EventAlertType.all
    @q=EventAlertType.search(params[:q])
    @evalerts=@q.result()
  end


  def show
    @evalert=EventAlertType.find(params[:id])
  end


  def new
    @evalert =EventAlertType.new
  end


  def create
    @evalert =EventAlertType.new(params[:evalert])
    if @evalert.save
      flash[:notice]="Event alert #{@evalert.name} created. "
      redirect_to(:action=>"show", :id=>@evalert.id)
    else
      render("new")
    end
  end


  def edit
    @evalert=EventAlertType.find(params[:id])
  end 


  def update
    @evalert=EventAlertType.find(params[:id])
    if @evalert.update_attributes(params[:evalert])
      flash[:notice]="Event alert account #{@evalert.name} info updated."
      redirect_to(:action=>"show", :id=>@evalert.id)    
    else
      render("edit")
    end
  end


  def delete
    @evalert=EventAlertType.find(params[:id])
  end


  def destroy
    EventAlertType.find(params[:id]).destroy
    flash[:notice]="Event alert account destroyed."
    redirect_to(:action=>"list")
  end
end
