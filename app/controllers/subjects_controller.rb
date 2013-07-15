class SubjectsController < ApplicationController

  def index
    list
    render("list")
  end


  def list
    @subs=Subject.all
    @q=Subject.search(params[:q])
    @subs=@q.result()
  end


  def show
    @sub=Subject.find(params[:id])
  end


  def new
    @sub =Subject.new
  end


  def create
    @sub =Subject.new(params[:sub])
    if @sub.save
      flash[:notice]="Subject #{@sub.name} created. "
      redirect_to(:action=>"show", :id=>@sub.id)
    else
      render("new")
    end
  end


  def edit
    @sub=Subject.find(params[:id])
  end 


  def update
    @sub=Subject.find(params[:id])
    if @sub.update_attributes(params[:sub])
      flash[:notice]="Subject account #{@sub.name} info updated."
      redirect_to(:action=>"show", :id=>@sub.id)    
    else
      render("edit")
    end
  end


  def delete
    @sub=Subject.find(params[:id])
  end


  def destroy
    Subject.find(params[:id]).destroy
    flash[:notice]="Subject account destroyed."
    redirect_to(:action=>"list")
  end
end
