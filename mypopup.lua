local awful = require "awful"
local beautiful = require "beautiful"
local gears = require "gears"
local wibox = require "wibox" 

local naughty = require("naughty")

local dpi = beautiful.xresources.apply_dpi
local idk = awful.popup {
    widget = {
        {
        
            {
                {
                    text   = "The weather is in cairo is",
                    widget = wibox.widget.textbox
                },
                bg     = "#0000FF", 
                background_color = "#0000FF",
                clip   = true,
                shape  = gears.shape.rounded_bar,
                widget = wibox.widget.background , 
           
               
            },
            {
                value         = 0.5,
                forced_height = 50,
                forced_width  = 150, 
                widget   = wibox.widget.progressbar 
            },
            layout = wibox.layout.fixed.vertical,
        },
        margins = 10,
        widget  = wibox.container.margin
    },
    border_color = "#0000FF",
    border_width = 5,
    placement    =   function(self) awful.placement.top_right(self, { offset = { y = dpi(62), } }) end,
    shape        = gears.shape.rounded_rect,
    visible      = true, 
    hide_on_right_click = true, 
    ontop = true,  

  
}


local function show()
    idk.visible = true
end

return {
    show = show
}






