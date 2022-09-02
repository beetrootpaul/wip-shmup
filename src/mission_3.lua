-- -- -- -- -- -- --
-- mission_3.lua  --
-- -- -- -- -- -- --

_m = {
    mission_number = 3,
    scroll_per_frame = 3,
    bg_color = _color_2_darker_purple,
    has_bg_tiles = false,
}

_m.bullet_orb = {
    sprite = new_static_sprite(4, 4, 124, 64),
    collision_circle_r = 2,
}

function _m.enemy_properties_for(enemy_map_marker, start_x, start_y)
    if enemy_map_marker == 79 then
        return {
            health = 1,
            ship_sprite = new_static_sprite(8, 8, 0, 64, {
                transparent_color = _color_11_dark_green,
            }),
            -- TODO: consider unifying the way collision circles are defined for enemies, player, boss, bullets
            collision_circle_r = 4,
            collision_circle_offset_y = 0,
            movement = new_movement_wait_then_charge {
                start_x = start_x,
                start_y = start_y,
            },
            bullet_fire_timer = new_timer(15),
            spawn_bullets = function(movement)
                local bullets = {}
                for i = 3, 5 do
                    add(bullets, new_enemy_bullet {
                        bullet_sprite = _m.bullet_orb.sprite,
                        collision_circle_r = _m.bullet_orb.collision_circle_r,
                        movement = new_movement_angled_line {
                            start_x = movement.x,
                            start_y = movement.y,
                            base_speed_y = movement.speed_y,
                            angle = .5 + i / 16,
                            angled_speed = 4,
                        },
                    })
                end
                return bullets
            end,
            powerups_distribution = "t",
        }
    end
    assert(false, "unexpected enemy_map_marker = " .. enemy_map_marker)
end

function _m.boss_properties()
    return {
        health = 20,
        sprite = new_static_sprite(56, 26, 4, 98, {
            transparent_color = _color_11_dark_green,
        }),
        collision_circles = function(movement)
            return {
                { x = movement.x - .5, y = movement.y - .5 + 3, r = 5 },
            }
        end,
        phases = {
            -- phase 1:
            {
                triggering_health_fraction = 1,
                bullet_fire_timer = new_timer(40),
                spawn_bullets = function(movement)
                    local bullets = {}
                    add(bullets, new_enemy_bullet {
                        bullet_sprite = _m.bullet_orb.sprite,
                        collision_circle_r = _m.bullet_orb.collision_circle_r,
                        movement = new_movement_angled_line {
                            start_x = movement.x,
                            start_y = movement.y + 3,
                            base_speed_y = movement.speed_y,
                            angle = .75,
                            angled_speed = 1,
                        },
                    })
                    return bullets
                end,
                movement_cycle = {
                    function(movement)
                        return new_movement_fixed {
                            start_x = movement.x,
                            start_y = movement.y,
                        }
                    end,
                },
            },
        },
    }
end
