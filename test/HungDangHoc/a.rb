# class A
#   def a
#     x = [1,2,3]
#   end
# end

# a = A.new
# # ALWAYS RETURN
# print a.a

# instance variable & method
# class A
#   attr_accessor :cot1, :cot2
# end
# a = A.new
# puts a.inspect
# a.cot1 = 1
# a.cot2 = 2
# puts a.inspect
# puts A.instance_variables.include? :@cot1
# puts a.instance_variables.include? :@cot1

# instance varible & method
# class A
#   include ActiveModel::AttributeAssignment
#   # attr_accessor :cot1
#   attr_writer :cot1
# end
# a = A.new
# puts a.inspect
# a.assign_attributes(cot1: -1)
# # print a.attribute_names #undefined methods

# Ruby thì không chạy chay được
# Rails C
# require './test/HungDangHoc/a.rb'
# class A < ActiveRecord::Base
#   def attributes
#     super.merge('cot1' => self.cot1)
#     super.merge('cot2' => self.cot2)
#   end
# end

# Attribute methods
class A < ActiveRecord::Base
  # attribute :non_persisted_complex, :integer, default: -1
  attribute :cot1, :integer, default: -1
end
a = A.new
puts a.inspect
a.assign_attributes(cot1: -100) # giống hệt hàm setter = , vd: a.cot1 = 
puts a.inspect
puts A.instance_variables.include? :@cot1
puts a.instance_variables.include? :@cot1
puts A.methods.include? :cot1
puts a.methods.include? :cot1

puts A.instance_methods.include? :cot1
print a.attribute_names
puts 'AAAAA'
# https://stackoverflow.com/questions/39930793/does-activerecord-object-not-have-instance-variables-for-its-attributes-but-onl
puts a.instance_variables
puts a.instance_variables.include? :@attributes
puts a.instance_variable_get('@attributes').inspect
print a.instance_variable_get('@attributes')[:cot1].instance_variables
puts 'BBBBB'
print a.instance_variable_get('@attributes')[:cot1].instance_variable_get('@value_before_type_cast') # ?? -100
puts a.instance_variable_get('@attributes')[:cot1].instance_variables.include? :@value # ?? true
print a.instance_variable_get('@attributes')[:cot1].instance_variable_get('@value') # ?? -100
# Nhảm
# module GenerateAttributeMethodModule
#   def cot1(name)
#     name
#   end
# end

# class GenerateAttributeMethod < Module
#   include GenerateAttributeMethodModule
# end

# g = GenerateAttributeMethod.new
# puts g.methods.include? :cot1