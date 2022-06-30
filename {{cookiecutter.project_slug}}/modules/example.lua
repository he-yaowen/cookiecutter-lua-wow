local _, {{ cookiecutter.project_name }} = ...

{{ cookiecutter.project_name }}.example = {}

{{ cookiecutter.project_name }}.example.foo = function ()
    return "Function {{ cookiecutter.project_name }}.example.foo invoked."
end
