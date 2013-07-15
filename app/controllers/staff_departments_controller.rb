class StaffDepartmentsController < ApplicationController
	def index
	    list
	    render("list")
  	end

	def list
	    @staffdepartments=StaffDepartment.all
	    
	end


	def show
		@staffdepartment=StaffDepartment.find(params[:id])
	end

	def new
		@staffdepartment =StaffDepartment.new
	end

	def create
		@staffdepartment =StaffDepartment.new(params[:staffdepartment])
		if @staffdepartment.save
		  flash[:notice]="staffdepartment account created.  #{@staffdepartment.name}"
		  redirect_to(:action=>"show", :id=>@staffdepartment.id)
		else
		  render("new")
		end
	end

	def update
		@staffdepartment=StaffDepartment.find(params[:id])
		if @staffdepartment.update_attributes(params[:staffdepartment])
		  flash[:notice]="staffdepartment account info updated.  #{@staffdepartment.name}"
		  redirect_to(:action=>"show", :id=>@staffdepartment.id)    
		else
		  render("edit")
		end
	end

	def delete
		@staffdepartment=StaffDepartment.find(params[:id])
	end

	def destroy
		StaffDepartment.find(params[:id]).destroy
		flash[:notice]="staffdepartment account destroyed."
		redirect_to(:action=>"list")
	end

	def edit
		@staffdepartment=StaffDepartment.find(params[:id])
	end
end
