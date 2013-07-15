class StaffDepartmentsController < ApplicationController
	def index
	    list
	    render("list")
  	end

	def list
	    @sdepts=StaffDepartment.all
	    
	end


	def show
		@sdept=StaffDepartment.find(params[:id])
	end

	def new
		@sdept =StaffDepartment.new
	end

	def create
		@sdept =StaffDepartment.new(params[:sdept])
		if @sdept.save
		  flash[:notice]="sdept account created.  #{@sdept.name}"
		  redirect_to(:action=>"show", :id=>@sdept.id)
		else
		  render("new")
		end
	end

	def update
		@sdept=StaffDepartment.find(params[:id])
		if @sdept.update_attributes(params[:sdept])
		  flash[:notice]="sdept account info updated.  #{@sdept.name}"
		  redirect_to(:action=>"show", :id=>@sdept.id)    
		else
		  render("edit")
		end
	end

	def delete
		@sdept=StaffDepartment.find(params[:id])
	end

	def destroy
		StaffDepartment.find(params[:id]).destroy
		flash[:notice]="sdept account destroyed."
		redirect_to(:action=>"list")
	end

	def edit
		@sdept=StaffDepartment.find(params[:id])
	end
end
