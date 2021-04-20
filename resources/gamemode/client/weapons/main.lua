Weapons = { };

Weapons.wep = nil;
Weapons.sound = nil;

function Weapons.setup( )

	addEventHandler( "onClientPlayerWeaponFire", localPlayer, Weapons.onFire );
	addEventHandler( "onClientPlayerWeaponFire", root, Weapons.soundFire );

end

function Weapons.onFire( )

	local weapon_data = localPlayer:getData( "character > weapon" );
	if ( weapon_data ) then

		if ( Inventory.items[ weapon_data ] ) then

			if ( Inventory.items[ weapon_data ].ammo - 1 >= 0 ) then

				triggerServerEvent( "inventory > update_ammo", localPlayer, localPlayer, weapon_data, Inventory.items[ weapon_data ].ammo - 1 );

				if ( Inventory.items[ weapon_data ].ammo - 1 == 0 ) then

					toggleControl( "fire", false );
					toggleControl( "aim_weapon", false );
					triggerServerEvent( "inventory > reload_weapon", localPlayer, localPlayer );

				end

				triggerServerEvent( "inventory > update_life", localPlayer, localPlayer, weapon_data, Inventory.items[ weapon_data ].life - 0.05 );

			end

		end

	end

end

function Weapons.soundFire( weaponId )

	Weapons.wep = { getPedWeaponMuzzlePosition( localPlayer ) };

	if ( weaponId ) then

		if ( weaponId == 30 ) then 

			if ( fileExists( WEAPONS[ weaponId ].sound ) ) then

				Weapons.sound = playSound3D( WEAPONS[ weaponId ].sound, Weapons.wep[ 1 ], Weapons.wep[ 2 ], Weapons.wep[ 3 ], false );

				setSoundMinDistance( Weapons.sound, WEAPONS[ weaponId ].min_distance or 120 );
				setSoundMaxDistance( Weapons.sound, WEAPONS[ weaponId ].max_distance or 30 );

			end

		end

	end

end