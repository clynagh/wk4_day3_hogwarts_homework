require('pry')
require_relative("../db/sql_runner")

class House
  attr_reader :name, :url, :id

  def initialize(params)
    @id = params['id'].to_i if params['id']
    @name = params['name']
    @url = params['url']
  end

  def save
    

  def self.all()

end