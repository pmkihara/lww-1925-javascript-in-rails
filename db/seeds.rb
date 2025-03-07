# limpar o db
puts 'limpando o banco de dados...'
Monument.destroy_all
puts 'limpo!'

# popular o db
puts 'criando monumentos...'
Monument.create(name: "Eiffel tower", address: "Champ de Mars, 5 Av. Anatole France, 75007 Paris", opening_date: "1889/03/31")
Monument.create(name: "Statue of Liberty", address: "New York, État de New York 10004, États-Unis", opening_date: "1886/10/28")
puts "#{Monument.count} monumentos criados!"

# sinalizar o fim
puts 'fim!'
