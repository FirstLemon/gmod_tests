--- @type GLuaTest_TestGroup
return {
    groupName = "bit.tobit",
    cases = {
        {
            name = "Functions exists",
            func = function()
                expect( bit.tobit ).to.beA( "function" )
            end
        },

        {
            name = "Should return unchanged values",
            func = function()
                expect( bit.tobit(1) ).to.equal(1)
                expect( bit.tobit(-1) ).to.equal(-1)
            end
        },

        {
            name = "Large psotive numbers",
            func = function()
                expect( bit.tobit(2147483647) ).to.equal(2147483647)
                expect( bit.tobit(2147483648) ).to.equal(-2147483648)
            end
        },

        {
            name = "Non-integer values",
            func = function()
                expect( bit.tobit(1.1) ).to.equal(1)
                expect( bit.tobit(-1) ).to.equal(-1)
            end
        },
    }
}