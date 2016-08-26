class JugadoreController < ApplicationController
  def index
    @search_information = []
  end

  def search
    @search_information = Jugadore.search(params[:name])
  end
end
