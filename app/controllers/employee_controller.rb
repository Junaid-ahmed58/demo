class EmployeeController < ApplicationController
  def index
    @employees = Employee.all
  end
  
	def show
		@employee = Employee.find(params[:id])
	end
	
	def new
		@employee = Employee.new
	end

	def edit
		@employee = Employee.find(params[:id])
	end

	def leaves
	end

	def destroy
		@employee = Employee.find(params[:id])
		@employee.destroy

		redirect_to :employees_path

	end

	def create
		@employee.create(employee_params)
		if @employee.save
			redirect_to :employee_path
		else
			render :new 
		end
	end

	def update
		@employee.update(employee_params)
		if @employee.update
			redirect_to :employee_path
		else
			render :edit
		end
	end

	private

	def employee_params 
		params.require(:employee).permit(:first_name, :last_name, :email, :salary, :is_active)
	end

		
end
