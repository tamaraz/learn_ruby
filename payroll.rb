class Employee

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def pay(amount)
    self.class.add_to_budget(amount)
    puts "person: #{@name}, amount: #{amount}"
  end

  def self.budget
    @@budget ||= 0
  end

  private
    def self.add_to_budget(amount)
      @@budget ||= 0
      @@budget += amount
    end
end

class Doctor < Employee
  def self.salary #class method - constant
    100_000
  end

  def pay
    super(self.class.salary)
  end
end

class Nurse < Employee
  def self.salary #class method - constant
    60_000
  end

  def pay
    super(self.class.salary)
  end
end

class Neuroseurgeon < Employee
  def self.salary #class method - constant
    150_000
  end

  def pay
    super(self.class.salary)
  end
end

employees_data = [ {type: "doctor", name: "John"},
  {type: "doctor", name: "Catherine"},
  {type: "doctor", name: "Mike"},
  {type: "nurse", name: "Rita"},
  {type: "nurse", name: "Steve"},
  {type: "nurse", name: "Will"},
  {type: "neuroseurgeon", name: "Brody"},
  {type: "neuroseurgeon", name: "Stacy"},
  {type: "neuroseurgeon", name: "Kim"}
]

employees = []

employees_data.each do |employee_datum|
  type = employee_datum[:type]
  name = employee_datum[:name]

  employee_class = if type == "doctor"
    Doctor
  elsif type == "nurse"
    Nurse
  elsif type == "neuroseurgeon"
    Neuroseurgeon
  end

  if employee_class != nil
    employees << employee_class.new(name)
  end
end

employees.each do |employee|
  puts "Budget: #{Employee.budget}"
  employee.pay
end

puts "Budget: #{Employee.budget}" #how much are you paying for all employees
