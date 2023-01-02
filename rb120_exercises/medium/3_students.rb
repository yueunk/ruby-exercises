class Student
  def initialize(name, year)
    @name = name
    @year = year
  end
end

class Graduate < Student
  def initialize(name, year, parking)
    super(name, year)
    @parking = parking
  end
end

class Undergraduate < Student
  def initialize(name, year) # you can delete it altogether
    super
  end
end

# super calls a method further up the inheritance chain that has the same name as the enclosing method

# redone 12/18
class Student
  @@student_count = 0
  
  def initialize(name=nil, year=nil)
    @name = name
    @year = year
    @@student_count += 1
    puts @@student_count
  end
end

class Graduate < Student
  def initialize(name, year, parking)
    super(name, year)
    @parking = parking
  end
end

class Undergraduate < Student
end

class Auditor < Student
  def initialize
    super()
  end
end

Graduate.new("yueun", "2020", true)
Undergraduate.new("yueun", "2222")
Auditor.new