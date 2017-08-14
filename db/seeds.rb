# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Mobile.create(ime:'ime1',slika:'https://conteudo.imguol.com.br/c/bol/fotos/0a/2017/03/20/a-1490062320133_300x200.jpg', opis:'opis' ,specifikacije:'spec')

Mobile.create(ime:'Samsung', slika:'http://images.samsung.com/is/image/samsung/p5/au/smartphones/galaxy-note-001.png?$ORIGIN_PNG$',opis:'ss',specifikacije:'ss')

User.create(first_name: 'admin1', last_name: 'admin1' , email: 'admin1@gmail.com', password: 'admin123', role: 'admin')

