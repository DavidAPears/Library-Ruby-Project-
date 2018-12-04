require( 'pg' )

class SqlRunner

  def self.run( sql, values = [] )
    begin
      #db = PG.connect({ dbname: 'library', host: 'localhost' })
      db = PG.connect({
        dbname: 'd8kg87jvcnqrvg',
        host: 'ec2-184-72-239-186.compute-1.amazonaws.com',
        port: 5432,
        user: 'fdkbqlxmcqiacz',
        password: 'c0a43f0f97161e218e5f7154258dcb2a9abb021f8f479cd1ca02d0abc5a3b137'
        })
      db.prepare("query", sql)
      result = db.exec_prepared( "query", values )
    ensure
      db.close() if db != nil
    end
    return result
  end

end
