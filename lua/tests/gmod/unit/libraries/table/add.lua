--- @type GLuaTest_TestGroup
return {
    groupName = "table.Add",

    beforeEach = function( state )
        state.tbSource = {}
        state.tbTarget = {}
    end,

    cases = {
        {
            name = "Functions exists",
            func = function()
                expect( table.Add ).to.beA( "function" )
            end
        },

        {
            name = "Functions properly when adding one table onto an empty one",
            func = function( state )
                state.tbSource = { 5, 3, 1 }
                state.tbTarget = {} 
                
                local tbResult = table.Add( state.tbTarget, state.tbSource )
                
                expect( tbResult ).to.equal( state.tbTarget )
                expect( #tbResult ).to.equal( 3 )
                expect( state.tbTarget[1] ).to.equal( 5 )
                expect( state.tbTarget[2] ).to.equal( 3 )
                expect( state.tbTarget[3] ).to.equal( 1 )
            end
        },

        {
            name = "Functions properly when adding values of one table to an non-empty table",
            func = function( state )
                state.tbSource = { 5, 3, 1 }
                state.tbTarget = { 2 }
                
                local tbResult = table.Add( state.tbTarget, state.tbSource )

                expect( #tbResult ).to.equal( 4 )
                expect( state.tbTarget[1] ).to.equal( 2 )
                expect( state.tbTarget[2] ).to.equal( 5 )
                expect( state.tbTarget[3] ).to.equal( 3 )
                expect( state.tbTarget[4] ).to.equal( 1 )
            end
        },

        {
            name = "No source table is being handled properly",
            func = function( state )
                state.tbTarget = { 2 }
                
                local tbResult = table.Add( state.tbTarget, nil )

                expect( tbSource ).notTo.exist()
                expect( tbResult ).to.equal( state.tbTarget )
                expect( #tbResult ).to.equal( 1 )
                expect( state.tbTarget[1] ).to.equal( 2 )
            end
        },

        {
            name = "No target table is being handled properly",
            func = function( state )
                state.tbSource = { 3 }
                
                local tbResult = table.Add( nil, tbSource )

                expect( tbTarget ).toNot.exist()
                expect( tbResult ).to.equal( nil )
            end
        },
    }
}