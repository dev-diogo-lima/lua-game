function TableCheck(table, target)
    for key, element in pairs(table) do
        if element == target then
            return true
        end
    end
    return nil      -- Elemento não encontrado
end

function GetTableIndex(table, target)
    for index, element in pairs(table) do
        if element == target then
            return index
        end
    end
    return nil      -- Elemento não encontrado
end

local t = {
    a = "teste1",
    b = "teste2"
}

print(t[0])
-- t = {"a", "b", "c", "d"}


print(TableCheck(t, "teste1"))
print(GetTableIndex(t, "teste2"))