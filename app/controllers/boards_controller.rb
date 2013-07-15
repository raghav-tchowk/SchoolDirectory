class BoardsController < ApplicationController

  def index
    list
    render("list")
  end


  def list
    @boards=Board.all
    @q=Board.search(params[:q])
    @boards=@q.result()
  end


  def show
    @board=Board.find(params[:id])
  end


  def new
    @board =Board.new
  end


  def create
    @board =Board.new(params[:board])
    if @board.save
      flash[:notice]="Board a/c #{@board.name} created. "
      redirect_to(:action=>"show", :id=>@board.id)
    else
      render("new")
    end
  end


  def edit
    @board=Board.find(params[:id])
  end 


  def update
    @board=Board.find(params[:id])
    if @board.update_attributes(params[:board])
      flash[:notice]="Board account #{@board.name} info updated."
      redirect_to(:action=>"show", :id=>@board.id)    
    else
      render("edit")
    end
  end


  def delete
    @board=Board.find(params[:id])
  end


  def destroy
    @board=Board.find(params[:id])
    flash[:notice]=" Board account #{@board.name} destroyed."
    @board.destroy
    redirect_to(:action=>"list")
  end
end
