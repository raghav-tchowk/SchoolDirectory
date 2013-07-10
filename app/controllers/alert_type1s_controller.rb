class AlertType1sController < ApplicationController

  def index
    list
    render("list")
  end


  def list
    @notes=AlertType1.all
    @q=AlertType1.search(params[:q])
    @notes=@q.result()
  end


  def show
    @note=AlertType1.find(params[:id])
  end


  def new
    @note =AlertType1.new
  end


  def create
    @note =AlertType1.new(params[:note])
    if @note.save
      flash[:notice]="Alert #{@note.name} created. "
      redirect_to(:action=>"show", :id=>@note.id)
    else
      render("new")
    end
  end


  def edit
    @note=AlertType1.find(params[:id])
  end 


  def update
    @note=AlertType1.find(params[:id])
    if @note.update_attributes(params[:note])
      flash[:notice]="Alert #{@note.name} info updated."
      redirect_to(:action=>"show", :id=>@note.id)    
    else
      render("edit")
    end
  end


  def delete
    @note=AlertType1.find(params[:id])
  end


  def destroy
    AlertType1.find(params[:id]).destroy
    flash[:notice]="Alert destroyed."
    redirect_to(:action=>"list")
  end
end
