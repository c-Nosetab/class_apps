class Employee
  attr_accessor :id, :first_name, :last_name, :email, :birthday


  def initialize(hash_options)
    @id = hash_options["id"]
    @first_name = hash_options["first_name"]
    @last_name = hash_options["last_name"]
    @email = hash_options["email"]
    @birthday = Date.parse(hash_options["birthday"]) if hash_options["birthday"]

  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def friendly_birthday
    birthday ? birthday.strftime('%b %e, %Y') : "N/A"
  end

  def self.all
    employees = []

        Unirest.get("#{ENV["API_HOST"]}/api/v1/employees.json").body.each do |employee_hash|
          employees << Employee.new(employee_hash)
        end

    employees
  end

  def self.find(id)
    Employee.new(Unirest.get("#{ENV["API_HOST"]}/api/v1/employees/#{id}.json").body
                    # headers: {
                    #           "X-User-Email" => "joe@gmail.com",
                    #           "Authorization" =. "Token token=infonomnom"
                    # }
                ).body

  end

  def self.create(employee_params)
    Unirest.post(
                "#{ENV["API_HOST"]}/api/v1/employees.json",
                headers: {
                          "Accept" => "application/json"
                          },
                parameters: employee_params
                ).body

    Employee.new(response)
  end

  def update(employee_params)
    Unirest.patch(
                  "#{ENV["API_HOST"]}/api/v1/employees/#{id}.json",
                  headers: {"Accept" => "application/json"},
                  parameters: employee_params
                  ).body

    Employee.new(response)
  end

  def delete
    Unirest.delete(
                   "#{ENV["API_HOST"]}/api/v1/employees/#{id}.json",
                   headers: {"Accept" => "application/json"}
                   ).body
  end

end