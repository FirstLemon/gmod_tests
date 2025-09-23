--- @type GLuaTest_TestGroup
return {
    groupName = "Template",
    cases = {
        {
            name = "Bruhh",
            func = function()
                expect( Template ).to.exist()
            end
        }
    }
}