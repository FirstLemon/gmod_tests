--- @type GLuaTest_TestGroup
return {
    groupName = "bit.bor",
    cases = {
        {
            name = "Function exists",
            func = function()
                expect( bit.bor ).to.beA( "function" )
            end
        },

        {
            name = "or",
            func = function()
                expect( bit.bor(8, 8) ).to.equal( 8 )
                expect( bit.bor(8, 1) ).to.equal( 9 )
                expect( bit.bor(27533, 17) ).to.equal( 27549 )
            end
        },
    }
}