require("spec.helper")

local {{ cookiecutter.project_name }} = {}
loadchunk({{ cookiecutter.project_name }}, "modules/example")

describe("Module {{ cookiecutter.project_name }}.example", function()
    describe("Function foo()", function ()
        it("should be invoked.", function()
            assert.are.equal("Function {{ cookiecutter.project_name }}.example.foo invoked.", {{ cookiecutter.project_name }}.example.foo())
        end)
    end)
end)
