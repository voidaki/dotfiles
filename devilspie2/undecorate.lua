-- called when windows are closed
scripts_window_close = {"close.lua"}

-- Set var
local w_class = get_window_class()
local w_has_name = get_window_has_name()
local w_role = get_window_role()
local w_type = get_window_type()

if (w_class ==  "Spotify" and w_has_name) then
    undecorate_window()
end

if (w_class ==  "Code" and w_has_name) then
    undecorate_window()
end
