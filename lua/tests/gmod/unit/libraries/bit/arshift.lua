--- @type GLuaTest_TestGroup
return {
    groupName = "bit.arshift",
    cases = {
        {
            name = "Functions exists",
            func = function()
                expect( bit.arshift ).to.beA( "function" )
            end
        },

        {
            name = "Postive shifting",
            func = function()
                expect( bit.arshift(8, 1) ).to.equal( 4 )
                expect( bit.arshift(16, 2) ).to.equal( 4 )
            end
        },

        {
            name = "Negative shifting",
            func = function()
                expect( bit.arshift(-8, 1) ).to.equal( -4 )
                expect( bit.arshift(-16, 2) ).to.equal( -4 )
            end
        },

        {
            name = "Shifting 0 should ramin 0",
            func = function()
                expect( bit.arshift(0, 1) ).to.equal( 0 )
            end
        },

        {
            name = "Automatic Fail for easier testing",
            func = function()
                expect( true ).to.beFalse()
            end
        },
    }
}