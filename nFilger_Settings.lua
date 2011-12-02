local _, addon = ...

addon.FilgerSettings = {
	configmode = false,
}

--[[ CD-Example
		{
			Name = 'COOLDOWN',
			Direction = 'RIGHT',
			Interval = 4,
			Mode = 'ICON',
			setPoint = { 'CENTER', UIParent, 'CENTER', 0, -100 },

			-- Wild Growth
			{ spellID = 48438, size = 32, filter = 'CD' },
		},
]]

addon.SpellList = {
	['DRUID'] = {
		{
			Name = 'P_PROC_ICON',
			Direction = 'DOWN',
			Interval = 6,
			Mode = 'ICON',
			setPoint = { 'LEFT', UIParent, 'CENTER', 150, 50 },

			-- Savage Roar
			{ spellID = 52610, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Survival Instincts
			{ spellID = 61336, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Tree of Life
			{ spellID = 33891, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Innervate
			{ spellID = 29166, size = 38, unitId = 'player', caster = 'all', filter = 'BUFF' },
			-- Barkskin
			{ spellID = 22812, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Pulverize
			{ spellID = 80951, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
		},
		{
			Name = 'T_DEBUFF_ICON',
			Direction = 'DOWN',
			Interval = 6,
			Mode = 'ICON',
			setPoint = { 'RIGHT', UIParent, 'CENTER', -150, 50 },

			-- Faerie Fire - Feral
			{ spellID = 91565, size = 38, unitId = 'target', caster = 'all', filter = 'DEBUFF' },
			-- Demoralizing Roar
			{ spellID = 99, size = 38, unitId = 'target', caster = 'all', filter = 'DEBUFF' },
			-- Moonfire
			{ spellID = 8921, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Sunfire
			{ spellID = 93402, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Insect Swarm
			{ spellID = 5570, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Rake
			{ spellID = 1822, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Rip
			{ spellID = 1079, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Lacerate
			{ spellID = 33745, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Pounce Bleed
			{ spellID = 9007, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Mangle
			{ spellID = 33876, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
		},
		{
			Name = 'P_CD_ICON',
			Direction = 'DOWN',
			Interval = 6,
			Mode = 'ICON',
			setPoint = { 'RIGHT', UIParent, 'CENTER', -196, 50 },

			-- Starfall
			{ spellID = 48505, size = 38, filter = 'CD' },
			-- Starsurge
			{ spellID = 78674, size = 38, filter = 'CD' },
			-- Faerie Fire (Feral)
			{ spellID = 16857, size = 38, filter = 'CD' },
			-- Thrash
			{ spellID = 77758, size = 38, filter = 'CD' },
			-- Swipe (Bear)
			{ spellID = 779, size = 38, filter = 'CD' },
			-- Mangle
			{ spellID = 33878, size = 38, filter = 'CD' },
			-- Maul
			{ spellID = 6807, size = 38, filter = 'CD' },
		},
	},
	['HUNTER'] = {
		{
			Name = 'P_PROC_ICON',
			Direction = 'DOWN',
			Interval = 6,
			Mode = 'ICON',
			setPoint = { 'LEFT', UIParent, 'CENTER', 150, 50 },

			-- Lock and Load
			{ spellID = 56342, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Improved Steady Shot
			{ spellID = 53224, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Focus Fire
			{ spellID = 82692, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Ready, Set, Aim...
			{ spellID = 82925, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Rapid Fire
			{ spellID = 3045, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
		},
		{
			Name = 'T_DEBUFF_ICON',
			Direction = 'DOWN',
			Interval = 6,
			Mode = 'ICON',
			setPoint = { 'RIGHT', UIParent, 'CENTER', -150, 50 },

			-- Serpent Sting
			{ spellID = 1978, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Black Arrow
--			{ spellID = 3674, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Explosive Shot
			{ spellID = 53301, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },

		},
		{
			Name = 'P_CD_ICON',
			Direction = 'DOWN',
			Interval = 6,
			Mode = 'ICON',
			setPoint = { 'RIGHT', UIParent, 'CENTER', -196, 50 },

			-- Explosive Shot
			{ spellID = 53301, size = 38, filter = 'CD' },
			-- Chimera Shot
			{ spellID = 53209, size = 38, filter = 'CD' },
			-- Black Arrow
			{ spellID = 3674, size = 38, filter = 'CD' },
			-- Kill Command
			{ spellID = 34026, size = 38, filter = 'CD' },

		},
	},
	['MAGE'] = {
		{
			Name = 'P_PROC_ICON',
			Direction = 'LEFT',
			Interval = 4,
			Mode = 'ICON',
			setPoint = { 'RIGHT', UIParent, 'CENTER', -160, -20 },

			-- Frostbite
			--{ spellID = 11071, size = 38, unitId = 'target', caster = 'all', filter = 'DEBUFF' },
			-- Winter's Chill
			{ spellID = 28593, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Fingers of Frost
			{ spellID = 44544, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Fireball!
			{ spellID = 57761, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Hot Streak
			{ spellID = 44445, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Missile Barrage
			{ spellID = 54486, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Clearcasting
			{ spellID = 12536, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Impact
			{ spellID = 12358, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
		},
		{
			Name = 'T_DEBUFF_ICON',
			Direction = 'RIGHT',
			Interval = 4,
			Mode = 'ICON',
			setPoint = { 'LEFT', UIParent, 'CENTER', 160, -20 },

			-- Polymorph
			{ spellID = 118, size = 38, unitId = 'target', caster = 'all', filter = 'DEBUFF' },
			-- Arcane Blast
			{ spellID = 36032, size = 38, unitId = 'player', caster = 'player', filter = 'DEBUFF' },
			-- Improved Scorch
			{ spellID = 11367, size = 38, unitId = 'target', caster = 'all', filter = 'DEBUFF' },
			-- Scorch
			{ spellID = 2948, size = 38, unitId = 'target', caster = 'all', filter = 'DEBUFF' },
			-- Slow
			{ spellID = 31589, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Ignite
			{ spellID = 11119, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Living Bomb
			{ spellID = 44457, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Pyroblast!
			{ spellID = 92315, size = 38, unitId = 'player', caster = 'player', filter = 'DEBUFF' },
		},
		{
			Name = 'F/DEBUFF_BAR',
			Direction = 'UP',
			IconSide = 'LEFT',
			Interval = 4,
			Mode = 'BAR',
			setPoint = { 'LEFT', UIParent, 'CENTER', 160, 100 },

			-- Polymorph
			{ spellID = 118, size = 32, barWidth = 191, unitId = 'focus', caster = 'all', filter = 'DEBUFF' },
		},
	},
	['WARRIOR'] = {
		{
			Name = 'P_COOLDOWN_ICON',
			Direction = 'DOWN',
			Interval = 4,
			Mode = 'ICON',
			setPoint = { 'LEFT', UIParent, 'CENTER', -196, 50 },

			-- Whirlwind
			{ spellID = 1680, size = 38, unitId = 'player', caster = 'player', filter = 'CD' },
		},
		{
			Name = 'P_PROC_ICON',
			Direction = 'DOWN',
			Interval = 4,
			Mode = 'ICON',
			setPoint = { 'LEFT', UIParent, 'CENTER', 160, 50 },

			-- Sudden Death
			--{ spellID = 52437, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Sword and Board
			--{ spellID = 50227, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Blood Reserve
			{ spellID = 64568, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Last Stand
			{ spellID = 12975, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Shield Wall
			{ spellID = 871, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Shield Block
			{ spellID = 2565, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Executioner
			{ spellID = 90806, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
		},
		{
			Name = 'T_DEBUFF_ICON',
			Direction = 'DOWN',
			Interval = 4,
			Mode = 'ICON',
			setPoint = { 'RIGHT', UIParent, 'CENTER', -160, 50 },

			-- Hamstring
			{ spellID = 1715, size = 38, unitId = 'target', caster = 'all', filter = 'DEBUFF' },
			-- Rend
			{ spellID = 94009, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Sunder Armor
			{ spellID = 7386, size = 38, unitId = 'target', caster = 'all', filter = 'DEBUFF' },
			-- Expose Armor
			--{ spellID = 48669, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Thunder Clap
			{ spellID = 6343, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Infected Wounds
			{ spellID = 48484, size = 38, unitId = 'target', caster = 'all', filter = 'DEBUFF' },
			-- Frost Fever
			{ spellID = 55095, size = 38, unitId = 'target', caster = 'all', filter = 'DEBUFF' },
			-- Demoralizing Shout
			{ spellID = 1160, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Demoralizing Roar
			{ spellID = 99, size = 38, unitId = 'target', caster = 'all', filter = 'DEBUFF' },
			-- Curse of Weakness
			{ spellID = 702, size = 38, unitId = 'target', caster = 'all', filter = 'DEBUFF' },
		},
	},
	['SHAMAN'] = {
		{
			Name = 'P_BUFF_ICON',
			Direction = 'LEFT',
			Interval = 4,
			Mode = 'ICON',
			setPoint = { 'RIGHT', UIParent, 'CENTER', -160, 24 },

			-- Earth Shield
			{ spellID = 974, size = 32, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Riptide
			{ spellID = 61295, size = 32, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Lightning Shield
			{ spellID = 324, size = 32, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Water Shield
			{ spellID = 52127, size = 32, unitId = 'player', caster = 'player', filter = 'BUFF' },
		},
		{
			Name = 'T_BUFF_ICON',
			Direction = 'RIGHT',
			Interval = 4,
			Mode = 'ICON',
			setPoint = { 'LEFT', UIParent, 'CENTER', 160, 24 },

			-- Earth Shield
			{ spellID = 974, size = 32, unitId = 'target', caster = 'player', filter = 'BUFF' },
			-- Riptide
			{ spellID = 61295, size = 32, unitId = 'target', caster = 'player', filter = 'BUFF' },
		},
		{
			Name = 'P_PROC_ICON',
			Direction = 'LEFT',
			Interval = 4,
			Mode = 'ICON',
			setPoint = { 'RIGHT', UIParent, 'CENTER', -160, -20 },

			-- Maelstorm Weapon
			{ spellID = 53817, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Shamanistic Rage
			{ spellID = 30823, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Clearcasting
			{ spellID = 16246, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Tidal Waves
			{ spellID = 51562, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Ancestral Fortitude
			{ spellID = 16236, size = 38, barWidth = 187, unitId = 'target', caster = 'player', filter = 'BUFF' },
		},
		{
			Name = 'T_DEBUFF_ICON',
			Direction = 'RIGHT',
			Interval = 4,
			Mode = 'ICON',
			setPoint = { 'LEFT', UIParent, 'CENTER', 160, -20 },

			-- Hex
			{ spellID = 51514, size = 38, unitId = 'target', caster = 'all', filter = 'DEBUFF' },
			-- Storm Strike
			{ spellID = 17364, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Earth Shock
			{ spellID = 8042, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Frost Shock
			{ spellID = 8056, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Flame Shock
			{ spellID = 8050, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
		},
		{
			Name = 'F/DEBUFF_BAR',
			Direction = 'UP',
			IconSide = 'LEFT',
			Interval = 4,
			Mode = 'BAR',
			setPoint = { 'LEFT', UIParent, 'CENTER', 160, 100 },

			-- Hex
			{ spellID = 51514, size = 32, barWidth = 200, unitId = 'focus', caster = 'all', filter = 'DEBUFF' },
		},
	},
	['PALADIN'] = {
		{
			Name = 'P_BUFF_ICON',
			Direction = 'LEFT',
			Interval = 4,
			Opacity = 1,
			Mode = 'ICON',
			setPoint = { 'RIGHT', UIParent, 'CENTER', -160, 24 },

			-- Beacon of Light
			{ spellID = 53563, size = 32, unitId = 'player', caster = 'player', filter = 'BUFF' },
		},
		{
			Name = 'T_BUFF_ICON',
			Direction = 'RIGHT',
			Interval = 4,
			Opacity = 1,
			Mode = 'ICON',
			setPoint = { 'LEFT', UIParent, 'CENTER', 160, 24 },

			-- Beacon of Light
			{ spellID = 53563, size = 32, unitId = 'target', caster = 'player', filter = 'BUFF' },
		},
		{
			Name = 'P_PROC_ICON',
			Direction = 'LEFT',
			Interval = 4,
			Mode = 'ICON',
			setPoint = { 'RIGHT', UIParent, 'CENTER', -160, -20 },

			-- Judgements of the Pure
			{ spellID = 53671, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Holy Shield
			{ spellID = 20925, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Infusion of Light
			{ spellID = 54149, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Divine Plea
			{ spellID = 54428, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Essence of Life
			{ spellID = 60062, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Divine Illumination
			{ spellID = 31842, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
		},
		{
			Name = 'T_DEBUFF_ICON',
			Direction = 'RIGHT',
			Interval = 4,
			Mode = 'ICON',
			setPoint = { 'LEFT', UIParent, 'CENTER', 160, -20 },

			-- Hammer of Justice
			{ spellID = 853, size = 38, unitId = 'target', caster = 'all', filter = 'DEBUFF' },
			-- Judgement of Light
			{ spellID = 20271, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Judgement of Justice
			--{ spellID = 53407, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Judgement of Wisdom
			--{ spellID = 20186, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Heart of the Crusader
			--{ spellID = 54499, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Blood Corruption
			--{ spellID = 53742, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
		},
		{
			Name = 'F/DEBUFF_BAR',
			Direction = 'UP',
			IconSide = 'LEFT',
			Interval = 4,
			Mode = 'BAR',
			setPoint = { 'LEFT', UIParent, 'CENTER', 160, 100 },

			-- Hammer of Justice
			{ spellID = 853, size = 32, barWidth = 200, unitId = 'focus', caster = 'all', filter = 'DEBUFF' },
		},
	},
	['PRIEST'] = {
		{
			Name = 'P_PROC_ICON',
			Direction = 'DOWN',
			Interval = 6,
			Mode = 'ICON',
			setPoint = { 'LEFT', UIParent, 'CENTER', 150, 50 },

			-- Serendipity
			{ spellID = 63731, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Shadow Orb
			{ spellID = 77487, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Archangel
			{ spellID = 81700, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Evangelism
			{ spellID = 81661, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Dark Evangelism
			--{ spellID = 87118, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Mind Melt
			{ spellID = 87160, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
		},
		{
			Name = 'T_DEBUFF_ICON',
			Direction = 'DOWN',
			Interval = 6,
			Mode = 'ICON',
			setPoint = { 'RIGHT', UIParent, 'CENTER', -150, 50 },

			-- Mind Spike
			{ spellID = 87178, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Vampiric Touch
			{ spellID = 34914, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Shadow Word: Pain
			{ spellID = 589, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Devouring Plague
			{ spellID = 2944, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
		},
		{
			Name = 'P_CD_ICON',
			Direction = 'DOWN',
			Interval = 6,
			Mode = 'ICON',
			setPoint = { 'RIGHT', UIParent, 'CENTER', -196, 50 },

			-- Mind Blast
			{ spellID = 8092, size = 38, filter = 'CD' },
			-- Shadow Word: Death
			{ spellID = 32379, size = 38, filter = 'CD' },
			-- Prayer of Mending
			{ spellID = 33076, size = 38, filter = 'CD' },
			-- Penance
			{ spellID = 47540, size = 38, filter = 'CD' },
			-- Holy Word: Chastise
			{ spellID = 88625, size = 38, filter = 'CD' },
		},
	},
	['WARLOCK'] = {
		{
			Name = 'P_ISF_ICON',
			Direction = 'UP',
			Interval = 6,
			Mode = 'ICON',
			setPoint = { 'CENTER', UIParent, 'CENTER', 0, -220 },

			-- Improved Soul Fire
			{ spellID = 85383, size = 58, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Empowered Imp
			{ spellID = 47221, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
		},
		{
			Name = 'P_PROC_ICON',
			Direction = 'RIGHT',
			Interval = 6,
			Mode = 'ICON',
			setPoint = { 'LEFT', UIParent, 'CENTER', -43, 100 },

			-- Molten Core
			--{ spellID = 47383, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Decimation
			{ spellID = 63158, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
		},
		{
			Name = 'P_BUFF_ICON',
			Direction = 'DOWN',
			Interval = 6,
			Mode = 'ICON',
			setPoint = { 'LEFT', UIParent, 'CENTER', 150, 50 },

			-- Darkmoon Card: Volcano, trinket
			{ spellID = 89091, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Rune of Zeth, trinket
			{ spellID = 97007, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
		},
		{
			Name = 'P_CD_ICON',
			Direction = 'DOWN',
			Interval = 6,
			Mode = 'ICON',
			setPoint = { 'RIGHT', UIParent, 'CENTER', -196, 50 },

			-- Demon Soul
			{ spellID = 77801, size = 38, filter = 'CD' },
			-- Metamorphosis
			{ spellID = 59672, size = 38, filter = 'CD' },
			-- Haunt
			{ spellID = 48181, size = 38, filter = 'CD' },
			-- Hand of Gul'dan
			{ spellID = 71521, size = 38, filter = 'CD' },
			-- Conflagrate
			{ spellID = 17962, size = 38, filter = 'CD' },
			-- Chaos bolt
			{ spellID = 50796, size = 38, filter = 'CD' },
			-- Shadowflame
			{ spellID = 47897, size = 38, filter = 'CD' },
		},
		{
			Name = 'T_DEBUFF_ICON',
			Direction = 'DOWN',
			Interval = 6,
			Mode = 'ICON',
			setPoint = { 'RIGHT', UIParent, 'CENTER', -150, 50 },

			-- Haunt
			{ spellID = 48181, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Immolate
			{ spellID = 348, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Unstable Affliction
			{ spellID = 30108, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Corruption
			{ spellID = 172, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Curse of Agony
			{ spellID = 980, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Bane of Doom
			{ spellID = 603, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Curse of the Elements
--			{ spellID = 1490, size = 38, unitId = 'target', caster = 'all', filter = 'DEBUFF' },
			-- Curse of Tongues
			{ spellID = 1714, size = 38, unitId = 'target', caster = 'all', filter = 'DEBUFF' },
			-- Curse of Exhaustion
			{ spellID = 18223, size = 38, unitId = 'target', caster = 'all', filter = 'DEBUFF' },
			-- Curse of Weakness
			{ spellID = 702, size = 38, unitId = 'target', caster = 'all', filter = 'DEBUFF' },
		},
	},
	['ROGUE'] = {
		{
			Name = 'P_BUFF_ICON',
			Direction = 'DOWN',
			Interval = 6,
			Mode = 'ICON',
			setPoint = { 'LEFT', UIParent, 'CENTER', 150, 50 },

			-- Sprint
			{ spellID = 2983, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Cloak of Shadows
			{ spellID = 31224, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Adrenaline Rush
			{ spellID = 13750, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Evasion
			{ spellID = 5277, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Envenom
			{ spellID = 32645, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Overkill
			{ spellID = 58426, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Slice and Dice
			{ spellID = 5171, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Tricks of the Trade
			{ spellID = 57934, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Turn the Tables
			{ spellID = 51627, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Recuperate
			{ spellID = 73651, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
		},
		{
			Name = 'T_DEBUFF_ICON',
			Direction = 'DOWN',
			Interval = 6,
			Mode = 'ICON',
			setPoint = { 'RIGHT', UIParent, 'CENTER', -150, 50 },

			-- Cheap shot
			{ spellID = 1833, size = 38, unitId = 'target', caster = 'all', filter = 'DEBUFF' },
			-- Kidney shot
			{ spellID = 408, size = 38, unitId = 'target', caster = 'all', filter = 'DEBUFF' },
			-- Blind
			{ spellID = 2094, size = 38, unitId = 'target', caster = 'all', filter = 'DEBUFF' },
			-- Sap
			{ spellID = 6770, size = 38, unitId = 'target', caster = 'all', filter = 'DEBUFF' },
			-- Rupture
			{ spellID = 1943, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Garrote
			{ spellID = 703, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Gouge
			{ spellID = 1776, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Expose Armor
			{ spellID = 8647, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Dismantle
			{ spellID = 51722, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Deadly Poison
			{ spellID = 2818, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Mind-numbing Poison
			{ spellID = 5760, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Crippling Poison
			{ spellID = 3409, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Wound Poison
			{ spellID = 13218, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Revealing Strike
			{ spellID = 84617, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
		},
	},
	['DEATHKNIGHT'] = {
		{
			Name = 'P_PROC_ICON',
			Direction = 'LEFT',
			Interval = 4,
			Mode = 'ICON',
			setPoint = { 'LEFT', UIParent, 'CENTER', 160, 50 },

			-- Unholy Force
			{ spellID = 67383, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Unholy Strength
			{ spellID = 53365, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Unholy Might
			{ spellID = 67117, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Dancing Rune Weapon
			{ spellID = 49028, size = 38, unitId = 'player', caster = 'player', filter = 'BUFF' },
		},
		{
			Name = 'T_DEBUFF_ICON',
			Direction = 'DOWN',
			Interval = 4,
			Mode = 'ICON',
			setPoint = { 'RIGHT', UIParent, 'CENTER', -160, 22 },

			-- Blood Plague
			{ spellID = 59879, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Frost Fever
			{ spellID = 59921, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Unholy Blight
			{ spellID = 49194, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
			-- Summon Gargoyle
			{ spellID = 49206, size = 38, unitId = 'target', caster = 'player', filter = 'DEBUFF' },
		},
	},
	['ALL'] = {
		{
			Name = 'SPECIAL_P_BUFF_ICON',
			Direction = 'LEFT',
			Interval = 4,
			Mode = 'ICON',
			setPoint = { 'RIGHT', UIParent, 'CENTER', -160, -139 },

			--Power Infusion
			{ spellID = 10060, size = 32, unitId = 'player', caster = 'all', filter = 'BUFF' },
			-- Bloodlust
			{ spellID = 2825, size = 32, unitId = 'player', caster = 'all', filter = 'BUFF' },
			-- Heroism
			{ spellID = 32182, size = 32, unitId = 'player', caster = 'all', filter = 'BUFF' },
			-- Time Warp
			{ spellID = 80353, size = 32, unitId = 'player', caster = 'all', filter = 'BUFF' },
			-- Ancient Hysteria
			{ spellID = 90355, size = 32, unitId = 'player', caster = 'all', filter = 'BUFF' },
		},
	--[[
		{
			Name = 'PVE/PVP_P_DEBUFF_ICON',
			Direction = 'LEFT',
			Interval = 4,
			Mode = 'ICON',
			setPoint = { 'RIGHT', UIParent, 'CENTER', -200, -83 },

				-- Death Knight

			-- Gnaw (Ghoul)
			{ spellID = 47481, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Strangulate
			{ spellID = 47476, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Chains of Ice
			{ spellID = 45524, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Desecration (no duration, lasts as long as you stand in it)
			{ spellID = 55741, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Chilblains
			{ spellID = 50041, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Hungering Cold
			{ spellID = 49206, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },

				-- Druid

			-- Cyclone
			{ spellID = 33786, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Hibernate
			{ spellID = 2637, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Bash
			{ spellID = 5211, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Maim
			{ spellID = 22570, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Pounce
			{ spellID = 9005, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Entangling Roots
			{ spellID = 339, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Feral Charge Effect
			{ spellID = 45334, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Infected Wounds
			{ spellID = 58179, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },

				-- Hunter

			-- Freezing Trap Effect
			{ spellID = 3355, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Scatter Shot
			{ spellID = 19503, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Snatch (Bird of Prey)
			{ spellID = 50541, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Silencing Shot
			{ spellID = 34490, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Intimidation
			{ spellID = 24394, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Sonic Blast (Bat)
			{ spellID = 50519, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Ravage (Ravager)
			{ spellID = 50518, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Concussive Barrage
			{ spellID = 35101, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Concussive Shot
			{ spellID = 5116, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Frost Trap Aura
			{ spellID = 13810, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Glyph of Freezing Trap
			{ spellID = 61394, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Wing Clip
			{ spellID = 2974, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Counterattack
			{ spellID = 19306, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Entrapment
			{ spellID = 19185, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Pin (Crab)
			{ spellID = 50245, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Venom Web Spray (Silithid)
			{ spellID = 54706, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Web (Spider)
			{ spellID = 4167, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },

				-- Mage
			
			-- Dragon's Breath
			{ spellID = 31661, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Polymorph
			{ spellID = 118, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Silenced - Improved Counterspell
			{ spellID = 18469, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Deep Freeze
			{ spellID = 44572, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Freeze (Water Elemental)
			{ spellID = 33395, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Frost Nova
			{ spellID = 122, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Shattered Barrier
			{ spellID = 55080, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Chilled
			{ spellID = 6136, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Cone of Cold
			{ spellID = 120, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Slow
			{ spellID = 31589, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },

				-- Paladin
	
			-- Repentance
			{ spellID = 20066, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Shield of the Templar
			{ spellID = 63529, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Hammer of Justice
			{ spellID = 853, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Stun (Seal of Justice proc)
			{ spellID = 20170, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Avenger's Shield
			{ spellID = 31935, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },

				-- Priest

			-- Psychic Horror
			{ spellID = 64058, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Mind Control
			{ spellID = 605, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Psychic Horror
			{ spellID = 64044, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Psychic Scream
			{ spellID = 8122, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Silence
			{ spellID = 15487, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },

				-- Rogue

			-- Dismantle
			{ spellID = 51722, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Blind
			{ spellID = 2094, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Gouge
			{ spellID = 1776, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Sap
			{ spellID = 6770, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Garrote - Silence
			{ spellID = 1330, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Silenced - Improved Kick
			{ spellID = 18425, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Cheap Shot
			{ spellID = 1833, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Kidney Shot
			{ spellID = 408, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },

				-- Shaman

			-- Hex
			{ spellID = 51514, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },

				-- Warlock

			-- Banish
			{ spellID = 710, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Death Coil
			{ spellID = 6789, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Fear
			{ spellID = 5782, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Howl of Terror
			{ spellID = 5484, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Seduction (Succubus)
			{ spellID = 6358, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Spell Lock (Felhunter)
			{ spellID = 24259, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Shadowfury
			{ spellID = 30283, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },

				-- Warrior

			-- Intimidating Shout
			{ spellID = 20511, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Disarm
			{ spellID = 676, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Silenced (Gag Order)
			{ spellID = 18498, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Charge Stun
			{ spellID = 7922, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Concussion Blow
			{ spellID = 12809, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Intercept
			{ spellID = 20253, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Shockwave
			{ spellID = 46968, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Glyph of Hamstring
			{ spellID = 58373, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Improved Hamstring
			{ spellID = 23694, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Hamstring
			{ spellID = 1715, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
			-- Piercing Howl
			{ spellID = 12323, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },

				-- Racials

			-- War Stomp
			{ spellID = 20549, size = 64, unitId = 'player', caster = 'all', filter = 'DEBUFF' },
		},

		{
			Name = 'PVP_T_BUFF_ICON',
			Direction = 'RIGHT',
			Interval = 4,
			Mode = 'ICON',
			setPoint = { 'LEFT', UIParent, 'CENTER', 200, -83 },

			-- Aspect of the Pack
			{ spellID = 13159, size = 64, unitId = 'player', caster = 'player', filter = 'BUFF' },
			-- Innervate
			{ spellID = 29166, size = 64, unitId = 'target', caster = 'all', filter = 'BUFF'},
			-- Spell Reflection
			{ spellID = 23920, size = 64, unitId = 'target', caster = 'all', filter = 'BUFF' },
			-- Aura Mastery
			{ spellID = 31821, size = 64, unitId = 'target', caster = 'all', filter = 'BUFF' },
			-- Ice Block
			{ spellID = 45438, size = 64, unitId = 'target', caster = 'all', filter = 'BUFF' },
			-- Cloak of Shadows
			{ spellID = 31224, size = 64, unitId = 'target', caster = 'all', filter = 'BUFF' },
			-- Divine Shield
			{ spellID = 642, size = 64, unitId = 'target', caster = 'all', filter = 'BUFF' },
			-- Deterrence
			{ spellID = 19263, size = 64, unitId = 'target', caster = 'all', filter = 'BUFF' },
			-- Anti-Magic Shell
			{ spellID = 48707, size = 64, unitId = 'target', caster = 'all', filter = 'BUFF' },
			-- Lichborne
			{ spellID = 49039, size = 64, unitId = 'target', caster = 'all', filter = 'BUFF' },
			-- Hand of Freedom
			{ spellID = 1044, size = 64, unitId = 'target', caster = 'all', filter = 'BUFF' },
			-- Hand of Sacrifice
			{ spellID = 6940, size = 64, unitId = 'target', caster = 'all', filter = 'BUFF' },
			-- Grounding Totem Effect
			{ spellID = 8178, size = 64, unitId = 'target', caster = 'all', filter = 'BUFF' },
		},
		]]--
	},
}
