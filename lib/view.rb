class View
  attr_accessor :author, :content
  
  def create_gossip 
  	puts "                 Crée votre gossip ici"
    puts "                 Pseudo du Gossip: "
  	print "                >>  "
  	@author = gets.chomp()
    puts "                 Descrivez l'action fait par votre gossip"
  	puts "                 il fait quoi ton gossip: "
  	print "                >>  "
  	@content = gets.chomp()
    puts "                 verifiez l'état de votre gossip dans le menu."
    puts "                 Merci d'avoir joué dans mon jeu de gossip"
  	return params = { content: @content, author: @author }
  end

  def index_gossips
    Gossip.all
 end

end