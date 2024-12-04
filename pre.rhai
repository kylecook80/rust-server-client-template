let project_name = variable::get("project-name");

// Rename the app.toml files
file::rename("server/app.toml", `server/${{project_name}}-server.toml`);
file::rename("client/app.toml", `client/${{project_name}}-client.toml`);

// Rename the project folder
file::rename("project", project_name);

// Rename the server and client folders
file::rename("server", `${{project_name}}-server`);
file::rename("client", `${{project_name}}-client`);
