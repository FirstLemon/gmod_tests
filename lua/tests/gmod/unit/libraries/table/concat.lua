--- @type GLuaTest_TestGroup
return {
    groupName = "table.concat",

    beforeEach = function( state )
        state.tbSource = {}
    end,

    cases = {
        {
            name = "Functions exists",
            func = function()
                expect( table.concat ).to.beA( "function" )
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
    }
}