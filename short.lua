local string_to_shorten = "Ghana is a place."
local minimum_length = ""
local maximum_length = ""
local print_info = false
local print_output = true

-- Sanity checks
if type(maximum_length) == type("") then 
    maximum_length = string.len(string_to_shorten)
    if print_info == true then print("Maximum_length is a string, defaulting to len of string_to_shorten.") end
else
    if print_info == true then print("Maximum_length is already a number, doing nothing.") end
end
if type(minimum_length) == type("") then 
    minimum_length = 1
    if print_info == true then print("Minimum_length is a string, defaulting to 1.") end
else
    if print_info == true then print("Minimum_length is already a number, doing nothing.") end
end
if type(maximum_length) == type(1) and 0 <= maximum_length and minimum_length <= maximum_length and maximum_length <= string.len(string_to_shorten) and maximum_length%1 == 0 then
    if print_info == true then print("Checking that minimum_length is correct: [OK]") end
else
    if print_info == true then print("Checking that minimum_length is correct: [FAIL]") end
    return
end
if type(minimum_length) == type(1) and 1 <= minimum_length and minimum_length <= maximum_length and minimum_length%1 == 0 then
    if print_info == true then print("Checking that minimum_length is correct: [OK]") end
elseif type(minimum_length) == type(1) and minimum_length < 1 and minimum_length <= maximum_length and 0 < minimum_length then
    if print_info == true then print("Checking that minimum_length is correct: [OK]") end
    if print_info == true then print("Minimum_length is less than 1, treating it as a % of maximum_length.") end
    minimum_length = math.floor((minimum_length * maximum_length) + 0.5)
else
    if print_info == true then print("Checking that minimum_length is correct: [FAIL]") end
    return
end
if type(string_to_shorten) == type("a") then
    if print_info == true then print("Checking that string_to_shorten is correct: [OK]") end
else
    if print_info == true then print("Checking that string_to_shorten is correct: [FAIL]") end
    return
end

-- Main code
local function string_to_table(str)
    stable = {}
    for i = 1, #str do
        stable[i] = str:sub(i, i)
    end
    return stable
end
local function table_to_string(t)
    local str = ""
    for i, v in pairs(t) do
        str = str .. v
    end
    return str
end
local output = {}
local tabled = string_to_table(string_to_shorten)
for length = minimum_length, maximum_length, 1 do 
    local orderlist = {}
    local divider = #tabled/length
    for position = divider, #tabled + 0.01, divider do
        table.insert(orderlist, tabled[math.floor(position + 0.5)])
    end
    local string_output = table_to_string(orderlist)
    table.insert(output, string_output)
end

-- Result
if print_output == true then
    for i, str in pairs(output) do
        print(string.len(str) .. " letter: " .. '"' .. str .. '"')
    end
end
return output
