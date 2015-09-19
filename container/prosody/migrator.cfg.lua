local data_path = '/var/lib/prosody';

input {
	type = "prosody_files";
	path = data_path;
}

output {
	type = "prosody_sql";
	driver = "SQLite3";
	database = data_path.."/var/lib/prosody/prosody.sqlite";
}

--[[

input {
	type = "prosody_files";
	path = data_path;
}
output {
	type = "prosody_sql";
	driver = "SQLite3";
	database = data_path.."/prosody.sqlite";
}

]]
