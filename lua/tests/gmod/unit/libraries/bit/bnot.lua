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

        {
            name = "Inverting 0 and -1",
            func = function()
                expect( bit.bnot(0) ).to.equal( -1 )
                expect( bit.bnot(-1) ).to.equal( 0 )
            end
        },

        {
            name = "Max and Min values",
            func = function()
                expect( bit.bnot(2147483647) ).to.equal( -2147483648 )
                expect( bit.bnot(-2147483648) ).to.equal( 2147483647 )
            end
        },
    }
}