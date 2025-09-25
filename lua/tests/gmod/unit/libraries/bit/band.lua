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
            name = "Positive AND operation",
            func = function()
                expect( bit.band(8, 8) ).to.equal( 8 )
                expect( bit.band(8, 1) ).to.equal( 0 )
                expect( bit.band(42, 17) ).to.equal( 0 )
            end
        },

        {
            name = "Negative AND operation",
            func = function()
                expect( bit.band(-8, 8) ).to.equal( 8 )
                expect( bit.band(-8, 1) ).to.equal( 0 )
            end
        },

        {
            name = "AND with 0",
            func = function()
                expect( bit.band(0, 0) ).to.equal( 0 )
                expect( bit.band(21300, 0) ).to.equal( 0 )
                expect( bit.band(0, 23213) ).to.equal( 0 )
            end
        },

        {
            name = "More than 2 args",
            func = function()
                expect( bit.band(0, 0, 0) ).to.equal( 0 )
                expect( bit.band(300, 200, 300) ).to.equal( 8 )
                expect( bit.band(1, 2, 4, 8, 16, 32, 64) ).to.equal( 0 )
            end
        },

        {
            name = "Order of args doesn't matter",
            func = function()
                expect( bit.band(123, 456) ).to.equal( bit.band(456, 123) )
            end
        },
    }
}