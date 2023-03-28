require "open-uri"

Tree.destroy_all
User.destroy_all
Adoption.destroy_all


john = User.create!(first_name: 'John', last_name: 'Doe', email: 'john@gmail.com', password: 'secret')
adrien = User.create!(first_name: 'Adrien', last_name: 'Lupo', email: 'adrien@gmail.com', password: 'secret')
loueur = User.create!(first_name: 'Loueur', last_name: 'Lolz', email: 'loueur@gmail.com', password: 'secret')

appletree = Tree.create!(name: 'John’s apple tree',
  address: '20 rue des Capucins 69001 Lyon',
  description: 'This apple tree produces both sweet and sour apples. They will be perfect to cut a little hunger, or enjoy a juicy apple for the dessert.',
  price_per_year: 175, quantity_per_year: 5, fruit_type: 'Apple', user: john)

appletree1 = URI.open('https://www.jardiner-malin.fr/wp-content/uploads/2021/09/pommier.jpg')
appletree2 = URI.open('https://www.jardiner-malin.fr/wp-content/uploads/2017/02/pommier-320x229.jpg')


appletree.photos.attach(io: appletree1, filename: 'appletree1.jpg', content_type: 'image/jpg')
appletree.photos.attach(io: appletree2, filename: 'appletree2.jpg', content_type: 'image/jpg')

abricotier = Tree.create!(name: "Abricotier d'Adrien",
  address: '20 rue des Capucins 69001 Lyon',
  description: 'Lorem Ipsum Abricot',
  price_per_year: 50, quantity_per_year: 5, fruit_type: 'Abricot', user: adrien)

abricotier1 = URI.open('https://www.jardiner-malin.fr/wp-content/uploads/2020/02/pommier-en-fleur-320x213.jpg')
abricotier.photos.attach(io: abricotier1, filename: 'abricotier1.jpg', content_type: 'image/jpg')
