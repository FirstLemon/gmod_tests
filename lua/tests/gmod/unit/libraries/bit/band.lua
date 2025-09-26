--- @type GLuaTest_TestGroup
return {
    groupName = "bit.band",
    cases = {
        {
            name = "Function exists",
            func = function()
                expect( bit.band ).to.beA( "function" )
            end
        },

        {
            name = "Returns correct values",
            func = function()
                expect( bit.band(8, 8) ).to.equal( 8 )
                expect( bit.band(8, 1) ).to.equal( 0 )
                expect( bit.band(42, 17) ).to.equal( 0 )
                expect( bit.band( 0, 0 ) ).to.equal( 0 )
            end
        },

        {
            name = "Returns correct values with negative inputs args",
            func = function()
                expect( bit.band( -8, 8 ) ).to.equal( 8 )
                expect( bit.band( -8, 1 ) ).to.equal( 0 )
            end
        },

        {
            name = "Functions properly with more than 2 args",
            func = function()
                expect( bit.band( 0, 0, 0 ) ).to.equal( 0 )
                expect( bit.band( 300, 200, 300 ) ).to.equal( 8 )
                expect( bit.band( 1, 2, 4, 8, 16, 32, 64 ) ).to.equal( 0 )
            end
        },

        {
            name = "Returns same result when args are flipped",
            func = function()
                expect( bit.band( 123, 456 ) ).to.equal( bit.band( 456, 123 ) )
            end
        },

        {
            name = "Fails on invalid input",
            func = function()
                expect( bit.band, nil, nil ).to.err()
                expect( bit.band, "abc", "def" ).to.err()
                expect( bit.band, {}, {} ).to.err()
            end
        },
    }
}