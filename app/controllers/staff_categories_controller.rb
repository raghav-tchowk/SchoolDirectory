class StaffCategoriesController < ApplicationController
	def index
	    list
	    render("list")
  	end

	def list
	    @scats=StaffCategory.all
	end

	def show
		@scat=StaffCategory.find(params[:id])
	end

	def new
		@scat=StaffCategory.new
	end

	def create
		@scat=StaffCategory.new(params[:scat])
		if @scat.save
		  flash[:notice]="scat category account created.  #{@scat.name}"
		  redirect_to(:action=>"show", :id=>@scat.id)
		else
		  render("new")
		end
	end

	def edit
		@scat=StaffCategory.find(params[:id])
	end

	def update
		@scat=StaffCategory.find(params[:id])
		if @scat.update_attributes(params[:scat])
		  flash[:notice]="scat category account info updated.  #{@scat.name}"
		  redirect_to(:action=>"show", :id=>@scat.id)    
		else
		  render("edit")
		end
	end

	def delete
		@scat=StaffCategory.find(params[:id])
	end

	def destroy
		StaffCategory.find(params[:id]).destroy
		flash[:notice]="scat category account destroyed."
		redirect_to(:action=>"list")
	end

	
end
