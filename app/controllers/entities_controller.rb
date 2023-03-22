class EntitiesController < ApplicationController
  def index
    entity1 = Entity.new
    # Thực hiện method - not recreate method
    entity1.name = "hung"
    entity2 = Entity.new
    # Thực hiện method - not recreate method
    entity2.name = "hunggggg"
    
    puts "BBBBBBBBB #{Entity.instance_methods.include? :name=}"
    puts "AAAAAAAAA #{Entity.instance_methods.include? :id=} "
    # save được
    entity1.save
    entity2.save

    puts entity1.inspect
    puts "CCCCCCCCC #{Entity.instance_variables.include? :name}"
    puts "DDDDDDDDD #{Entity.instance_methods.include? :name}"
    puts entity1.methods.include? :name
    puts entity1.name
  end
end