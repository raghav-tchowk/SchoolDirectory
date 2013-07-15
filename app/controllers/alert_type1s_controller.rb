class AlertType1sController < ApplicationController

  def index
    list
    render("list")
  end


  def list
    @alerttype1s=AlertType1.all
    @q=AlertType1.search(params[:q])
    @alerttype1s=@q.result()
  end


  def show
    @alerttype1=AlertType1.find(params[:id])
  end


  def new
    @alerttype1 =AlertType1.new
  end


  def create
    @alerttype1 =AlertType1.new(params[:alerttype1])
    if @alerttype1.save
      flash[:notice]="Alert #{@alerttype1.name} created. "
      redirect_to(:action=>"show", :id=>@alerttype1.id)
    else
      render("new")
    end
  end


  def edit
    @alerttype1=AlertType1.find(params[:id])
  end 


  def update
    @alerttype1=AlertType1.find(params[:id])
    if @alerttype1.update_attributes(params[:alerttype1])
      flash[:notice]="Alert #{@alerttype1.name} info updated."
      redirect_to(:action=>"show", :id=>@alerttype1.id)    
    else
      render("edit")
    end
  end


  def delete
    @alerttype1=AlertType1.find(params[:id])
  end


  def destroy
    AlertType1.find(params[:id]).destroy
    flash[:notice]="Alert destroyed."
    redirect_to(:action=>"list")
  end
end
