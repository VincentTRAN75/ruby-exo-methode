$password = "test"

def sign_up
  puts "Vous voulez un nouveau mdp ?"
  print "Votre nouveau mdp: "
  $password = String(gets.chomp)

  puts "Votre nouveau de passe est en cours de création. Patience."
  sleep(2)
  welcome_screen
end

def login
  puts "Vous voulez vous connectez ?"
  print "Votre mdp: "
  pass = String(gets.chomp)
  puts "======================================================================================="

  if pass == $password
    success_login
  else
    puts "Erreur, mauvais mdp !"
    puts "======================================================================================="
    login
  end
end

def success_login
  puts "Bienvenue Agent 47 !"
  puts "Vous trouverez les informations pour votre prochaine mission très bientôt !"
  puts "======================================================================================="
end

def welcome_screen
  puts "======================================================================================="
  puts "Que voulez vous faire ?"
  puts "1 - S'enregistrer"
  puts "2 - Se connecter"
  print "❯ "
  user_choice = Integer(gets.chomp)
  puts "======================================================================================="

  if user_choice == 1
    sign_up
  elsif user_choice == 2
    login
  else
    puts "Choisis 1 ou 2!"
    puts "======================================================================================="
    welcome_screen
  end
end

welcome_screen