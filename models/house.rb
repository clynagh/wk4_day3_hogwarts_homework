require('pry')
require_relative("../db/sql_runner")

class House
  attr_reader :name, :url, :id

  def initialize(params)
    @id = params['id'].to_i if params['id']
    @name = params['name']
    @url = params['url']
    @values = [@name, @url]
  end

  def save
    sql = "INSERT INTO houses (
    name, url)
    VALUES
    ($1, $2)
    RETURNING id;"
    @id = SqlRunner.run(sql, @values)[0]['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM houses;"
    houses = SqlRunner.run(sql, @values)
    return houses.map{|house| House.new(house)}
  end

  def self.find(id)
    sql = "SELECT * FROM houses WHERE id = #{id};"
    return House.new(SqlRunner.run(sql, @values)[0])
  end

end