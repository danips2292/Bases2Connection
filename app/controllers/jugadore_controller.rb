class JugadoreController < ApplicationController
  def index
    Jugadore.all
    @search_information
  end

  def search
    @search_information = params[:name]
    case @search_information # a_variable is the variable we want to compare
      when "Postgres"    #compare to 1
        t1=Thread.new{@search_information = Jugadore.all}
        t2=Thread.new{@search_information = Jugadore.all}
        t3=Thread.new{@search_information = Jugadore.all}
        t10=Thread.new{@search_information = Jugadore.all}
        t11=Thread.new{@search_information = Jugadore.all}
        t1.join
        sleep 4
        t2.join
        sleep 2
        t3.join
        sleep 2
        t10.join
        sleep 2
        t11.join
      when "Sqlite3"    #compare to 2
        t4=Thread.new{@search_information = JugadorSqlite3.all}
        t5=Thread.new{@search_information = JugadorSqlite3.all}
        t6=Thread.new{@search_information = JugadorSqlite3.all}
        t12=Thread.new{@search_information = JugadorSqlite3.all}
        t13=Thread.new{@search_information = JugadorSqlite3.all}
        t4.join
        sleep 4
        t5.join
        sleep 2
        t6.join
        sleep 2
        t12.join
        sleep 2
        t13.join
      when "Mysql"
        t7=Thread.new{@search_information = JugadorMysql.all}
        t8=Thread.new{@search_information = JugadorMysql.all}
        t9=Thread.new{@search_information = JugadorMysql.all}
        t14=Thread.new{@search_information = JugadorMysql.all}
        t15=Thread.new{@search_information = JugadorMysql.all}
        t7.join
        sleep 4
        t8.join
        sleep 2
        t9.join
        sleep 2
        t14.join
        sleep 2
        t15.join
      else
        puts "it was something else"
    end
  end
end