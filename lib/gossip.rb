require 'csv'



class Gossip

  attr_accessor :author, :content, :hash

  def initialize(author, content)
    @content = content
    @author = author
  end

  def save
		@hash = Hash.new
		@hash[@author] = @content
		CSV.open("db/gossip.csv", "a") do |csv| 
			@hash.to_a.each {|elem| csv << elem}
		end
  end
  
  def self.all
    @csv = CSV.read("db/gossip.csv")
    puts @csv.inspect
	end

  
  
end