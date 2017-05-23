# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cat = Cat.create!(name: "Whiskers", age: "3 years old", description: "This cuddley cat was found in an abandoned home alone. She loves to cuddle and play!")

image = Image.create!(url: "https://www.royalcanin.com/~/media/Royal-Canin/Subpage-Hero-Images/150327_Hero_kit.ashx", cat_id: 1)
image = Image.create!(url: "https://www.royalcanin.com/~/media/Royal-Canin/Product-Categories/cat-breed-landing-hero.ashx", cat_id: 1)

cat = Cat.create!(name: "Snow", age: "8 years", description: "Snow was found in a snowy bank during a snow strom. This Regal cat enjoys napping and playing with toys.")

image = Image.create!(url: "http://www.petmd.com/sites/default/files/4-meow-conversational-cat.gif", cat_id: 2)

cat = Cat.create!(name: "Salem", age: "Unknown Age", description: "Salem is an odd cat who likes to cook and perform magical deeds. It is unknown how the cat obtained such power.")

Image.create!(url: "https://s-media-cache-ak0.pinimg.com/736x/b2/68/fc/b268fc52d28ec0452ea64a121489d7ce.jpg", cat_id: 3)