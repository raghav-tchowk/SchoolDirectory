class SchoolDirectoryController < ApplicationController
#@@tr
  def index
    list
    render("list")
  end

  def list
    @schools=SchoolDirectory.all
    #@initial
    #@schools=SchoolDirectory.where(["name LIKE ?", "#{@initial}%"])
    #all(:limit=>3, :offset=>6, :order=>"name ASC", :conditions => "name LIKE 'g%'")
    #Spec.find(:all, :conditions => "last_name LIKE '#{initial}%'",
  end

          def a
           # @@tr=1
            @initial=params[:x]
            @schools=SchoolDirectory.where(["name LIKE ?", "#{@initial}%"])
            @number=SchoolDirectory.where(["name LIKE ?", "#{@initial}%"]).count
            #@schools=SchoolDirectory.where(["name LIKE ?", "r%"])
            #puts "rgv"
            #puts "to go to list click new school"
            #render("list")
            #link_to("<<Back to list", {:action=>"list"}, :class=>"back-links")
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
      redirect_to(:action=>"list")
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
