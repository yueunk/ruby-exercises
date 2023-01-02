class Robot
  @@names = []

  def name
    return @name if @name
    @name = generate_name while @@names.include?(@name) || @name.nil?
    @@names << @name
    @name
  end

  def reset
    @@names.delete(@name)
    @name = nil
  end

  private

  def generate_name
    name = ''
    2.times { name << ('A'..'Z').to_a.sample }
    3.times { name << rand(0..9).to_s }
    name
  end
end

=begin
robot has no name initially. 
a random name assigned to that robot at the initial boot (two upper case letters + three digit numbers)
can reset to its factory setting -- name wiped
a robot name is unique (other robot cannot have the same name at the same time)
=end