class StickyNotesController < ApplicationController
	
	def index
    list
    render("list")
  end


  def list
    @notes=StickyNote.all
    @q=StickyNote.search(params[:q])
    @notes=@q.result()
  end


  def show
    @note=StickyNote.find(params[:id])
  end


  def new
    @note =StickyNote.new
  end


  def create
    @note =StickyNote.new(params[:note])
    if @note.save
      flash[:notice]="Sticky note #{@note.title} created. "
      redirect_to(:action=>"show", :id=>@note.id)
    else
      render("new")
    end
  end


	def edit
		@note=StickyNote.find(params[:id])
	end	


  def update
    @note=StickyNote.find(params[:id])
    if @note.update_attributes(params[:note])
      flash[:notice]="note account #{@note.title} info updated."
      redirect_to(:action=>"show", :id=>@note.id)    
    else
      render("edit")
    end
  end


  def delete
    @note=StickyNote.find(params[:id])
  end


  def destroy
    StickyNote.find(params[:id]).destroy
    flash[:notice]="note account destroyed."
    redirect_to(:action=>"list")
  end
end
