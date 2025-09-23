--- @type GLuaTest_TestGroup
return {
    groupName = "bit.rshift",
    cases = {
        {
            name = "Functions exists",
            func = function()
                expect( bit.rshift ).to.beA( "function" )
            end
        },

        {
            name = "Postive logical shifting",
            func = function()
                expect( bit.rshift(8, 1) ).to.equal( 4 )
                expect( bit.rshift(16, 2) ).to.equal( 4 )
            end
        },

        {
            name = "Negative logical shifting",
            func = function()
                expect( bit.rshift(-8, 1) ).to.equal( 2147483644 )
                expect( bit.rshift(-16, 2) ).to.equal( 2147483640 )
            end
        },

        {
            name = "Shifting 0 should remain 0",
            func = function()
                expect( bit.rshift(0, 1) ).to.equal( 0 )
            end
        },

        {
            name = "Shifting 0 times",
            func = function()
                expect( bit.arshift(312, 0) ).to.equal( 312 )
            end
        },
    }
}