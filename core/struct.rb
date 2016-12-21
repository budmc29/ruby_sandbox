Customer = Struct.new('Customer', :name, :address)
dave = Struct::Customer.new('Dave', '123 Four')
# puts dave.name

Owner = Struct.new(:name, :address)
john = Owner.new('John', '124 Three')
# puts john.address

Visitor = Struct.new(:name, :address) do
  def info
    "Meet #{self.name} she lives in #{self.address}"
  end
end
marie = Visitor.new('Marie', '999 Boulevard')
puts marie.info


