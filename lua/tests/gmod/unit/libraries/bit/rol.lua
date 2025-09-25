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
                expect( bit.rol(8, 1) ).to.equal( 16 )
                expect( bit.rol(16, 1) ).to.equal( 32 )
                expect( bit.rol(469, 4)).to equal( 7504 )
            end
        },

        {
            name = "Negative rotating",
            func = function()
                expect( bit.rol(-8, 1) ).to.equal( -15 )
                expect( bit.rol(-16, 1) ).to.equal( -31 )
                expect( bit.rol(-469, 4)).to equal( -7489 )
            end
        },

        {
            name = "Rotating 0 times",
            func = function()
                expect( bit.rol(412, 0) ).to.equal( 412 )
            end
        },

        {
            name = "Rotating over limit",
            func = function()
                expect( bit.rol(1, 32) ).to.equal( 1 )
                expect( bit.rol(16, 16) ).to.equal( 1048576 )
            end
        },
    }
}