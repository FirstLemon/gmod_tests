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
            name = "Returns correct values",
            func = function()
                expect( bit.bswap( 327 ) ).to.equal( 1191247872 )
                expect( bit.bswap( 8 ) ).to.equal( 134217728 )
            end
        },

        {
            name = "Swapping 0 and -1 returns the correct value",
            func = function()
                expect( bit.bswap( 0 ) ).to.equal( 0 )
                expect( bit.bswap( -1 ) ).to.equal( -1 )
            end
        },

        {
            name = "Fails on invalid input",
            func = function()
                expect( bit.bswap, nil ).to.err()
                expect( bit.bswap, "abc" ).to.err()
                expect( bit.bswap, {} ).to.err()
            end
        },
    }
}