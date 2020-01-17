ops = {'+', '-', '*', '/'}
flag = false
opers = {}
result = ""

local function has_value (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end
    return false
end

io.write("Input text: ")
line = io.read()

exp = {}
for substring in line:gmatch("%S+") do
   table.insert(exp, substring)
end



for i = 1, #exp do 
    if has_value(ops, exp[i]) then
        table.insert(opers, exp[i])

    elseif tonumber(exp[i]) ~= nil then
        if flag == true then
            zn = table.remove(opers, 1)  
            result = result.." "..zn.." "..exp[i]  
        else
            result = result.." "..exp[i]
            flag = true
        end
    end
end

print(result)
