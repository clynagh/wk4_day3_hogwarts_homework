require('pg')

class SqlRunner

def self.run(sql, values = nil)
  db = PG.connect({dbname: 'hogwarts_db', host: 'localhost'})
  db.prepare('statement', sql)
  return db.exec_prepared('statement', values)
  db.close
end



end