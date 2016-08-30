class JugadoreController < ApplicationController
  def index
    Jugadore.all
    @search_information
    @postgres_information
    @sqlite_information
    @mysql_information
  end

  def search
    @search_information = Jugadore.search(params[:name])
  end
end
