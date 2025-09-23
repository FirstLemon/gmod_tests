--- @type GLuaTest_TestGroup
return {
    groupName = "bit.bnot",
    cases = {
        {
            name = "Function exists",
            func = function()
                expect( bit.bnot ).to.beA( "function" )
            end
        },

        {
            name = "Inverting Numbers",
            func = function()
                expect( bit.bnot(8) ).to.equal( -9 )
                expect( bit.bnot(32) ).to.equal( -33 )
                expect( bit.bnot(-27534) ).to.equal( 27533 )
                expect( bit.bnot(-69) ).to.equal( 68 )
            end
        },
    }
}