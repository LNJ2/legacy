-- mods/legacy/init.lua
-- ====================
-- Copyright (C) 2016 LNJ <git@lnj.li>
-- See the file LICENSE.

--[[
API Levels:
1 - to Minetest 0.3.1
2 - to MTG 0.4.10
3 - to MTG 0.4.12
4 - to MTG 0.4.13
5 - to TNG 16.03
6 - to TNG 16.04-2
7 - to TNG 16.05
8 - to TNG 16.06
9 - to TNG 16.07
10 - to TNG 16.08
11 - to TNG 16.09
12 - to AF8 0.XX BETA
13 - to AF8 0.XX BETA
 -- ==== --
15 - to AF8 1.00 (full API compatibility)
16 - to AF8 1.01

Levels 1-14 will only add aliases or replacements for world compatibility, NOT functions.
Levels 15+ will also register legacy functions, for mod compatibility.
]]

legacy = {}

legacy.currentLevel = 12
legacy.registeredLevels = {}

local function nextLevel(registeredLevel)
	legacy.registeredLevels[registeredLevel] = true
	if not legacy.registeredLevels[registeredLevel + 1] and
		registeredLevel < legacy.currentLevel and
		type( legacy.["registerLevel" .. tostring(registeredLevel)] ) == "function" then

		legacy.["registerLevel" .. tostring(registeredLevel)]()
	end

end

function legacy.requestApiLevel(ApiLevel)
	if type( legacy.["registerLevel" .. tostring(ApiLevel)] ) == "function" then
		legacy.["registerLevel" .. tostring(ApiLevel)]()
	end
end

function legacy.registerReplace(oldn, newn)
	-- register alias and lbm
	core.register_alias(oldn, newn)
	core.register_lbm({
		label = "Replace of old '"..oldn.."'-nodes",
		action = function(pos, node)
			node.name = newn
			core.set_node(pos, node)
		end
	})
end

function legacy.registerLevel1()
	legacy.registerReplace("stone", "material:stone")
	-- ... --

	legacy.nextLevel(1)
end

function legacy.registerLevel2()
	legacy.registerReplace("stone", "material:stone")
	-- ... --

	legacy.nextLevel(2)
end

function legacy.registerLevel3()
	legacy.registerReplace("stone", "material:stone")
	-- ... --

	legacy.nextLevel(3)
end

function legacy.registerLevel4()
	legacy.registerReplace("stone", "material:stone")
	-- ... --

	legacy.nextLevel(4)
end

function legacy.registerLevel5()
	legacy.registerReplace("stone", "material:stone")
	-- ... --

	legacy.nextLevel(5)
end

function legacy.registerLevel6()
	legacy.registerReplace("stone", "material:stone")
	-- ... --

	legacy.nextLevel(6)
end

function legacy.registerLevel7()
	legacy.registerReplace("stone", "material:stone")
	-- ... --

	legacy.nextLevel(7)
end

function legacy.registerLevel8()
	legacy.registerReplace("stone", "material:stone")
	-- ... --

	legacy.nextLevel(8)
end

function legacy.registerLevel9()
	legacy.registerReplace("stone", "material:stone")
	-- ... --

	legacy.nextLevel(9)
end

function legacy.registerLevel10()
	legacy.registerReplace("stone", "material:stone")
	-- ... --

	legacy.nextLevel(10)
end

function legacy.registerLevel11()
	legacy.registerReplace("stone", "material:stone")
	-- ... --

	legacy.nextLevel(11)
end
