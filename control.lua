--control.lua

script.on_event({defines.events.on_tick},
	function(e)
		if e.tick % 60 == 0 then -- common trick to reduce how often it runs, just 1/second
			for index,player in pairs(game.pairs) do -- loop through all players on the server
				if player.get_invetory(defines.inventory.player_armor).ger_item_count("fire-armor")>=1 then --if they're wearing our armor
					game.surfaces[1].create_entity{name="fire-flame", position = player.position, force="neutral"} --create the fire where they're standing
				end
			end
		end
	end
)