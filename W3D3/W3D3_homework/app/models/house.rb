class House < ActiveRecord::Base
  has_many :people, {
    primary_key: :id,
    foreign_key: :house_id,
    class_name: 'Person'
  }
  
  # def residents
  #   res = []
  #   self.people.each do |person|
  #     res << person
  #   end
  #   res
  # end
end