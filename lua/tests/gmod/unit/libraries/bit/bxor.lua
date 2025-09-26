--- @type GLuaTest_TestGroup
return {
    groupName = "bit.bxor",
    cases = {
        {
            name = "Functions exists",
            func = function()
                expect( bit.bxor ).to.beA( "function" )
            end
        },

        {
            name = "Correctly returns XOR result",
            func = function()
                expect( bit.bxor( 19, 82 ) ).to.equal( 65 )
                expect( bit.bxor( 327, 63 ) ).to.equal( 376 )
                expect( bit.bxor( 234, 0 ) ).to.equal( 234 )
            end
        },

        {
            name = "Negative numbers",
            func = function()
                expect( bit.bxor( -99, -55 ) ).to.equal( 84 )
                expect( bit.bxor( -420, -67 ) ).to.equal( 481 )
                expect( bit.bxor( -32, 0 ) ).to.equal( -32 )
            end
        },

        {
            name = "Same Numbers",
            func = function()
                expect( bit.bxor( 32, 32 ) ).to.equal( 0 )
            end
        },

        {
            name = "Multiple Arguments",
            func = function()
                expect( bit.bxor( 1, 2, 3, 4, 5 ) ).to.equal( 1 )
            end
        },

        {
            name = "Fails on invalid input",
            func = function()
                expect( bit.bxor, nil, nil ).to.err()
                expect( bit.bxor, "abc", "def" ).to.err()
                expect( bit.bxor, {}, {} ).to.err()
            end
        },
    }
}