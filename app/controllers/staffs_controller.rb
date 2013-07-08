class StaffsController < ApplicationController
	def index
	    list
	    render("list")
  	end

	def list
	    @sdepts=Staff.all
	    
	end         



	def show
		@sdept=Staff.find(params[:id])
	end

	def new
		@sdept=Staff.new
	end

	def create
		@sdept.staff_department=StaffDepartment.new(params[:sdept])
		if @sdept.save
		  flash[:notice]="sdept account created.  #{@sdept.first_name}"
		  redirect_to(:action=>"show", :id=>@sdept.id)
		else
		  render("new")
		end
	end

	def edit
		@sdept=Staff.find(params[:id])
	end

	def update
		@sdept=Staff.find(params[:id])
		if @sdept.update_attributes(params[:sdept])
		  flash[:notice]="sdept account info updated.  #{@sdept.first_name}"
		  redirect_to(:action=>"show", :id=>@sdept.id)    
		else
		  render("edit")
		end
	end

	def delete
		@sdept=Staff.find(params[:id])
	end

	def destroy
		Staff.find(params[:id]).destroy
		flash[:notice]="sdept account destroyed."
		redirect_to(:action=>"list")
	end

	
end
