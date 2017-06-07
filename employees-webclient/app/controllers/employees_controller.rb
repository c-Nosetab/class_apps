class EmployeesController < ApplicationController


  def index
    @employees = Unirest.get("localhost:3000/api/v2/employees.json").body

  end

  def new
  end

  def create
    employee = Unirest.post(
                            "localhost:3000/api/v2/employees.json",
                            header: {"Accept" => "applications/json"},
                            parameters: {
                                         first_name: params[:first_name],
                                         last_name: params[:last_name],
                                         email: params[:email]
                                        }
                            )


    redirect_to "/employees/#{employee["id"]}"
  end

  def show
    @employee = Unirest.get("localhost:3000/api/v2/employees/#{params[:id]}.json").body
  end

end
