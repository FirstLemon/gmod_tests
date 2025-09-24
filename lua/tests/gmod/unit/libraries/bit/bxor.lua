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
            name = "Positive numbers",
            func = function()
                expect( bit.bxor(19, 82) ).to.equal( 65 )
                expect( bit.bxor(327, 63) ).to.equal( 376 )
                expect( bit.bxor(0, 0) ).to.equal( 0 )
            end
        },

        {
            name = "Negative numbers",
            func = function()
                expect( bit.bxor(-99, -55) ).to.equal( 84 )
                expect( bit.bxor(-420, -67) ).to.equal( 481 )
            end
        },

        {
            name = "Automatic Fail for easier testing",
            func = function()
                expect( true ).to.beFalse()
            end
        },
    }
}