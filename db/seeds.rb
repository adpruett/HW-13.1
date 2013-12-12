alfie = Movie.create!(name: 'Alfie', year: 2004)
alfie_c = alfie.characters.build(name: 'Alfie')
alfie_c.save
chico = alfie.characters.build(name: 'Chico')
chico.save

batman = Movie.create!(name: 'Batman', year: 2012)
batman_c = batman.characters.build(name: 'Batman')
batman_c.save
robin = batman.characters.build(name: 'Robin')
robin.save

joe_dirt = Movie.create!(name: 'Joe Dirt', year: 2006)
joe_dirt.characters.create!(name: 'Joe')