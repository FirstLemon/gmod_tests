--- @type GLuaTest_TestGroup
return {
    groupName = "table.Add",
    cases = {
        {
            name = "Exists on the table table",
            func = function()
                expect( table.Add ).to.beA( "function" )
            end
        },

        {
            name = "Adding values to an empty table",
            func = function()
                local table1 = { 5, 3, 1 }
                local table2 = {} 
                
                table.Add(table2, table1)
                expect( table2 ).to.equal( {5, 3, 1} )
            end
        },

        {
            name = "Adding values of table to an non-empty table",
            func = function()
                local table1 = { 5, 3, 1 }
                local table2 = { 2 } 
                
                table.Add(table2, table1)
                expect( table2 ).to.equal( {2, 5, 3, 1} )
            end
        },

        {
            name = "No target table",
            func = function()
                local table1 = { 5, 3, 1 }
                
                table.Add(table2, table1)
                expect( table2 ).notTo.exist()
            end
        },

        {
            name = "No source table",
            func = function()
                local table2 = { 2 }
                
                table.Add(table2, table1)
                expect( table1 ).notTo.exist()
                expect( table2 ).to.equal( 2 )
            end
        },
    }
}