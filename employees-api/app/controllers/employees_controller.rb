class EmployeesController < ApplicationController

  def index

    @employees = Employee.all

  end

  def create
    @employee = Employee.create(
                                first_name: params[:first_name],
                                last_name: params[:last_name],
                                email: params[:email]
                                )
    render :show
  end

  def show
    @employee = Employee.find(params[:id])
  end

end
