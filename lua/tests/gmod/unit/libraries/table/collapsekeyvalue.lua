--- @type GLuaTest_TestGroup
return {
    groupName = "table.CollapseKeyValue",

    beforeEach = function( state )
        state.tbSource = {}
    end,

    cases = {
        {
            name = "Functions exists",
            func = function()
                expect( table.CollapseKeyValue ).to.beA( "function" )
            end
        },

        {
            name = "Functions properly when trying to collapse a keyvalue structure",
            func = function( state )
                state.tbSource = {
                    { Key = "Key1", Value = "Hello" },
                    { Key = "Key2", Value = 456},
                }
                local tbResult = table.CollapseKeyValue( state.tbSource )

                expect( tbResult.Key1 ).to.equal( "Hello" )
                expect( tbResult.Key2 ).to.equal( 456 )
            end
        },

        {
            name = "Throws error when trying to collapse a incorrect keyvalue structure",
            func = function( state )
                state.tbSource = {
                    { No = "Key1", Help = "Hello" },
                    { Thanks = "Key2", this = 456},
                }
                
                expect( table.CollapseKeyValue, state.tbSource).to.err()
            end
        },
    }
}