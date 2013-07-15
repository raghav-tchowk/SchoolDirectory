class SchoolDirectoriesController < ApplicationController
	def index
    list
    render("list")
  end


  def list
    @schools=SchoolDirectory.all
    @q=SchoolDirectory.search(params[:q])
    @schools=@q.result()
  end

  def a
    @initial=params[:x]
    @schools=SchoolDirectory.where(["name LIKE ?", "#{@initial}%"])
    @number=SchoolDirectory.where(["name LIKE ?", "#{@initial}%"]).count
    render("listfew")
  end

  def show
    @school=SchoolDirectory.find(params[:id])
  end

  def new
    @school =SchoolDirectory.new
  end

  def create
    @school =SchoolDirectory.new(params[:school])
    if @school.save
      flash[:notice]="School account created.  #{@school.name}"
      redirect_to(:action=>"show", :id=>@school.id)
    else
      render("new")
    end
  end

  def update
    @school=SchoolDirectory.find(params[:id])
    if @school.update_attributes(params[:school])
      flash[:notice]="School account info updated.  #{@school.name}"
      redirect_to(:action=>"show", :id=>@school.id)    
    else
      render("edit")
    end
  end

  def delete
    @school=SchoolDirectory.find(params[:id])
  end

  def destroy
    SchoolDirectory.find(params[:id]).destroy
    flash[:notice]="School account destroyed."
    redirect_to(:action=>"list")
  end

  def edit
    @school=SchoolDirectory.find(params[:id])
  end
end
