--- @type GLuaTest_TestGroup
return {
    groupName = "bit.bswap",
    cases = {
        {
            name = "Functions exists",
            func = function()
                expect( bit.tobit ).to.beA( "function" )
            end
        },
    }
}