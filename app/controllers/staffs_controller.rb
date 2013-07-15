class StaffsController < ApplicationController
	def index
	    list
	    render("list")
  	end

	def list
	    @staffs=Staff.all
	    
	end         



	def show
		@staff=Staff.find(params[:id])
	end

	def new
		@staff=Staff.new
	end

	def create
		
		@staff=Staff.new(params[:staff])
		if @staff.save
		  flash[:notice]="staff account created.  #{@staff.first_name}"
		  redirect_to(:action=>"show", :id=>@staff.id)
		else
		  render("new")
		end
	end

	def edit
		@staff=Staff.find(params[:id])
	end

	def update
		@staff=Staff.find(params[:id])
		if @staff.update_attributes(params[:staff])
		  flash[:notice]="staff account info updated.  #{@staff.first_name}"
		  redirect_to(:action=>"show", :id=>@staff.id)    
		else
		  render("edit")
		end
	end

	def delete
		@staff=Staff.find(params[:id])
	end

	def destroy
		Staff.find(params[:id]).destroy
		flash[:notice]="staff account destroyed."
		redirect_to(:action=>"list")
	end

	
end
