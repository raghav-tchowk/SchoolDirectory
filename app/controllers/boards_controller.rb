class BoardsController < ApplicationController

  def index
    list
    render("list")
  end


  def list
    @notes=Board.all
    @q=Board.search(params[:q])
    @notes=@q.result()
  end


  def show
    @note=Board.find(params[:id])
  end


  def new
    @note =Board.new
  end


  def create
    @note =Board.new(params[:note])
    if @note.save
      flash[:notice]="Board a/c #{@note.name} created. "
      redirect_to(:action=>"show", :id=>@note.id)
    else
      render("new")
    end
  end


  def edit
    @note=Board.find(params[:id])
  end 


  def update
    @note=Board.find(params[:id])
    if @note.update_attributes(params[:note])
      flash[:notice]="Board account #{@note.name} info updated."
      redirect_to(:action=>"show", :id=>@note.id)    
    else
      render("edit")
    end
  end


  def delete
    @note=Board.find(params[:id])
  end


  def destroy
    @note=Board.find(params[:id])
    flash[:notice]=" Board account #{@note.name} destroyed."
    @note.destroy
    redirect_to(:action=>"list")
  end
end
