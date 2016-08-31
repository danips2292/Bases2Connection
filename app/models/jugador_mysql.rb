class JugadorMysql < ActiveRecord::Base
  self.table_name = 'Jugadores'
  establish_connection :mysql_dev
end