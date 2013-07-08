class StaffDepartmentsController < ApplicationController
	def index
	    list
	    render("list")
  	end

	def list
	    @scategories=StaffDepartment.all
	    
	end

	def a
		# @@tr=1
		@initial=params[:x]
		@scategories=StaffDepartment.where(["name LIKE ?", "#{@initial}%"])
		@number=StaffDepartment.where(["name LIKE ?", "#{@initial}%"]).count
		#@scategorys=StaffDepartment.where(["name LIKE ?", "r%"])
		#puts "rgv"
		#puts "to go to list click new scategory"
		#render("list")
		#link_to("<<Back to list", {:action=>"list"}, :class=>"back-links")
		render("listfew")
	end

          



	def show
		@scategory=StaffDepartment.find(params[:id])
	end

	def new
		@scategory =StaffDepartment.new
	end

	def create
		@scategory =StaffDepartment.new(params[:scategory])
		if @scategory.save
		  flash[:notice]="scategory account created.  #{@scategory.name}"
		  redirect_to(:action=>"show", :id=>@scategory.id)
		else
		  render("new")
		end
	end

	def update
		@scategory=StaffDepartment.find(params[:id])
		if @scategory.update_attributes(params[:scategory])
		  flash[:notice]="scategory account info updated.  #{@scategory.name}"
		  redirect_to(:action=>"show", :id=>@scategory.id)    
		else
		  render("edit")
		end
	end

	def delete
		@scategory=StaffDepartment.find(params[:id])
	end

	def destroy
		StaffDepartment.find(params[:id]).destroy
		flash[:notice]="scategory account destroyed."
		redirect_to(:action=>"list")
	end

	def edit
		@scategory=StaffDepartment.find(params[:id])
	end
end
