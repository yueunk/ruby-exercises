class Flight
  # attr_accessor :database_handle 

  def initialize(flight_number)
    @database_handle = Database.init
    @flight_number = flight_number
  end
end

# delete line 2, so that we don't provide the unneeded attr_accessor. only use it when absolutely necessary

# by making access to @database_handle easy, someone may use it in real code, and future modifications to the class may break that code. Think about dependency! more dependent, more prone to breakage in the future