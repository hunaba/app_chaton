# Pour le moment j'en crée 5, histoire que tout le monde puisse bosser, j'en créerai d'autres plus tard !
require 'faker'

Item.destroy_all

item1 = Item.create!(

	title: "Djaïzee",
	description: Faker::Lorem.paragraph_by_chars(number: 300, supplemental: false),
	price: "13.99",
	image_url: "https://www.wikichat.fr/wp-content/uploads/sites/2/comment-soigner-une-plaie-dun-chat.jpg"
	)

item1 = Item.create!(

	title: "Puppets",
	description: Faker::Lorem.paragraph_by_chars(number: 300, supplemental: false),
	price: "19.99",
	image_url: "https://www.sciencesetavenir.fr/assets/img/2017/03/29/cover-r4x3w1000-58dbbd655242b-capture-d-e-cran-2017-03-29-a-15-55-40.png"
	)

item1 = Item.create!(

	title: "Aïe Adolf", 
	description: Faker::Lorem.paragraph_by_chars(number: 300, supplemental: false),
	price:  "11.99",
	image_url: "https://www.dogalize.com/wp-content/uploads/2018/01/kitler.jpg"
	)

item1 = Item.create!(

	title: "Volte-Face",
	description: Faker::Lorem.paragraph_by_chars(number: 300, supplemental: false),
	price: "11.99",
	image_url: "http://golem13.fr/wp-content/uploads/2017/11/chat-double-face-chim%C3%A8re-700x460.jpg"
	)

item1 = Item.create!(

	title: "GrosMinet",
	description: Faker::Lorem.paragraph_by_chars(number: 300, supplemental: false),
	price: "24.99",
	image_url: "https://images.squarespace-cdn.com/content/v1/51ebd7afe4b0a4a7472c13fa/1484937410122-RACQZMX5RWT5XTBAFHJ5/ke17ZwdGBToddI8pDm48kEmsZfcSq4CpG4yHuA0C0LB7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QHyNOqBUUEtDDsRWrJLTmoJKo7K7P-K3iDKcb1IjyB3fHK8MAAd2WNxDJc2y_6qIzJDiuAyZwl1Z_c68w-NbR/image-asset.jpeg"
	)

item1 = Item.create!(

	title: "Slippiz",
	description: Faker::Lorem.paragraph_by_chars(number: 300, supplemental: false),
	price: "14.99",
	image_url: "https://i.pinimg.com/originals/c0/9a/67/c09a67e800a96c97bb36e7635eeb132e.jpg"
	)

item1 = Item.create!(

	title: "The Sentinel",
	description: Faker::Lorem.paragraph_by_chars(number: 300, supplemental: false),
	price: "19.99",
	image_url: "https://pbs.twimg.com/media/Cez5thaW4AI1fe2.jpg"
	)

item1 = Item.create!(

	title: "Freaky",
	description: Faker::Lorem.paragraph_by_chars(number: 300, supplemental: false),
	price: "9.99",
	image_url: "https://i.pinimg.com/originals/bb/59/8f/bb598f723da7419a412ae12640918550.jpg"
	)

item1 = Item.create!(

	title: "Fourasse",
	description: Faker::Lorem.paragraph_by_chars(number: 300, supplemental: false),
	price: "17.99",
	image_url: "https://addictingstories.org/wp-content/uploads/2018/02/DirtyCatHair.jpg"
	)

item1 = Item.create!(

	title: "Arièle",
	description: Faker::Lorem.paragraph_by_chars(number: 300, supplemental: false),
	price: "19.99",
	image_url: "https://dashingdawgs.com/wp-content/uploads/2017/09/vancouver-cat-grooming-bath.jpg"
	)

item1 = Item.create!(

	title: "J-P.",
	description: Faker::Lorem.paragraph_by_chars(number: 300, supplemental: false),
	price: "29.99",
	image_url: "https://i.pinimg.com/originals/79/53/01/795301e3963183c6d797cdef358ac3dc.jpg"
	)

item1 = Item.create!(

	title: "Jokert",
	description: Faker::Lorem.paragraph_by_chars(number: 300, supplemental: false),
	price: "17.99",
	image_url: "https://i.pinimg.com/originals/aa/fc/25/aafc257b0d5f95be099e00a962d6e094.jpg"
	)