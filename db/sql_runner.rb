require('pg')

class SqlRunner

def run(sql, values)
  db = PG.connect({dbname: 'hogwarts_db', host: 'localhost'})
  db.prepare('statement', sql)
  db.prepared_exec('statement', values)
  db.close
end


end