class JugadorSqlite3 < ActiveRecord::Base
  self.table_name = 'Jugadores'
  establish_connection :sqlite3_dev
end