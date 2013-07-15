class CompAlertTypesController < ApplicationController

  def index
    list
    render("list")
  end


  def list
    @comalerts=CompAlertType.all
    @q=CompAlertType.search(params[:q])
    @comalerts=@q.result()
  end


  def show
    @comalert=CompAlertType.find(params[:id])
  end


  def new
    @comalert =CompAlertType.new
  end


  def create
    @comalert =CompAlertType.new(params[:comalert])
    if @comalert.save
      flash[:notice]="Competition Alert #{@comalert.name} created. "
      redirect_to(:action=>"show", :id=>@comalert.id)
    else
      render("new")
    end
  end


  def edit
    @comalert=CompAlertType.find(params[:id])
  end 


  def update
    @comalert=CompAlertType.find(params[:id])
    if @comalert.update_attributes(params[:comalert])
      flash[:notice]="Competition Alert #{@comalert.name} info updated."
      redirect_to(:action=>"show", :id=>@comalert.id)    
    else
      render("edit")
    end
  end


  def delete
    @comalert=CompAlertType.find(params[:id])
  end


  def destroy
    CompAlertType.find(params[:id]).destroy
    flash[:notice]="Competition Alert account destroyed."
    redirect_to(:action=>"list")
  end
end
