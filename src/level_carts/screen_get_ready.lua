-- -- -- -- -- -- -- -- -- -- -- -- --
-- level_carts/screen_get_ready.lua --
-- -- -- -- -- -- -- -- -- -- -- -- --

function new_screen_get_ready(score, number)
    local score = score
    local number = number

    local screen = {}
    
    function screen.score()
        return score
    end
    function screen.number()
        return number
    end

    function screen.init()
        --music(0)
    end

    function screen.update()
        local next = screen

        if btnp(_button_left) then
            number = number - 1
        end
        if btnp(_button_right) then
            number = number + 1
        end
        if btnp(_button_o) then
            --sfx(0)
            score = score + 10
        end
        if btnp(_button_x) then
            next = new_screen_level(score, number)
        end

        return next
    end

    function screen.draw()
        cls(_bg_color)
        print("score  : " .. score, 10, 10, _color_12_true_blue)
        print("number : " .. number, 10, 16, _color_12_true_blue)
        print("get ready for level " .. _lvl_number, 20, 50, _color_2_darker_purple)
    end

    return screen
end
