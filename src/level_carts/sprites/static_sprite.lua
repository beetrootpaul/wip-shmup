-- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- level_carts/sprites/static_sprite.lua  --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --

function new_static_sprite(params)
    local sprite_w = params.sprite_w
    local sprite_h = params.sprite_h
    local sprite_x = params.sprite_x
    local sprite_y = params.sprite_y

    return {
        draw = function(x, y, opts)
            opts = opts or {}
            
            if not opts.from_left_top_corner then
                x = x - sprite_w / 2
                y = y - sprite_h / 2
            end

            palt(_color_0_black, false)
            palt(_color_11_dark_green, true)

            if opts.flash_color then
                for c = 0, 15 do
                    pal(c, opts.flash_color, 0)
                end
            end

            sspr(
                sprite_x, sprite_y,
                sprite_w, sprite_h,
                x, y
            )

            if opts.flash_color then
                pal(0)
            end
            palt()
        end,
    }
end