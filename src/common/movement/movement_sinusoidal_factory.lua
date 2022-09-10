-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- common/movement/movement_sinusoidal_factory.lua --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

function new_movement_sinusoidal_factory()
    return function(start_xy)
        local age = 0

        local function x()
            return start_xy.x + 14 * sin(age / 120)
        end

        local movement = {
            xy = _xy(x(), start_xy.y),
            speed_xy = _xy(
                x() - start_xy.x,
                1
            )
        }

        function movement.has_finished()
            return false
        end

        function movement._update()
            movement.speed_xy = _xy(x() - movement.xy.x, movement.speed_xy.y)
            movement.xy = movement.xy.plus(movement.speed_xy)
            age = age + 1
        end

        return movement
    end
end

