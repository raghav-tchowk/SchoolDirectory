class CompAlertTypesController < ApplicationController

  def index
    list
    render("list")
  end


  def list
    @compalerttypes=CompAlertType.all
    @q=CompAlertType.search(params[:q])
    @compalerttypes=@q.result()
  end


  def show
    @compalerttype=CompAlertType.find(params[:id])
  end


  def new
    @compalerttype =CompAlertType.new
  end


  def create
    @compalerttype =CompAlertType.new(params[:compalerttype])
    if @compalerttype.save
      flash[:notice]="Competition Alert #{@compalerttype.name} created. "
      redirect_to(:action=>"show", :id=>@compalerttype.id)
    else
      render("new")
    end
  end


  def edit
    @compalerttype=CompAlertType.find(params[:id])
  end 


  def update
    @compalerttype=CompAlertType.find(params[:id])
    if @compalerttype.update_attributes(params[:compalerttype])
      flash[:notice]="Competition Alert #{@compalerttype.name} info updated."
      redirect_to(:action=>"show", :id=>@compalerttype.id)    
    else
      render("edit")
    end
  end


  def delete
    @compalerttype=CompAlertType.find(params[:id])
  end


  def destroy
    CompAlertType.find(params[:id]).destroy
    flash[:notice]="Competition Alert account destroyed."
    redirect_to(:action=>"list")
  end
end
