--- @type GLuaTest_TestGroup
return {
    groupName = "bit.lshift",
    cases = {
        {
            name = "Functions exists",
            func = function()
                expect( bit.lshift ).to.beA( "function" )
            end
        },

        {
            name = "Positive shifting",
            func = function()
                expect( bit.lshift(15, 4) ).to.equal( 420 )
                expect( bit.lshift(96, 4) ).to.equal( 1536 )
                expect( bit.lshift(63, 2) ).to.equal( 252 )
            end
        },

        {
            name = "Values are getting clamped over the signed 32-bt int limit",
            func = function()
                expect( bit.lshift(4294967295, 1) ).to.equal( -2 )
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