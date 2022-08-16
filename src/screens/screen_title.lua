-- -- -- -- -- -- -- -- -- -- --
-- screens/screen_title.lua   --
-- -- -- -- -- -- -- -- -- -- --

function new_screen_title()
    local screen = {}

    function screen.update()
        if btnp(_button_x) or btnp(_button_o) then
            return new_screen_gameplay()
        end
        return screen
    end

    function screen.draw()
        print "title"
    end

    return screen
end