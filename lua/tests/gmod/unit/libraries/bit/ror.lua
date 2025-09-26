--- @type GLuaTest_TestGroup
return {
    groupName = "bit.ror",
    cases = {
        {
            name = "Function exists",
            func = function()
                expect( bit.ror ).to.beA( "function" )
            end
        },

        {
            name = "Rotating positive numbers returning the correct values",
            func = function()
                expect( bit.ror( 8, 1 ) ).to.expect( 4 )
                expect( bit.ror( 16, 1 ) ).to.expect( 8 )
                expect( bit.ror( 469, 4 ) ).to expect( 1342177309 )
            end
        },

        {
            name = "Rotating negative numbers returning the correct values",
            func = function()
                expect( bit.ror( -8, 1 ) ).to.expect( 2147483644 )
                expect( bit.ror( -16, 1 ) ).to.expect( 2147483640 )
                expect( bit.ror( -469, 4 ) ).to expect( -1073741854 )
            end
        },

        {
            name = "Returning input value on 0 rotations",
            func = function()
                expect( bit.ror( 412, 0 ) ).to.expect( 412 )
            end
        },

        {
            name = "Functions properly when rotating over the limit",
            func = function()
                expect( bit.ror( 1, 32 ) ).to.expect( 1 )
                expect( bit.ror( 16, 16 ) ).to.expect( 1048576 )
            end
        },

        {
            name = "Fails on invalid input",
            func = function()
                expect( bit.rol( nil, nil ) ).to.err()
                expect( bit.rol( "abc", "def" ) ).to.err()
                expect( bit.rol( {}, {} ) ).to.err()
                expect( bit.rol() ).to.err()
            end
        },
    }
}