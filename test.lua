-- =========== test a* ===============
-- [[
local astar = require "astar"

-- [=[
local m = astar.new(20, 20, true)

m:set_start(0, 19)
m:set_end(19, 1)
m:add_block(1, 1)
for i = 3, 19 do
    m:add_block(4, i)
end
for i = 1, 18 do
    m:add_block(1, i)
end
m:add_blockset({
    {1,1},{1,2},{1,3},{1,4},{1,5},{1,6},{1,7},{1,8}
})
for i = 0, 10 do
    m:add_block(18, i)
end
m:add_blockset({
    {1,0},{1,19},{5,3},{6,3},{6,4},{6,5},{5,5},
    {9,9},{10,9},{11,9},{12,9},{13,9},
    {9,10},{9,11},{9,12},{9,13},{9,14},
    {14,9},{14,10},{14,11},{14,12},{14,13},{14,14},
    {9,14},{10,14},{11,14},{12,14},{13,14},
})
m:dump()
m:mark_connected()
m:dump_connected()
-- m:dump()
-- m:clear_block()
-- m:dump()
-- m:add_block(1,1)
-- m:dump()
-- local total_time, n = 0, 100
-- for i = 1, n do
--     local _, _, t = m:find_path()
--     total_time = total_time + t
-- end
-- -- if find then
--     m:dump()
--     print('avg time:', (total_time / n) * 1000, 'ms')
-- else
    -- print('no path!')
-- end
-- ]=]
--[[
local m1 = astar.new({
    {0, 1, 1, 0, 0},
    {0, 0, 0, 0, 0},
    {0, 0, 1, 1, 0},
    {1, 0, 0, 0, 0},
}, true)
m1:set_start(4, 3)
m1:set_end(0, 0)
m1:dump()
local _, _, cost_time = m1:find_path()
m1:dump()
print('cost time:', cost_time * 1000, 'ms')
-- ]]
-- =========== test jps ===============
-- local jps = require "jps"