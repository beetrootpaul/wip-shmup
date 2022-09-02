-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- cart_mission/movement/new_movement_fixed.lua   --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

function new_movement_fixed(params)
    local start_x = params.start_x
    local start_y = params.start_y
    local timer = params.frames and new_timer(params.frames) or new_fake_timer()

    local movement = {
        x = start_x,
        y = start_y,
        speed_x = 0,
        speed_y = 0,
    }

    function movement.has_reached_target()
        return timer.ttl <= 0
    end

    function movement._update()
        timer._update()
    end

    return movement
end

