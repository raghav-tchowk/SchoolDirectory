class SectionsController < ApplicationController

  def index
    list
    render("list")
  end


  def list
    @sects=Section.all
    @q=Section.search(params[:q])
    @sects=@q.result()
  end


  def show
    @sect=Section.find(params[:id])
  end


  def new
    @sect =Section.new
  end


  def create
    @sect =Section.new(params[:sect])
    if @sect.save
      flash[:notice]="Section a/c #{@sect.name} created. "
      redirect_to(:action=>"show", :id=>@sect.id)
    else
      render("new")
    end
  end


  def edit
    @sect=Section.find(params[:id])
  end 


  def update
    @sect=Section.find(params[:id])
    if @sect.update_attributes(params[:sect])
      flash[:notice]="Section account #{@sect.name} info updated."
      redirect_to(:action=>"show", :id=>@sect.id)    
    else
      render("edit")
    end
  end


  def delete
    @sect=Section.find(params[:id])
  end


  def destroy
    Section.find(params[:id]).destroy
    flash[:notice]="Section account destroyed."
    redirect_to(:action=>"list")
  end
end
