class StandardsController < ApplicationController

  def index
    list
    render("list")
  end


  def list
    @standards=Standard.all
    @q=Standard.search(params[:q])
    @standards=@q.result()
  end


  def show
    @standard=Standard.find(params[:id])
  end


  def new
    @standard =Standard.new
  end


  def create
    @standard =Standard.new(params[:standard])
    if @standard.save
      flash[:notice]="Standard #{@standard.name} created. "
      redirect_to(:action=>"show", :id=>@standard.id)
    else
      render("new")
    end
  end


  def edit
    @standard=Standard.find(params[:id])
  end 


  def update
    @standard=Standard.find(params[:id])
    if @standard.update_attributes(params[:standard])
      flash[:notice]="Standard account #{@standard.name} info updated."
      redirect_to(:action=>"show", :id=>@standard.id)    
    else
      render("edit")
    end
  end


  def delete
    @standard=Standard.find(params[:id])
  end


  def destroy
    Standard.find(params[:id]).destroy
    flash[:notice]="Standard account destroyed."
    redirect_to(:action=>"list")
  end
end
