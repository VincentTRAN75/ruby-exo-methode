def pyramid_height
    # hauteur de la pyramide
    puts "La hauteur de ta pyramide mon ami ?"
    print "❯ "
    return Integer(gets.chomp)
  end
  
  def full_pyramid(height)
    # faire une superbe pyramide
    base_length = height * 2 - 1
    i = 1 # Iteration for hashtag sign
    
    puts "Voici ta pyramide mon ami !"
  
    height.times do
      puts " " * (Integer(base_length / 2) - Integer(i / 2)) + "#" * i
      i += 2
    end
  end
  
  def wft_pyramid(height)
    # faire une pyramide wtf
    h = height
    n = 1 # quantité sur une ligne
  
    puts "Voici ta pyramide mon ami !"
  
    h.times do |i|
      i += 1 # ligne n°1 (commence à 1)
      m = (Float(h) / 2.0).ceil # ligne du milieu
  
      #print "#{if i < 10 then "0#{i}" else "#{i}" end} - #{m} - #{n}: " # Debug
  
      if i < m
        puts " " * ((h - n) / 2) + "#" * n
        n += 2
      elsif i > m
        puts " " * ((h - n) / 2) + "#" * n
        n -= 2
      else
        puts "#" * h
        n -= 2
      end
    end
  end
  
  def menu
    puts "Bienvenue dans le menu, votre type de pyramide l'ami ?"
    puts "1 - Normale"
    puts "2 - WFT"
  
    print "❯ "
    menu = Integer(gets.chomp)
  
    if menu == 1
      full_pyramid(pyramid_height)
    elsif menu == 2
      wft_pyramid(pyramid_height)
    else
      puts "Choisis 1 ou 2!"
      menu
    end
  end
  
menu