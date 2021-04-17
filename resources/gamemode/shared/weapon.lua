-- https://wiki.multitheftauto.com/wiki/Weapons

--[[

	WEAPONS = table{

		[ id int ] = table{

			Skill = string,

			Propertys = table{

				[ value string ] = value,

			};

		};

	};

]]--

WEAPONS = {

	[ 30 ] = {

		Skill = "poor",

		Propertys = { 

			[ "weapon_range" ] = 150,
			[ "damage" ] = 30,

		},

	},

};