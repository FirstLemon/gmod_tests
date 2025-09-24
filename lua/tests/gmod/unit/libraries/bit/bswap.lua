--- @type GLuaTest_TestGroup
return {
    groupName = "bit.bswap",
    cases = {
        {
            name = "Functions exists",
            func = function()
                expect( bit.bswap ).to.beA( "function" )
            end
        },

        {
            name = "Swapping positives",
            func = function()
                expect( bit.bswap(327) ).to.equal( 1191247872 )
                expect( bit.bswap(8) ).to.equal( 134217728 )
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