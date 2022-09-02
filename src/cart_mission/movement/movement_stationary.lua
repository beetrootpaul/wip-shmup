-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- cart_mission/movement/movement_stationary.lua   --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

function new_movement_stationary(params)
    local movement = {
        xy = params.start_xy,
        speed_xy = _xy(0, _m.scroll_per_frame),
    }

    function movement.has_reached_target()
        return false
    end

    function movement._update()
        movement.xy = movement.xy.plus(movement.speed_xy)
    end

    return movement
end

