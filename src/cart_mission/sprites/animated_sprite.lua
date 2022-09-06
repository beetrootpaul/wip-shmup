-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- cart_mission/sprites/animated_sprite.lua  --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

function new_animated_sprite(sprite_w, sprite_h, sprite_xs, sprite_y, params)
    params = params or {}
    local from_left_top_corner = params.from_left_top_corner
    local transparent_color = params.transparent_color

    local frame = 1
    local max_frame = #sprite_xs

    return {
        _update = function()
            frame = _tni(frame, max_frame)
        end,

        _draw = function(xy, opts)
            opts = opts or {}

            if not from_left_top_corner then
                xy = xy.minus(sprite_w / 2, sprite_h / 2).round()
            else
                xy = xy.round()
            end

            if transparent_color then
                palt(_color_0_black, false)
                palt(transparent_color, true)
            end

            if opts.flash_color then
                for c = 0, 15 do
                    pal(c, opts.flash_color, 0)
                end
            end

            sspr(
                sprite_xs[frame], sprite_y,
                sprite_w, sprite_h,
                _gaox + xy.x, xy.y
            )

            if opts.flash_color then
                pal(0)
            end

            if transparent_color then
                palt()
            end
        end,
    }
end