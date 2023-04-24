class User
  attr_accessor :email  #on ne mets pas @ pour la variable d'instance dans l'attr
  attr_accessor :age

  @@all_users=Array.new

def initialize(email_to_save,age_to_save)
  @email=email_to_save   # ici on met @ car c'est ici que l'on definit la variable
  @age=age_to_save       # ici on met @ car c'est ici que l'on definit la variable
  @@all_users<<self
  puts"email: #{@email}  age: #{@age}"
end

def self.all
  @@all_users.each {|the_users| puts "the_users:#{the_users} age: #{the_users.email} age: #{the_users.age}" } 
  return @@all_users

end 

def  self.find_by_email(email)
  @@all_users.detect{|the_users| the_users.email==email}
   end

binding.pry
end