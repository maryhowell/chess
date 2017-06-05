require 'byebug'

class Employee
attr_reader :salary, :boss
  def initialize(name, title, salary, boss)
    # debugger
    @name = name
    @title = title
    @salary = salary
    @boss = boss
    bosses_of_employees
  end

  def bosses_of_employees
    if @boss == "Founder"
      return self
    end
    boss = @boss
    until boss == nil
      boss.employees << self
      boss = boss.boss
    end
  end

  def bonus(multiplier)
    @salary * multiplier
  end
end

class Manager < Employee
  attr_reader :employees
  def initialize(name, title, salary, boss)
    super
    @employees = []
  end

  def bonus(multiplier)
    @employees.reduce(0) { |accum, employee| accum + employee.salary} * multiplier
  end
end


ned = Manager.new("Ned", "Founder", 1000000, nil)
darren = Manager.new("Darren", "TA Manager", 78000, ned)
shawna = Employee.new("Shawna", "TA", 12000, darren)
david = Employee.new("David", "TA", 10000, darren)


p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p shawna.bonus(3)
p david.bonus(3) # => 30_000
