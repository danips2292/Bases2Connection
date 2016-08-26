class Jugadore < ActiveRecord::Base

  def self.search(search)
    -binding.pry
    return Jugadore.all if search.nil?
      -binding.pry
      Jugadore.where(" LOWER(username) LIKE '%#{search.downcase}%'")
    end
end