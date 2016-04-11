class Norris::Joke

  attr_accessor :firstName, :lastName, :category, :all, :total, :categories, :random, :fetch

  URL = "http://api.icndb.com/"

  def initialize(firstName=nil, lastName=nil, category=nil)
    @firstName = firstName
    @lastName = lastName
    @category = category
  end

  def self.api(path)
    JSON.parse(open(URL+path).read)
  end

  def self.fetch(id)
    HTMLEntities.new.decode(self.api("jokes/#{id}")['value']['joke'])
  end

  def self.random(category=nil)
    if category == nil
      HTMLEntities.new.decode(self.api("jokes/random")['value']['joke'])
    else
      HTMLEntities.new.decode(self.api("jokes/random?limitTo=[#{category}]")['value']['joke'])
    end
  end

  def self.categories
    self.api("categories")
  end

  def self.total
    self.api("jokes/count")['value']
  end

  def self.all
    self.api("jokes")
  end

end
