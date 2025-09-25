--- @type GLuaTest_TestGroup
return {
    groupName = "table.ClearKeys",
    cases = {
        {
            name = "Exists on the table table",
            func = function()
                expect( table.ClearKeys ).to.beA( "function" )
            end
        },

        {
            name = "Clearing all keys",
            func = function()
                local table1 = {
                    A = "I",
                    B = "like",
                    C = "fish"
                }
                local table2 = table.ClearKeys( table1 )

                expect( table2 ).to.equal( {1 = "I", 2 = "like", 3 = "fish"} )
            end
        },

        {
            name = "Clearing all keys and preserving the keys",
            func = function()
                local table1 = {
                    One = {A = "I"},
                    Two = {B = "like"},
                    Three = {C = "fish"}
                }
                local table2 = table.ClearKeys( table1, true )

                expect( table2 ).to.aboutEqual( {
                        1 = {A = "I", __key = "One"},
                        2 = {B = "like", __key = "Two"},
                        3 = {C = "fish", __key = "Three"}
                    } )
            end
        },

        {
            name = "Table has no table type values",
            func = function()
                function errFunction()
                    local table1 = {
                        A = "I",
                        B = "like",
                        C = "fish"
                    }
                    local table2 = table.ClearKeys( table1, true )
                end
                
                expect( errFunction ).err()
            end
        },
    }
}