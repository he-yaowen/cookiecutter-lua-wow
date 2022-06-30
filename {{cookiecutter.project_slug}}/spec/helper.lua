function loadchunk(t, path)
    local chunk = loadfile(string.format("%s.lua", path))
    chunk("{{ cookiecutter.project_name }}", t)
end
