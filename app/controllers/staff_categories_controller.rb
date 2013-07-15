class StaffCategoriesController < ApplicationController
	def index
	    list
	    render("list")
  	end

	def list
	    @staffcategoies=StaffCategory.all
	end

	def show
		@staffcategory=StaffCategory.find(params[:id])
	end

	def new
		@staffcategory=StaffCategory.new
	end

	def create
		@staffcategory=StaffCategory.new(params[:staffcategory])
		if @staffcategory.save
		  flash[:notice]="staffcategory category account created.  #{@staffcategory.name}"
		  redirect_to(:action=>"show", :id=>@staffcategory.id)
		else
		  render("new")
		end
	end

	def edit
		@staffcategory=StaffCategory.find(params[:id])
	end

	def update
		@staffcategory=StaffCategory.find(params[:id])
		if @staffcategory.update_attributes(params[:staffcategory])
		  flash[:notice]="staffcategory category account info updated.  #{@staffcategory.name}"
		  redirect_to(:action=>"show", :id=>@staffcategory.id)    
		else
		  render("edit")
		end
	end

	def delete
		@staffcategory=StaffCategory.find(params[:id])
	end

	def destroy
		StaffCategory.find(params[:id]).destroy
		flash[:notice]="staffcategory category account destroyed."
		redirect_to(:action=>"list")
	end

	
end
