--- @type GLuaTest_TestGroup
return {
    groupName = "table.Add",
    cases = {
        {
            name = "Functions exists",
            func = function()
                expect( table.Add ).to.beA( "function" )
            end
        },

        {
            name = "Functions properly when adding one table onto an empty one",
            func = function()
                local table1 = { 5, 3, 1 }
                local table2 = {} 
                
                table.Add( table2, table1 )

                expect( table2 ).to.equal( { 5, 3, 1 } )
            end
        },

        {
            name = "Functions properly when adding values of one table to an non-empty table",
            func = function()
                local table1 = { 5, 3, 1 }
                local table2 = { 2 } 
                
                table.Add( table2, table1 )

                expect( table2 ).to.equal( { 2, 5, 3, 1 } )
            end
        },

        {
            name = "No source table",
            func = function()
                local table2 = { 2 }
                
                table.Add( table2, table1 )

                expect( table1 ).notTo.exist()
                expect( table2 ).to.equal( 2 )
            end
        },

        {
            name = "No target table",
            func = function()
                local table1 = { 5, 3, 1 }
                
                table.Add( table2, table1 )

                expect( table2 ).toNot.exist()
                expect( table.Add, table2, table1 ).to.err()
            end
        },
    }
}