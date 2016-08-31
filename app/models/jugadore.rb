class Jugadore < ActiveRecord::Base
  #self.table_name = 'Jugadore'
  establish_connection :development

  # def self.search(search)
  #   return Jugadore.all if search.nil?
  #     Jugadore.where(" LOWER(name) LIKE '%#{search.downcase}%'")
  #   end
end