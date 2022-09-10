-- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- cart_mission/game/level_descriptor.lua --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --

function new_level_descriptor()
    -- number below are sprites in the sprite sheet
    -- * end of the level
    local end_tile = 112
    -- * enemy tiles, over empty space
    local en_min, en_max = 73, 79
    -- * enemy tiles, over structure
    local en_over_st_min, en_over_st_max = 89, 95
    -- * structure tiles
    local st_center = 81
    local st_edge_left, st_edge_right, st_edge_top, st_edge_bottom = 80, 82, 65, 97
    local st_outside_left_top, st_outside_left_bottom, st_outside_right_top, st_outside_right_bottom = 64, 96, 66, 98
    local st_inner_left_top, st_inner_left_bottom, st_inner_right_top, st_inner_right_bottom = 83, 99, 84, 100
    local st_filler_left_top, st_filler_left_bottom, st_filler_right_top, st_filler_right_bottom = 116, 68, 115, 67

    local max_defined_distance

    -- markers from the map, combined into a single long 2D array and extended by several 
    -- extra columns on both sides in -- order to make further computations easier
    local markers = {}
    do
        local markers_per_screen_w = 8
        local x = 1
        for intro_infinite_scroll_x = 1, markers_per_screen_w + 1 do
            markers[x] = { nil, nil, nil, nil, nil, nil }
            x = x + 1
        end
        for level_descriptor_row = 0, 3 do
            for map_x = 0, 127 do
                markers[x] = { nil, nil, nil, nil, nil, nil }
                local map_y = level_descriptor_row * 8
                for y = 1, 6 do
                    local marker = mget(map_x, map_y + y)
                    markers[x][y] = marker
                    if marker == end_tile then
                        max_defined_distance = (x - 1) * 2
                        break
                    end
                end
                x = x + 1
                if max_defined_distance then
                    break
                end
            end
            if max_defined_distance then
                break
            end
        end
        for outro_infinite_scroll_x = 1, markers_per_screen_w + 1 do
            markers[x] = { nil, nil, nil, nil, nil, nil }
            x = x + 1
        end
    end

    -- conversion from markers to level descriptor
    local structures_occupied = { [-1] = {}, [0] = {} }
    local structures, enemies = {}, {}
    for x = 1, #markers do
        local distance = x * 2 - 1
        local distance2 = distance + 1
        structures_occupied[distance] = {}
        structures_occupied[distance2] = {}
        structures[distance] = {}
        structures[distance2] = {}
        enemies[distance] = {}
        enemies[distance2] = {}
        for y = 1, 6 do
            local lane = y * 2 - 1
            local lane2 = lane + 1

            local marker = markers[x][y]
            if marker == st_center or (marker and marker >= en_over_st_min and marker <= en_over_st_max) then
                structures_occupied[distance][lane] = true
                structures_occupied[distance][lane2] = true
                structures_occupied[distance2][lane] = true
                structures_occupied[distance2][lane2] = true

                -- guard tiles to make further computations easier
                if lane == 1 then
                    structures_occupied[distance][-1] = true
                    structures_occupied[distance][0] = true
                    structures_occupied[distance2][-1] = true
                    structures_occupied[distance2][0] = true
                elseif lane2 == 12 then
                    structures_occupied[distance][13] = true
                    structures_occupied[distance][14] = true
                    structures_occupied[distance2][13] = true
                    structures_occupied[distance2][14] = true
                end
                if distance == 1 then
                    structures_occupied[-1][lane] = true
                    structures_occupied[-1][lane2] = true
                    structures_occupied[0][lane] = true
                    structures_occupied[0][lane2] = true
                end
            end
            if marker and marker >= en_min and marker <= en_max then
                enemies[distance][lane] = marker
            elseif marker and marker >= en_over_st_min and marker <= en_over_st_max then
                enemies[distance][lane] = marker - (en_over_st_min - en_min)
            end
        end
    end

    -- conversion from occupied or not occupied structure tiles to specific structure tile variants 
    for distance = 2, #structures_occupied - 1 do
        for lane = 1, 12 do
            -- we are comparing here tiles around the middle chosen one:
            --  - l = left
            --  - r = right
            --  - t = top
            --  - b = bottom
            --  - m = middle
            local dist_t = distance
            local dist_m = distance - 1
            local dist_b = distance - 2
            local lane_l = lane - 1
            local lane_m = lane
            local lane_r = lane + 1
            local slt, smt, srt = structures_occupied[dist_t][lane_l], structures_occupied[dist_t][lane_m], structures_occupied[dist_t][lane_r]
            local slm, smm, srm = structures_occupied[dist_m][lane_l], structures_occupied[dist_m][lane_m], structures_occupied[dist_m][lane_r]
            local slb, smb, srb = structures_occupied[dist_b][lane_l], structures_occupied[dist_b][lane_m], structures_occupied[dist_b][lane_r]
            local sllt, sllb = structures_occupied[dist_t][lane_l - 1], structures_occupied[dist_b][lane_l - 1]
            local srrt, srrb = structures_occupied[dist_t][lane_r + 1], structures_occupied[dist_b][lane_r + 1]
            local sltt, srtt = structures_occupied[dist_t + 1][lane_l], structures_occupied[dist_t + 1][lane_r]
            local slbb, srbb = structures_occupied[dist_b - 1][lane_l], structures_occupied[dist_b - 1][lane_r]
            local tile_to_set
            if smm then
                if not slm and not smt then
                    tile_to_set = st_outside_left_top
                elseif not slm and not smb then
                    tile_to_set = st_outside_left_bottom
                elseif not srm and not smt then
                    tile_to_set = st_outside_right_top
                elseif not srm and not smb then
                    tile_to_set = st_outside_right_bottom
                elseif not slm and not slt and not slb then
                    tile_to_set = st_edge_left
                elseif not srm and not srt and not srb then
                    tile_to_set = st_edge_right
                elseif not smt and not slt and not srt then
                    tile_to_set = st_edge_top
                elseif not smb and not slb and not srb then
                    tile_to_set = st_edge_bottom
                elseif (not sllt and slm and not smt and srt) or (not sltt and smt and not slm and slb) then
                    tile_to_set = st_filler_left_top
                elseif (not sllb and slm and not smb and srb) or (not slbb and smb and not slm and slt) then
                    tile_to_set = st_filler_left_bottom
                elseif (not srrt and srm and not smt and slt) or (not srtt and smt and not srm and srb) then
                    tile_to_set = st_filler_right_top
                elseif (not srrb and srm and not smb and slb) or (not srbb and smb and not srm and srt) then
                    tile_to_set = st_filler_right_bottom
                else
                    tile_to_set = st_center
                end
            else
                if slm and smt then
                    tile_to_set = st_inner_left_top
                elseif slm and smb then
                    tile_to_set = st_inner_left_bottom
                elseif srm and smt then
                    tile_to_set = st_inner_right_top
                elseif srm and smb then
                    tile_to_set = st_inner_right_bottom
                end
            end
            structures[dist_m][lane_m] = tile_to_set
        end
    end

    return {
        structures = structures,
        enemies = enemies,
        max_defined_distance = max_defined_distance,
    }
end 