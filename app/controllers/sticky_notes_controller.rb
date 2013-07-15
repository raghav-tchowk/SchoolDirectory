class StickyNotesController < ApplicationController
	
	def index
    list
    render("list")
  end


  def list
    @q=StickyNote.search(params[:q])
    @stickynotes=@q.result()
  end


  def show
    @stickynote=StickyNote.find(params[:id])
  end


  def new
    @stickynote =StickyNote.new
  end


  def create
    @stickynote =StickyNote.new(params[:stickynote])
    if @stickynote.save
      flash[:notice]="Sticky stickynote #{@stickynote.title} created. "
      redirect_to(:action=>"show", :id=>@stickynote.id)
    else
      render("new")
    end
  end


	def edit
		@stickynote=StickyNote.find(params[:id])
	end	


  def update
    @stickynote=StickyNote.find(params[:id])
    if @stickynote.update_attributes(params[:stickynote])
      flash[:notice]="stickynote account #{@stickynote.title} info updated."
      redirect_to(:action=>"show", :id=>@stickynote.id)    
    else
      render("edit")
    end
  end


  def delete
    @stickynote=StickyNote.find(params[:id])
  end


  def destroy
    StickyNote.find(params[:id]).destroy
    flash[:notice]="stickynote account destroyed."
    redirect_to(:action=>"list")
  end
end
