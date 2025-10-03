--- @type GLuaTest_TestGroup
return {
    groupName = "table.concat",

    beforeEach = function( state )
        state.tbSource1 = {}
    end,

    cases = {
        {
            name = "Functions exists",
            func = function()
                expect( table.concat ).to.beA( "function" )
            end
        },

        {
            name = "Concatenates table contents properly with default config",
            func = function( state )
                state.tbSource1 = { "I", "love", "fish!" }
                
                expect( state.tbSource1 ).to.equal( "Ilovefish!" )
            end
        },

        {
            name = "Concatenates table contents properly with different configs",
            func = function( state )
                state.tbSource1 = { "I", "love", "fish!" }
                
                expect( table.concat( state.tbSource1, " " ) ).to.equal( "I love fish!" )
                expect( table.concat( state.tbSource1, " ", 2 ) ).to.equal( "love fish!" )
                expect( table.concat( state.tbSource1, " ", 1, 2 ) ).to.equal( "I love" )
                expect( table.concat( state.tbSource1, "-" ) ).to.equal( "I-love-fish!" )
            end
        },

        {
            name = "Handles different types of input args",
            func = function( state )
                state.tbSource1 = { 67, "mustard" }
                
                expect( table.concat( state.tbsource2, " " )).to.equal( "67 mustard" )
            end
        },

        {
            name = "Throws error when incorrect type is provided",
            func = function( state )
                state.tbSource1 = { "I", 5, { 2, 4 } }
                
                expect( table.concat( state.tbSource1 ) ).to.errWith( "invalid value (table) at index 3 in table for 'concat'" )
            end
        },
    }
}