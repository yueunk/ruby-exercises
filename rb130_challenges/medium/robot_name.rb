# frozen_string_literal: false

# This program manages robot factory settings.
class Robot
  @@names = []

  def name
    return @name if @name
    @name = generate_name if @name.nil?
  end

  def reset
    @@names.delete(@name)
    @name = nil
  end

  private

  def generate_name
    name = ''
    loop do
      2.times { name << rand(65..90).chr }
      3.times { name << rand(0..9).to_s }
      break unless @@names.include?(name)

      name = ''
    end
    @@names << name
    name
  end
end