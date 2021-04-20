INVENTORY_SLOTS = { INVENTORY = { r = 5, c = 6 }, CLOTHES = 6, SIZE = 45 };

--[[

	-- ITEM TABLE --

	name 			= string,
	description 	= string,
	sound 			= file,
	stackable 		= boolean,
	weapon 			= boolean,
	ammo_id 		= boolean,
	food 			= boolean,
	hunger 			= int,
	thrist 			= int,
	wear	 		= boolean,
	clothes 		= boolean,
	preview_object 	= { model = int, pos = { float, float, float }, r = { float, float, float }, bone = int },
	show_ammo 		= boolean,
	max_ammo 		= int,
	mta_id 			= int

]]--

ITEMS = {

	[ 1 ] = {

		name 		= "Apple",
		description = "Food",
		sound 		= "assets/sounds/cloth.mp3",
		stackable 	= true,
		food 		= true,
		hunger 		= 3,
		thirst 		= 2

	},

	[ 2 ] = {

		name 		= "Construction Plan",
		description = "Construction",
		sound 		= "assets/sounds/cloth.mp3",
		stackable 	= false

	},

	[ 3 ] = {

		name 			= "AK-47",
		description 	= "Weapon",
		sound 			= "assets/sounds/iron.mp3",
		weapon 			= true,
		ammo_id 		= 4,
		wear	 		= true,
		preview_object 	= { model = 355, pos = { -0.2, -0.15, 0 }, r = { 0, 0, 0 }, bone = 3 },
		show_ammo 		= true,
		max_ammo 		= 30,
		mta_id 			= 30

	},

	[ 4 ] = {

		name 		= "5.56 Ammo",
		sound 		= "assets/sounds/iron.mp3",
		description = "Ammo",
		stackable 	= true

	},

	[ 5 ] = {

		name 		= "Blue Shirt",
		description = "Roupa",
		sound 		= "assets/sounds/cloth.mp3",
		clothes 	= { 4 }

	},

	[ 6 ] = {

		name 		= "Green Shirt",
		description = "Clothe",
		sound 		= "assets/sounds/cloth.mp3",
		clothes 	= { 4 }

	},

	[ 7 ] = {

		name 		= "Boot",
		description = "Clothe",
		sound 		= "assets/sounds/cloth.mp3",
		clothes 	= { 6 }

	},

	[ 8 ] = {

		name 		= "Balaclava",
		description = "Clothe",
		sound 		= "assets/sounds/cloth.mp3",
		clothes 	= { 2 }

	},

	[ 9 ] = {

		name 		= "Armor",
		description = "Protection",
		sound 		= "assets/sounds/iron.mp3",
		wear 		= true,
		clothes 	= { 3 }

	},

	[ 10 ] = {

		name 		= "Jeans Legs",
		description = "Clothe",
		sound 		= "assets/sounds/cloth.mp3",
		clothes 	= { 5 }

	},

	[ 11 ] = {

		name 		= "Helmet",
		description = "Protection",
		sound 		= "assets/sounds/iron.mp3",
		wear 		= true,
		clothes 	= { 1 }

	},

	[ 12 ] = {

		name 			= "Pistol",
		description 	= "Weapon",
		sound 			= "assets/sounds/iron.mp3",
		weapon 			= true,
		ammo_id 		= 13,
		wear	 		= true,
		preview_object 	= { model = 348, pos = { 0, 0.2, 0.1 }, r = { 235, 90, 0 }, bone = 4 },
		show_ammo 		= true,
		max_ammo 		= 7,
		mta_id 			= 24

	},

	[ 13 ] = {

		name 		= "Pistol Ammo",
		description = "Ammo",
		sound 		= "assets/sounds/iron.mp3",
		stackable 	= true

	},

	[ 14 ] = {

		name 		= "Hammer",
		description = "Up/remove constructions",
		sound 		= "assets/sounds/cloth.mp3",
		mta_id 		= 11,
		stackable 	= true

	},

	[ 15 ] = {

		name 		= "Pickaxe",
		description = "Pickaxe",
		sound 		= "assets/sounds/iron.mp3",
		wear 		= true,
		mta_id 		= 10

	},

	[ 16 ] = {

		name 		= "Axe",
		description = "Axe",
		sound 		= "assets/sounds/iron.mp3",
		wear 		= true,
		mta_id 		= 12

	},

	[ 17 ] = {

		name 		= "Wood",
		description = "Wood",
		sound 		= "assets/sounds/cloth.mp3",
		stackable 	= true

	},

	[ 18 ] = {

		name 		= "Rock",
		description = "Rock",
		sound 		= "assets/sounds/rocks.mp3",
		stackable 	= true

	},

	[ 19 ] = {

		name 		= "Scrap",
		description = "Scrap",
		sound 		= "assets/sounds/iron.mp3",
		stackable 	= true

	},

};