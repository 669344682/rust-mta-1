Weapons = { };

function Weapons.setup( )

	Weapons.propertys( );

end

function Weapons.propertys( )

	for i = 1, maxn( WEAPONS ) do

		local v = WEAPONS[ i ];

		if ( v ) then

			for k in pairs( v.propertys ) do

				local w = v.propertys[ k ];

				if ( k ) then

					setWeaponProperty( i, v.skill, k, w );

				end

			end

		end

	end

end