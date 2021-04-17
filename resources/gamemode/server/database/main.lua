Database = { };

Database.type = "sqlite";
Database.user = "root";
Database.pass = "";
Database.database = "mta_rust";
Database.host = "localhost";

function Database.setup( )

	if ( Database.type == "sqlite" ) then

		Database.connection = Connection( Database.type, "assets/database/" .. Database.database .. "." .. Database.type );

	elseif ( Database.type == "mysql" ) then

		Database.connection = Connection( Database.type, "dbname=" .. Database.database .. ";host=" .. Database.host, Database.user, Database.pass );

	end

	if ( not Database.connection ) then

		print( "Failed to connect to database!" );
		cancelEvent( true );

	end

end

function query( ... )

	local query_ = Database.connection:query( ... );
	local poll, num_rows = query_:poll( -1 );

	if ( poll ) then

		return poll, num_rows;

	end

	return print( "QUERY: " .. type( poll ) );

end

function exec( ... )

	local exec_ = Database.connection:exec( ... );

	if ( exec_ ) then

		return exec_;

	end

	return print( "EXEC: " .. type( exec_ ) );

end
