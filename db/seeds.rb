require 'open-uri'
# require 'nokogiri'

Match.destroy_all
Request.destroy_all
User.destroy_all

# url = "https://www.eurosport.fr/tennis/atp/standing.shtml"

classement = ["NC", "40", "30/5", "30/4", "30/3", "30/2", "30/1", "30", "15/5", "15/4", "15/3", "15/2", "15/1", "15", "5/6", "4/6", "3/6", "2/6", "1/6", "0", "-2/6", "-4/6", "-15", "-30"]
<<<<<<< HEAD

file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
novak = User.new(first_name: "Novak", last_name: "Djokovic", address: "Serbie", gender: "Men", email: "novak@atp.com", password: "secret", level: classement.shuffle.first, description: "Jeu: Droitier, revers à deux mains. Novak Djokovic est considéré comme l'un des joueurs les plus complets du circuit. Son équilibre attaque-défense est jugé comme le meilleur du circuit, tant il est performant dans ces deux domaines. Il se caractérise donc par un style de contreur offensif basé sur un physique exceptionnel. Sa couverture de terrain est en effet jugée comme excellente, il se déplace très rapidement, change brusquement de direction et sait très bien gérer sa condition physique")
novak.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
novak.save!

=======
novak_desc = "Jeu: Droitier, revers à deux mains. Novak Djokovic est considéré comme l'un des joueurs les plus complets du circuit. Son équilibre attaque-défense est jugé comme le meilleur du circuit, tant il est performant dans ces deux domaines. Il se caractérise donc par un style de contreur offensif basé sur un physique exceptionnel. Sa couverture de terrain est en effet jugée comme excellente, il se déplace très rapidement, change brusquement de direction et sait très bien gérer sa condition physique"
nadal_desc = "Jeu : Gaucher, revers à deux mains. Rafael Nadal base son jeu en premier lieu sur une défense redoutable, étant très difficile à déborder. Il est un des meilleurs relanceurs du circuit. Sa principale tactique consiste à exploiter le point faible de son adversaire (par exemple le revers de Roger Federer ou le coup droit d'Andy Murray) grâce à son lift, l'empêchant ainsi de passer à l'attaque, pour pouvoir défendre le plus facilement possible. Si l'adversaire décide de se décaler pour se protéger, il doit alors laisser une grande ouverture, qu'exploite Nadal, l'obligeant à courir sans arrêt."
dominic_desc = "Jeu : Droitier, revers à une main. Personne ne frappe la balle plus fort que lui sur le circuit. Il a une frappe de balle très lourde en coup droit, ce qui est surprenant de la part d'un joueur qui n'est pas particulièment imposant physiquement (1m85, 80 kilos). Il peut également servir à plus de 220-230 km/h. Il a un jeu agressif vraiment impressionnant"
roger_desc = "Jeu : Droitier, revers à une main. Roger Federer possède une technique gestuelle très relâchée ; quelle que soit la situation dans laquelle il se trouve pour jouer une balle, il semble le faire sans efforts excessifs. Tout joueur, quel que soit son niveau, peut envisager de s'inspirer de sa technique."
stan_desc = "Jeu : Droitier, revers à une main, Stanislas Wawrinka est un joueur puissant qui développe un jeu d'attaque plutôt fluide et en variations, exploitant une très bonne technique grâce à une impeccable mobilité, un excellent timing, et un grand sens du jeu. Wawrinka est un joueur qui aime dicter le jeu pour marquer son empreinte sur le match et ainsi mettre la pression à son adversaire grâce à ses lourdes frappes du fond de court. Il est également doté d'une grande endurance physique, ce qui a mené Roger Federer à le surnommer « Stanimal », surnom repris par les médias et les joueurs français."
stefanos_desc = "Jeu : Droitier, revers à une main, Le Grec est avant tout un attaquant, et il aime gagner ses points pas des coups gagnants. Son coup droit est une arme de très bonne qualité. Revers: Petit bijou d'esthétisme, son revers est également terriblement efficace."

novak = User.create!(first_name: "Novak", last_name: "Djokovic", address: "Serbie", gender: "Men", email: "novak@atp.com", password: "secret", level: classement.shuffle.first, description: novak_desc, photo: "https://res.cloudinary.com/dhtapshlv/image/upload/v1592421797/Novak_Djokovic_64_srhdni.jpg")
nadal = User.create!(first_name: "Rafael", last_name: "Nadal", address: "Espagne", gender: "Men", email: "rafael@atp.com", password: "secret", level: classement.shuffle.first, description: nadal_desc,  photo: "https://res.cloudinary.com/dhtapshlv/image/upload/v1592421832/Rafael_Nadal_100_rauek2.jpg")
dominic = User.create!(first_name: "Dominic", last_name: "Thiem", address: "Autriche", gender: "Men", email: "dominic@atp.com", password: "secret", level: classement.shuffle.first, description: dominic_desc, photo: "https://res.cloudinary.com/dhtapshlv/image/upload/v1592421861/Dominic_Thiem_85_w3icfr.jpg")
federer = User.create!(first_name: "Roger", last_name: "Federer", address: "Suisse", gender: "Men", email: "roger@atp.com", password: "secret", level: classement.shuffle.first, description: roger_desc, photo: "https://res.cloudinary.com/dhtapshlv/image/upload/v1592421896/Roger_Federer_73_uqnvux.jpg")
stan = User.create!(first_name: "Stan", last_name: "Wawrinka", address: "Suisse", gender: "Men", email: "stan@atp.com", password: "secret", level: classement.shuffle.first, description: stan_desc, photo: "https://res.cloudinary.com/dlwpvvdub/image/upload/c_fill,g_auto:face,h_250,w_250/v1592474095/Stanislas-Wawrinka_mg9jna.jpg")
stefanos = User.create!(first_name: "Stefanos", last_name: "Tsitsipas", address: "Grece", gender: "Men", email: "stefanos@atp.com", password: "secret", level: classement.shuffle.first, description: stefanos_desc, photo: "https://res.cloudinary.com/dlwpvvdub/image/upload/c_fill,g_face,h_200,q_auto:best,w_200/v1592486076/file73qv0qddg1ubuwk1ayv_pcswf4.jpg")

times = ["10h", "18h30", "20h", "21h", "14h30", "17h", "15h30"]
cities = ["Paris", "London", "Prague", "Barcelone", "Madrid", "Lisbon", "Budapest", "Amsterdam", "Tokyo", "Rome", "Mexico"]

25.times do
  request = Request.new
  request.user = [novak, nadal, federer, dominic, stan, stefanos].shuffle.first
  request.date = Date.today+rand(100)
  request.time = times.shuffle.first
  request.location = cities.shuffle.first
  request.save
end

m1 = Match.new
m1.request = Request.first
m1.user = User.last
m1.save

m2 = Match.new
m2.request = Request.last
m2.user = User.last
m2.save
>>>>>>> f8b9c6d0ba607e02520f9e4849e3545489d76d47


