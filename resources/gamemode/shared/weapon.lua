-- https://wiki.multitheftauto.com/wiki/Weapons

--[[

	WEAPONS = table{

		[ id int ] = table{

			skill = string,
			sound = string,

			propertys = table{

				[ value string ] = value,

			};

		};

	};

]]--

WEAPONS = {

	[ 30 ] = {

		skill = "poor",
		sound = "assets/sounds/weapons/ak.wav",

		propertys = { 

			[ "weapon_range" ] = 150,
			[ "damage" ] = 30,

		},

	},

};