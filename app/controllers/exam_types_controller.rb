class ExamTypesController < ApplicationController

  def index
    list
    render("list")
  end


  def list
    @examtypes=ExamType.all
    @q=ExamType.search(params[:q])
    @examtypes=@q.result()
  end


  def show
    @examtype=ExamType.find(params[:id])
  end


  def new
    @examtype =ExamType.new
  end


  def create
    @examtype =ExamType.new(params[:examtype])
    if @examtype.save
      flash[:notice]="Exam type #{@examtype.name} created. "
      redirect_to(:action=>"show", :id=>@examtype.id)
    else
      render("new")
    end
  end


  def edit
    @examtype=ExamType.find(params[:id])
  end 


  def update
    @examtype=ExamType.find(params[:id])
    if @examtype.update_attributes(params[:examtype])
      flash[:notice]="Exam type #{@examtype.name} info updated."
      redirect_to(:action=>"show", :id=>@examtype.id)    
    else
      render("edit")
    end
  end


  def delete
    @examtype=ExamType.find(params[:id])
  end


  def destroy
    ExamType.find(params[:id]).destroy
    flash[:notice]="Exam type account destroyed."
    redirect_to(:action=>"list")
  end
end
