-- -- -- -- -- -- -- -- -- -- -- -- --
-- cart_mission/player_bullet.lua   --
-- -- -- -- -- -- -- -- -- -- -- -- --

-- TODO: consider heat wave distortion behind a bullet

function new_player_bullet(params)
    local start_xy = params.start_xy

    local is_destroyed = false

    local bullet_sprite = new_static_sprite(4, 6, 4, 12)

    local movement = new_movement_line_factory {
        angle = .25,
        angled_speed = 2.5,
        -- DEBUG:
        --angled_speed = .5,
    }(start_xy)

    return {
        has_finished = function()
            return is_destroyed or _is_safely_outside_gameplay_area(movement.xy)
        end,

        collision_circle = function()
            return {
                xy = movement.xy.minus(0, -.5),
                r = 1.5,
            }
        end,

        destroy = function()
            is_destroyed = true
        end,

        _update = function()
            movement._update()
        end,

        _draw = function()
            bullet_sprite._draw(movement.xy)
        end,
    }
end
