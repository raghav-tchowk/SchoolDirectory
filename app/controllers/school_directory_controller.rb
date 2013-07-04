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
    @initial="a"
    @schools=SchoolDirectory.where(["name LIKE ?", "#{@initial}%"])
    #@schools=SchoolDirectory.where(["name LIKE ?", "r%"])
    #puts "rgv"
    #puts "to go to list click new school"
    #render("list")
    #link_to("<<Back to list", {:action=>"list"}, :class=>"back-links")
    render("listfew")
  end

  def b
   # @@tr=1
    @initial="b"
    @schools=SchoolDirectory.where(["name LIKE ?", "#{@initial}%"])
    #@schools=SchoolDirectory.where(["name LIKE ?", "r%"])
    #puts "rgv"
    #puts "to go to list click new school"
    #render("list")
    #link_to("<<Back to list", {:action=>"list"}, :class=>"back-links")
    render("listfew")
  end

  def c
   # @@tr=1
    @initial="c"
    @schools=SchoolDirectory.where(["name LIKE ?", "#{@initial}%"])
    #@schools=SchoolDirectory.where(["name LIKE ?", "r%"])
    #puts "rgv"
    #puts "to go to list click new school"
    #render("list")
    #link_to("<<Back to list", {:action=>"list"}, :class=>"back-links")
    render("listfew")
  end

  def d
   # @@tr=1
    @initial="d"
    @schools=SchoolDirectory.where(["name LIKE ?", "#{@initial}%"])
    #@schools=SchoolDirectory.where(["name LIKE ?", "r%"])
    #puts "rgv"
    #puts "to go to list click new school"
    #render("list")
    #link_to("<<Back to list", {:action=>"list"}, :class=>"back-links")
    render("listfew")
  end

  def e
   # @@tr=1
    @initial="e"
    @schools=SchoolDirectory.where(["name LIKE ?", "#{@initial}%"])
    #@schools=SchoolDirectory.where(["name LIKE ?", "r%"])
    #puts "rgv"
    #puts "to go to list click new school"
    #render("list")
    #link_to("<<Back to list", {:action=>"list"}, :class=>"back-links")
    render("listfew")
  end

  def f
   # @@tr=1
    @initial="f"
    @schools=SchoolDirectory.where(["name LIKE ?", "#{@initial}%"])
    #@schools=SchoolDirectory.where(["name LIKE ?", "r%"])
    #puts "rgv"
    #puts "to go to list click new school"
    #render("list")
    #link_to("<<Back to list", {:action=>"list"}, :class=>"back-links")
    render("listfew")
  end

  def g
   # @@tr=1
    @initial="g"
    @schools=SchoolDirectory.where(["name LIKE ?", "#{@initial}%"])
    #@schools=SchoolDirectory.where(["name LIKE ?", "r%"])
    #puts "rgv"
    #puts "to go to list click new school"
    #render("list")
    #link_to("<<Back to list", {:action=>"list"}, :class=>"back-links")
    render("listfew")
  end

  def h
   # @@tr=1
    @initial="h"
    @schools=SchoolDirectory.where(["name LIKE ?", "#{@initial}%"])
    #@schools=SchoolDirectory.where(["name LIKE ?", "r%"])
    #puts "rgv"
    #puts "to go to list click new school"
    #render("list")
    #link_to("<<Back to list", {:action=>"list"}, :class=>"back-links")
    render("listfew")
  end

  def i
   # @@tr=1
    @initial="i"
    @schools=SchoolDirectory.where(["name LIKE ?", "#{@initial}%"])
    #@schools=SchoolDirectory.where(["name LIKE ?", "r%"])
    #puts "rgv"
    #puts "to go to list click new school"
    #render("list")
    #link_to("<<Back to list", {:action=>"list"}, :class=>"back-links")
    render("listfew")
  end

  def j
   # @@tr=1
    @initial="j"
    @schools=SchoolDirectory.where(["name LIKE ?", "#{@initial}%"])
    #@schools=SchoolDirectory.where(["name LIKE ?", "r%"])
    #puts "rgv"
    #puts "to go to list click new school"
    #render("list")
    #link_to("<<Back to list", {:action=>"list"}, :class=>"back-links")
    render("listfew")
  end

  def k
   # @@tr=1
    @initial="k"
    @schools=SchoolDirectory.where(["name LIKE ?", "#{@initial}%"])
    #@schools=SchoolDirectory.where(["name LIKE ?", "r%"])
    #puts "rgv"
    #puts "to go to list click new school"
    #render("list")
    #link_to("<<Back to list", {:action=>"list"}, :class=>"back-links")
    render("listfew")
  end

  def l
   # @@tr=1
    @initial="l"
    @schools=SchoolDirectory.where(["name LIKE ?", "#{@initial}%"])
    #@schools=SchoolDirectory.where(["name LIKE ?", "r%"])
    #puts "rgv"
    #puts "to go to list click new school"
    #render("list")
    #link_to("<<Back to list", {:action=>"list"}, :class=>"back-links")
    render("listfew")
  end

  def m
   # @@tr=1
    @initial="m"
    @schools=SchoolDirectory.where(["name LIKE ?", "#{@initial}%"])
    #@schools=SchoolDirectory.where(["name LIKE ?", "r%"])
    #puts "rgv"
    #puts "to go to list click new school"
    #render("list")
    #link_to("<<Back to list", {:action=>"list"}, :class=>"back-links")
    render("listfew")
  end

  def n
   # @@tr=1
    @initial="n"
    @schools=SchoolDirectory.where(["name LIKE ?", "#{@initial}%"])
    #@schools=SchoolDirectory.where(["name LIKE ?", "r%"])
    #puts "rgv"
    #puts "to go to list click new school"
    #render("list")
    #link_to("<<Back to list", {:action=>"list"}, :class=>"back-links")
    render("listfew")
  end

  def o
   # @@tr=1
    @initial="o"
    @schools=SchoolDirectory.where(["name LIKE ?", "#{@initial}%"])
    #@schools=SchoolDirectory.where(["name LIKE ?", "r%"])
    #puts "rgv"
    #puts "to go to list click new school"
    #render("list")
    #link_to("<<Back to list", {:action=>"list"}, :class=>"back-links")
    render("listfew")
  end

  def p
   # @@tr=1
    @initial="p"
    @schools=SchoolDirectory.where(["name LIKE ?", "#{@initial}%"])
    #@schools=SchoolDirectory.where(["name LIKE ?", "r%"])
    #puts "rgv"
    #puts "to go to list click new school"
    #render("list")
    #link_to("<<Back to list", {:action=>"list"}, :class=>"back-links")
    render("listfew")
  end

  def q
   # @@tr=1
    @initial="q"
    @schools=SchoolDirectory.where(["name LIKE ?", "#{@initial}%"])
    #@schools=SchoolDirectory.where(["name LIKE ?", "r%"])
    #puts "rgv"
    #puts "to go to list click new school"
    #render("list")
    #link_to("<<Back to list", {:action=>"list"}, :class=>"back-links")
    render("listfew")
  end

  def r
   # @@tr=1
    @initial="r"
    @schools=SchoolDirectory.where(["name LIKE ?", "#{@initial}%"])
    #@schools=SchoolDirectory.where(["name LIKE ?", "r%"])
    #puts "rgv"
    #puts "to go to list click new school"
    #render("list")
    #link_to("<<Back to list", {:action=>"list"}, :class=>"back-links")
    render("listfew")
  end

  def s
   # @@tr=1
    @initial="s"
    @schools=SchoolDirectory.where(["name LIKE ?", "#{@initial}%"])
    #@schools=SchoolDirectory.where(["name LIKE ?", "r%"])
    #puts "rgv"
    #puts "to go to list click new school"
    #render("list")
    #link_to("<<Back to list", {:action=>"list"}, :class=>"back-links")
    render("listfew")
  end

  def t
   # @@tr=1
    @initial="t"
    @schools=SchoolDirectory.where(["name LIKE ?", "#{@initial}%"])
    #@schools=SchoolDirectory.where(["name LIKE ?", "r%"])
    #puts "rgv"
    #puts "to go to list click new school"
    #render("list")
    #link_to("<<Back to list", {:action=>"list"}, :class=>"back-links")
    render("listfew")
  end

  def u
   # @@tr=1
    @initial="u"
    @schools=SchoolDirectory.where(["name LIKE ?", "#{@initial}%"])
    #@schools=SchoolDirectory.where(["name LIKE ?", "r%"])
    #puts "rgv"
    #puts "to go to list click new school"
    #render("list")
    #link_to("<<Back to list", {:action=>"list"}, :class=>"back-links")
    render("listfew")
  end

  def v
   # @@tr=1
    @initial="v"
    @schools=SchoolDirectory.where(["name LIKE ?", "#{@initial}%"])
    #@schools=SchoolDirectory.where(["name LIKE ?", "r%"])
    #puts "rgv"
    #puts "to go to list click new school"
    #render("list")
    #link_to("<<Back to list", {:action=>"list"}, :class=>"back-links")
    render("listfew")
  end

  def w
   # @@tr=1
    @initial="w"
    @schools=SchoolDirectory.where(["name LIKE ?", "#{@initial}%"])
    #@schools=SchoolDirectory.where(["name LIKE ?", "r%"])
    #puts "rgv"
    #puts "to go to list click new school"
    #render("list")
    #link_to("<<Back to list", {:action=>"list"}, :class=>"back-links")
    render("listfew")
  end

  def x
   # @@tr=1
    @initial="x"
    @schools=SchoolDirectory.where(["name LIKE ?", "#{@initial}%"])
    #@schools=SchoolDirectory.where(["name LIKE ?", "r%"])
    #puts "rgv"
    #puts "to go to list click new school"
    #render("list")
    #link_to("<<Back to list", {:action=>"list"}, :class=>"back-links")
    render("listfew")
  end

  def y
   # @@tr=1
    @initial="y"
    @schools=SchoolDirectory.where(["name LIKE ?", "#{@initial}%"])
    #@schools=SchoolDirectory.where(["name LIKE ?", "r%"])
    #puts "rgv"
    #puts "to go to list click new school"
    #render("list")
    #link_to("<<Back to list", {:action=>"list"}, :class=>"back-links")
    render("listfew")
  end

  def z
   # @@tr=1
    @initial="z"
    @schools=SchoolDirectory.where(["name LIKE ?", "#{@initial}%"])
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
