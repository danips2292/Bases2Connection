class Jugadore < ActiveRecord::Base

  def self.search(search)
    return Jugadore.all if search.nil?
      Jugadore.where(" LOWER(name) LIKE '%#{search.downcase}%'")
    end
end