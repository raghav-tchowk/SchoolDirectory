class StaffCategoriesController < ApplicationController
	def index
	    list
	    render("list")
  	end

	def list
	    @staffs=StaffCategory.all
	    
	end

	def show
		@staff=StaffCategory.find(params[:id])
	end

	def new
		@staff=StaffCategory.new
	end

	def create
		@staff=StaffCategory.new(params[:staff])
		if @staff.save
		  flash[:notice]="staff category account created.  #{@staff.name}"
		  redirect_to(:action=>"show", :id=>@staff.id)
		else
		  render("new")
		end
	end

	def edit
		@staff=StaffCategory.find(params[:id])
	end

	def update
		@staff=StaffCategory.find(params[:id])
		if @staff.update_attributes(params[:staff])
		  flash[:notice]="staff category account info updated.  #{@staff.name}"
		  redirect_to(:action=>"show", :id=>@staff.id)    
		else
		  render("edit")
		end
	end

	def delete
		@staff=StaffCategory.find(params[:id])
	end

	def destroy
		StaffCategory.find(params[:id]).destroy
		flash[:notice]="staff category account destroyed."
		redirect_to(:action=>"list")
	end

	
end
