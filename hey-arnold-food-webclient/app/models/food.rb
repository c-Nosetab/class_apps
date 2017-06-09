class Food
  attr_accessor :id, :name, :spice


  def initialize(hash_object)
    @id = hash_object["id"]
    @name = hash_object["name"]
    @spice = hash_object["spice"]

  end

  def self.all
    array = []

    Unirest.get("#{ENV["API_HOST"]}/api/v2/thing.json").body.each do |item|
      array << Food.new(item)
    end

    array
  end

  def self.find(id)
    Food.new(Unirest.get("#{ENV["API_HOST"]}/api/v2/thing/#{id}.json").body)
  end

  def delete
    Unirest.delete("#{ENV["API_HOST"]}/api/v2/thing/#{self.id}.json")
  end

end