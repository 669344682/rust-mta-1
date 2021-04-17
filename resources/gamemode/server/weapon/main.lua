Weapons = { };

function Weapons.setup( )

	Weapons.propertys( );

end

function Weapons.propertys( )

	for i = 1, maxn( WEAPONS ) do

		local v = WEAPONS[ i ];

		if ( v ) then

			for k in pairs( v.Propertys ) do

				local w = v.Propertys[ k ];

				if ( k ) then

					setWeaponProperty( i, v.Skill, k, w );

				end

			end

		end

	end

end