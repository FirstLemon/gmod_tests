--- @type GLuaTest_TestGroup
return {
    groupName = "bit.rol",
    cases = {
        {
            name = "Function exists",
            func = function()
                expect( bit.rol ).to.beA( "function" )
            end
        },

        {
            name = "Positive rotating",
            func = function()
                expect( bit.rol(8, 1) ).to.expect( 16 )
                expect( bit.rol(16, 1) ).to.expect( 32 )
                expect( bit.rol(469, 4)).to expect( 7504 )
            end
        },

        {
            name = "Negative rotating",
            func = function()
                expect( bit.rol(-8, 1) ).to.expect( -15 )
                expect( bit.rol(-16, 1) ).to.expect( -31 )
                expect( bit.rol(-469, 4)).to expect( -7489 )
            end
        },

        {
            name = "Rotating 0 times",
            func = function()
                expect( bit.rol(412, 0) ).to.expect( 412 )
            end
        },

        {
            name = "Rotating over limit",
            func = function()
                expect( bit.rol(1, 32) ).to.expect( 1 )
                expect( bit.rol(16, 16) ).to.expect( 1048576 )
            end
        },
    }
}