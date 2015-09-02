class Pinterest
  attr_accessor :name, :email
  attr_writer :password
  attr_reader :my_pins

  def initialize(name, email, password)
    @name = name
    @email = email
    @password = password
    @my_pins = []
  end

  def pin_it(pin)
    @my_pins << pin
  end

  def delete_pin(pin)
    if @my_pins.include?(pin)
      @my_pins.delete(pin)
    else 
      "You never pinned that pin."
    end
  end

end