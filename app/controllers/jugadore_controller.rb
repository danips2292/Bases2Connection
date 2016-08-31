class JugadoreController < ApplicationController
  def index
    Jugadore.all
    @search_information
  end

  def search
     @search_information = params[:name]
    # if @search_information == 'Jugadore'
    #   @search_information = Jugadore.all
    # elsif @search_information == 'SQL'
    #   @search_information = SQL.all
    # end
    case @search_information # a_variable is the variable we want to compare
      when "Jugadore"    #compare to 1
        @search_information = Jugadore.all
      when "JugadorSqlite3"    #compare to 2
        @search_information = JugadorSqlite3.all
      else
        puts "it was something else"
    end
  end
end