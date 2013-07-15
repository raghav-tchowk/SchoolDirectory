class ExamTypesController < ApplicationController

  def index
    list
    render("list")
  end


  def list
    @extypes=ExamType.all
    @q=ExamType.search(params[:q])
    @extypes=@q.result()
  end


  def show
    @extype=ExamType.find(params[:id])
  end


  def new
    @extype =ExamType.new
  end


  def create
    @extype =ExamType.new(params[:extype])
    if @extype.save
      flash[:notice]="Exam type #{@extype.name} created. "
      redirect_to(:action=>"show", :id=>@extype.id)
    else
      render("new")
    end
  end


  def edit
    @extype=ExamType.find(params[:id])
  end 


  def update
    @extype=ExamType.find(params[:id])
    if @extype.update_attributes(params[:extype])
      flash[:notice]="Exam type #{@extype.name} info updated."
      redirect_to(:action=>"show", :id=>@extype.id)    
    else
      render("edit")
    end
  end


  def delete
    @extype=ExamType.find(params[:id])
  end


  def destroy
    ExamType.find(params[:id]).destroy
    flash[:notice]="Exam type account destroyed."
    redirect_to(:action=>"list")
  end
end
