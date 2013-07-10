class ExamTypesController < ApplicationController

  def index
    list
    render("list")
  end


  def list
    @notes=ExamType.all
    @q=ExamType.search(params[:q])
    @notes=@q.result()
  end


  def show
    @note=ExamType.find(params[:id])
  end


  def new
    @note =ExamType.new
  end


  def create
    @note =ExamType.new(params[:note])
    if @note.save
      flash[:notice]="Exam type #{@note.name} created. "
      redirect_to(:action=>"show", :id=>@note.id)
    else
      render("new")
    end
  end


  def edit
    @note=ExamType.find(params[:id])
  end 


  def update
    @note=ExamType.find(params[:id])
    if @note.update_attributes(params[:note])
      flash[:notice]="Exam type #{@note.name} info updated."
      redirect_to(:action=>"show", :id=>@note.id)    
    else
      render("edit")
    end
  end


  def delete
    @note=ExamType.find(params[:id])
  end


  def destroy
    ExamType.find(params[:id]).destroy
    flash[:notice]="Exam type account destroyed."
    redirect_to(:action=>"list")
  end
end
