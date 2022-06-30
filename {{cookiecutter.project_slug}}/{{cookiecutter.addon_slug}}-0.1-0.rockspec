rockspec_format = "3.0"
package = "{{ cookiecutter.project_slug }}"
version = "0.1-0"
source = {
    url = "git://github.com/{{ cookiecutter.github_user }}/{{ cookiecutter.project_slug }}.git",
}
description = {
    summary = "{{ cookiecutter.project_name }}",
    detailed = [[
        {{ cookiecutter.project_description }}
    ]],
    homepage = "https://github.com/{{ cookiecutter.github_user }}/{{ cookiecutter.project_slug }}",
    license = "GPL-3.0"
}

dependencies = {
    "lua >= 5.1",
    "busted",
}

build = {
    type = "none"
}

test = {
    type = "busted"
}

test_dependencies = {
    "busted"
}
