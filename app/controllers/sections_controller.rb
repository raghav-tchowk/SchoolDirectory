class SectionsController < ApplicationController

  def index
    list
    render("list")
  end


  def list
    @sections=Section.all
    @q=Section.search(params[:q])
    @sections=@q.result()
  end


  def show
    @section=Section.find(params[:id])
  end


  def new
    @section =Section.new
  end


  def create
    @section =Section.new(params[:section])
    if @section.save
      flash[:notice]="Section a/c #{@section.name} created. "
      redirect_to(:action=>"show", :id=>@section.id)
    else
      render("new")
    end
  end


  def edit
    @section=Section.find(params[:id])
  end 


  def update
    @section=Section.find(params[:id])
    if @section.update_attributes(params[:section])
      flash[:notice]="Section account #{@section.name} info updated."
      redirect_to(:action=>"show", :id=>@section.id)    
    else
      render("edit")
    end
  end


  def delete
    @section=Section.find(params[:id])
  end


  def destroy
    Section.find(params[:id]).destroy
    flash[:notice]="Section account destroyed."
    redirect_to(:action=>"list")
  end
end
