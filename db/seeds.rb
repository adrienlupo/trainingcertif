
Tree.destroy_all
User.destroy_all


john = User.create!(first_name: 'John', last_name: 'Doe', email: 'john@gmail.com', password: 'secret')
adrien = User.create!(first_name: 'Adrien', last_name: 'Lupo', email: 'adrien@gmail.com', password: 'secret')
loueur = User.create!(first_name: 'Loueur', last_name: 'Lolz', email: 'loueur@gmail.com', password: 'secret')

Tree.create!(name: 'John’s apple tree',
  address: '20 rue des Capucins 69001 Lyon',
  description: 'This apple tree produces both sweet and sour apples. They will be perfect to cut a little hunger, or enjoy a juicy apple for the dessert.',
  price_per_year: 175, quantity_per_year: 5, fruit_type: 'Apple', user: john)

Tree.create!(name: "Abricotier d'Adrien",
  address: '20 rue des Capucins 69001 Lyon',
  description: 'Lorem Ipsum Abricot',
  price_per_year: 50, quantity_per_year: 5, fruit_type: 'Abricot', user: adrien)
