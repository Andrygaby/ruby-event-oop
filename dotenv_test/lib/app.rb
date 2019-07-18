require 'dotenv'# Appelle la gem Dotenv
require 'twitter'
require 'pry'

Dotenv.load('.env') # Ceci appelle le fichier .env (situé dans le même dossier que celui d'où tu exé

# quelques lignes qui appellent les clés d'API de ton fichier .env
client = Twitter::REST::Client.new do |config|
  config.consumer_key = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret = ENV["TWITTER_CONSUMER_SECRET"]
  config.access_token = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end

def multiply_by_6(var) #définition d'une méthode multipliant par 6 en 2 étapes
var = var * 2
binding.pry # On lance PRY au milieu de la méthode
var = var * 3
return var
end
multiply_by_6(5) # j'exécute la méthode sur la valeur 5

# et grâce à la gem Dotenv, on importe toutes les données enregistrées dans un hash ENV

# ligne qui permet de tweeter sur ton compte
client.update('Mon premier tweet en Ruby !!!!')

# Il est ensuite très facile d'appeler les données du hash ENV, par exemple là je vais afficher le c
puts ENV['TWITTER_API_SECRET']

#Autre exemple
puts ENV['BEST_WEBSITE_EVER']
