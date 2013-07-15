class SubjectsController < ApplicationController

  def index
    list
    render("list")
  end


  def list
    @subjects=Subject.all
    @q=Subject.search(params[:q])
    @subjects=@q.result()
  end


  def show
    @subject=Subject.find(params[:id])
  end


  def new
    @subject =Subject.new
  end


  def create
    @subject =Subject.new(params[:subject])
    if @subject.save
      flash[:notice]="Subject #{@subject.name} created. "
      redirect_to(:action=>"show", :id=>@subject.id)
    else
      render("new")
    end
  end


  def edit
    @subject=Subject.find(params[:id])
  end 


  def update
    @subject=Subject.find(params[:id])
    if @subject.update_attributes(params[:subject])
      flash[:notice]="Subject account #{@subject.name} info updated."
      redirect_to(:action=>"show", :id=>@subject.id)    
    else
      render("edit")
    end
  end


  def delete
    @subject=Subject.find(params[:id])
  end


  def destroy
    Subject.find(params[:id]).destroy
    flash[:notice]="Subject account destroyed."
    redirect_to(:action=>"list")
  end
end
