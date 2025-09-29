--- @type GLuaTest_TestGroup
return {
    groupName = "table.ClearKeys",

    beforeEach = function( state )
        state.tbSource = {}
    end,

    cases = {
        {
            name = "Exists on the table table",
            func = function()
                expect( table.ClearKeys ).to.beA( "function" )
            end
        },

        {
            name = "Returns Table correctly with integer keys",
            func = function( state )
                state.tbSource = {
                    abc = "fish",
                    def = "power",
                }
                local tbResult = table.ClearKeys( state.tbSource )
                
                expect( #tbResult ).to.equal( 2 )
                expect( tbResult[1] ).to.equal( "power" )
                expect( tbResult[2] ).to.equal( "fish" )
            end
        },

        {
            name = "Clearing all keys and preserving the keys",
            func = function( state )
                state.tbSource = {
                    abc = { one = "fish" },
                    def = { two = "weak" },
                }
                local tbResult = table.ClearKeys( state.tbSource, true )
                
                expect( #tbResult ).to.equal( 2 )
                expect( tbResult[1].__key ).to.equal( "def" )
                expect( tbResult[1].two ).to.equal( "weak" )

                expect( tbResult[2].__key ).to.equal( "abc" )
                expect( tbResult[2].one ).to.equal( "fish" )
            end
        },

        {
            name = "Handles case correctly when preserving keys without table type values",
            func = function( state )
                state.tbSource = {
                    abc = "fish",
                    def = "power",
                }

                expect( table.ClearKeys, state.tbSource, true ).to.err()
            end
        },
    }
}