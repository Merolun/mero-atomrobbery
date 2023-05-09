Config = {}

Config.Police = 2 -- Minimum police to rob an ATM
Config.DispatchRate = 25 -- Set the percentage chance that the police will be called
Config.Progressbar = 165000 -- Time to needed to rob an ATM
Config.CoolDown = 1800000 -- Cooldown to rob the ATM again
Config.ItemRewardVer = true
Config.ItemReward = 'liasse' --Item that ATMs give
Config.tickInterval = 1000 -- Verification tick to update ATMs status
Config.HashItem = 'weapon_crowbar' -- Weapon needed to rob ATMs 
Config.GiveItem = true
Config.AtmProps = {
    "prop_atm_01",
	"prop_atm_02",
	"prop_atm_03",
	"prop_fleeca_atm",
}

-- List of ATMs
Config.ATMs = {
	
	-- ATMs ville Nord-Est
	[1] = {atmid = 0, x=89.75, y=2.35, z=68.31, time = 0, robbed = false}, -- Spanish Avenue 7131
	[2] = {atmid = 1, x=1167.02, y=-456.32, z=66.73, time = 0, robbed = false},	-- Happy Yoga Mirror Park 7346#1
	[3] = {atmid = 2, x=1138.22, y=-468.96, z=66.73, time = 0, robbed = false},	-- Happy Yoga Mirror Park 7346#2
	[4] = {atmid = 3, x=1077.77, y=-776.55, z=58.24, time = 0, robbed = false}, -- Mirror Park Mirror Drive West 7324
	[5] = {atmid = 4, x=1153.64, y=-326.78, z=69.245, time = 0, robbed = false}, -- LTD Mirror Park 7302 Gabz
	[6] = {atmid = 5, x=381.810, y=326.50, z=103.570, time = 0, robbed = false}, -- 24/7 Clinton Avenue 7093
	[7] = {atmid = 6, x=158.5054, y=234.289, z=106.620, time = 0, robbed = false}, -- Vinewood Boulevard 24/7 Centre de Vinewood 7089
	[8] = {atmid = 7, x=228.2, y=338.37, z=105.20, time = 0, robbed = false}, -- Clinton Avenue / Alta Street 7088
	[9] = {atmid = 8, x=285.5, y=143.3690, z=104.17, time = 0, robbed = false}, -- Vinewood Boulevard Etoile du seigneur 7123
	[10] = {atmid = 9, x=356.95, y=173.50, z=103.07, time = 0, robbed = false}, -- Vinewood Boulevard Gift Souvenir 7095
	[11] = {atmid = 10, x=-165.06, y=232.62, z=94.90, time = 0, robbed = false}, -- Eclipse Boulevard Vinewood West Magasin de Comics 7077 #1
	[12] = {atmid = 11, x=-165.16, y=235.15, z=94.90, time = 0, robbed = false}, -- Eclipse Boulevard Vinewood West Magasin de Comics 7077 #2
	[13] = {atmid = 12, x=527.35, y=-160.65, z=57.1, time = 0, robbed = false}, -- 24/7 Elgin Avenue 7131
	[14] = {atmid = 13, x=-57.65, y=-92.65, z=57.8, time = 0, robbed = false}, -- Hawick Avenue Liquor Shop 7136
	
	-- ATMs ville Nord-Ouest
	[15] = {atmid = 14, x=-866.45, y=-188.12, z=37.84, time = 0, robbed = false}, -- Madway Thunder Drive 7209 #1
	[16] = {atmid = 15, x=-867.75, y=-185.9, z=37.8, time = 0, robbed = false}, -- Madway Thunder Drive 7209 #2
	[17] = {atmid = 16, x=-846.02, y=-341.7, z=38.68, time = 0, robbed = false}, -- Heritage Way Rockford Hills 7226 #1
	[18] = {atmid = 17, x=-847.03, y=-339.7, z=38.68, time = 0, robbed = false}, -- Heritage Way Rockford Hills 7226 #2
	[19] = {atmid = 18, x=-721.05, y=-415.55, z=34.98, time = 0, robbed = false}, -- Leopolds Rockford Hills 7269
	[20] = {atmid = 19, x=-1409.65, y=-100.99, z=52.37, time = 0, robbed = false}, -- Cougar Avenue Rockford Hills 7161 #1
	[21] = {atmid = 20, x=-1410.42, y=-98.45, z=52.44, time = 0, robbed = false}, -- Cougar Avenue Rockford Hills 7161 #2
	[22] = {atmid = 21, x=-1430.112, y=-211.014, z=46.500, time = 0, robbed = false}, --Morningwood Boulevard Cinema 7166 #1
	[23] = {atmid = 22, x=-1415.909, y=-211.825, z=46.500, time = 0, robbed = false}, --Morningwood Boulevard Cinema 7166 #2
	[24] = {atmid = 23, x=-1289.30, y=-226.90, z=42.45, time = 0, robbed = false}, -- Parking 4 ATMs 7167 #1
	[25] = {atmid = 24, x=-1285.60, y=-224.25, z=42.45, time = 0, robbed = false}, -- Parking 4 ATMs 7167 #2
	[26] = {atmid = 25, x=-1286.25, y=-213.45, z=42.45, time = 0, robbed = false}, -- Parking 4 ATMs 7167 #3
	[27] = {atmid = 26, x=-1282.52, y=-210.91, z=42.45, time = 0, robbed = false}, -- Parking 4 ATMs 7167 #4
	[28] = {atmid = 27, x=-1204.80, y=-326.74, z=37.85, time = 0, robbed = false}, -- Fleeca Del Perro EXT 7175 #1
	[29] = {atmid = 28, x=-1205.88, y=-324.57, z=37.86, time = 0, robbed = false}, -- Fleeca Del Perro EXT 7175 #2
	[30] = {atmid = 29, x=-1305.40, y=-706.40, z=25.35, time = 0, robbed = false}, -- Cinema Del Perro Red Desert Avenue 7261
	[31] = {atmid = 30, x=-1569.65, y=-546.35, z=34.95, time = 0, robbed = false}, -- Boulevard Del Perro 7171 #1
	[32] = {atmid = 31, x=-1571.42, y=-547.57, z=34.95, time = 0, robbed = false}, -- Boulevard Del Perro 7171 #2
	[33] = {atmid = 32, x=-2072.41, y=-317.25, z=13.34, time = 0, robbed = false}, -- Xero Gas Del Perro Freeway 7001
	[34] = {atmid = 33, x=-1827.25, y=784.85, z=138.35, time = 0, robbed = false}, -- LTD North Rockford Drive 5016
	[35] = {atmid = 34, x=-2295.55, y=358.45, z=174.60, time = 0, robbed = false}, -- Kortz Center 6000 #1
	[36] = {atmid = 35, x=-2294.65, y=356.45, z=174.60, time = 0, robbed = false}, -- Kortz Center 6000 #2
	[37] = {atmid = 36, x=-2293.74, y=354.42, z=174.60, time = 0, robbed = false}, -- Kortz Center 6000 #3
	
	-- ATMs ville Sud
	[38] = {atmid = 37, x=288.85, y=-1282.33, z=29.64, time = 0, robbed = false}, -- Xero Gas Strawberry Avenue 9051 #1
	[39] = {atmid = 38, x=289.10, y=-1256.81, z=29.44, time = 0, robbed = false}, -- Xero Gas Strawberry Avenue 9051 #2
	[40] = {atmid = 39, x=33.57, y=-1344.95, z=29.50, time = 0, robbed = false}, -- 24/7 Families Innocence Boulevard 9046
	[41] = {atmid = 40, x=-56.94, y=-1752.09, z=29.50, time = 0, robbed = false}, -- LTD Ballas Groove Street 9094

	-- ATM Autoroutes
	[42] = {atmid = 41, x=2558.74, y=350.93,   z=108.62, time = 0, robbed = false}, -- Ron Autoroute Palomino 7354
	[43] = {atmid = 42, x=2555.24, y=389.96,   z=108.62, time = 0, robbed = false}, -- 24/7 Autoroute Palomino 7355
	[44] = {atmid = 43, x=-3144.63, y=1127.57, z=20.86, time = 0, robbed = false}, -- Freeway Route 1 5033
	[45] = {atmid = 44, x=-3241.18, y=997.47,  z=12.55, time = 0, robbed = false}, -- Supp #1 Freeway Route 1 5038
	[46] = {atmid = 45, x=-3243.82, y=1009.23, z=12.83, time = 0, robbed = false}, -- Supp #2 Freeway Route 1 5038
	[47] = {atmid = 46, x=-3043.93, y=594.62, z=7.74, time = 0, robbed = false}, -- Supp #3 Freeway Route 1 5047
	[48] = {atmid = 47, x=-3044.00, y=592.35, z=7.91, time = 0, robbed = false}, -- Supp #4 Freeway Route 1 5047
	[49] = {atmid = 48, x=-2956.83, y=487.64, z=15.46, time = 0, robbed = false}, -- Fleeca Great Ocean Highway #1 5070
	[50] = {atmid = 49, x=-2958.99, y=487.74, z=15.46, time = 0, robbed = false}, -- Fleeca Great Ocean Highway #2 5070
	[51] = {atmid = 50, x=-2975.01, y=380.07, z=15.00, time = 0, robbed = false}, -- Rob's Liquor Great Ocean Highway  5065

	-- ATM Sandy - Grapeseed
	[52] = {atmid = 51, x=1703.10, y=4933.60, z=42.06, time = 0, robbed = false}, -- LTD Grapeseed 2006
	[53] = {atmid = 52, x=1686.82, y=4815.86, z=42.01, time = 0, robbed = false}, -- Magasin de vêtements Grapeseed 2010
	[54] = {atmid = 53, x=1966.82, y=3746.56, z=32.34, time = 0, robbed = false}, -- 24/7 Sandy Shores 3008 Gabz
	[55] = {atmid = 54, x=2680.40, y=3288.48, z=55.24, time = 0, robbed = false}, -- Supp Senora Freeway - 3051 
	[56] = {atmid = 55, x=1171.44, y=2702.59, z=38.18, time = 0, robbed = false}, -- ATM Banque Zombie - 4024 #1
	[57] = {atmid = 56, x=1172.62, y=2702.58, z=38.18, time = 0, robbed = false}, -- ATM Banque Zombie - 4024 #2
	[58] = {atmid = 57, x=540.35,  y=2667.85,  z=42.16, time = 0, robbed = false}, -- 24/7 Route68 Harmony Gabz - 4019
	[59] = {atmid = 58, x=-1091.92, y=2708.55, z=18.94, time = 0, robbed = false}, -- Route 68 Magasin de vêtement 5004
	[60] = {atmid = 59, x=2564.50, y=2584.78, z=38.08, time = 0, robbed = false}, -- Davis Quartz Dinosaure Rose - 3056

	-- ATM Nord
	[61] = {atmid = 60, x=-97.37,   y=6455.41,  z=31.47, time = 0, robbed = false}, -- Bank PaletoBay Ext #1 1055
	[62] = {atmid = 61, x=-95.54,  y=6457.2,   z=31.46, time = 0, robbed = false}, -- Bank PaletoBay Ext #2 1055
	[63] = {atmid = 62, x=-386.83,  y=6046.12,  z=31.50, time = 0, robbed = false}, -- PaletoBay Market 1036
	[64] = {atmid = 63, x=-282.98,  y=6226.10,  z=31.49, time = 0, robbed = false}, -- Herr Kutz Coiffeur PaletoBay 1046
	[65] = {atmid = 64, x=-132.97,  y=6366.57,  z=31.48, time = 0, robbed = false}, -- MojitoInn PaletoBay 1052
	[66] = {atmid = 65, x=155.85,   y=6642.9,   z=31.6,  time = 0, robbed = false}, -- Ron PaletoBay 1012
	[67] = {atmid = 66, x=168.62,   y=6636.87,  z=31.7,  time = 0, robbed = false}, -- Ron PaletoBay 1012 #2
	[68] = {atmid = 67, x=174.17,   y=6637.83,  z=31.57, time = 0, robbed = false}, -- Ron PaletoBay 1012 #3
	[69] = {atmid = 68, x=1701.15,  y=6426.45,  z=32.76, time = 0, robbed = false}, -- GlobeOil PaletoBay 1000 #1
	[70] = {atmid = 69, x=1737.03, y=6413.30,  z=35.04, time = 0, robbed = false}, -- 24/7 PaletoBay 1000 #1 Gabz

	--ATM Little Seoul 
	[71] = {atmid = 70, x=-717.68, y=-915.79, z=19.22, time = 0, robbed = false}, -- LTD Little Seoul 8140
	[72] = {atmid = 71, x=-660.63, y=-854.07, z=24.49, time = 0, robbed = false}, -- DigitalDen Little Seoul 8141
	[73] = {atmid = 72, x=-710.10, y=-818.90, z=23.73, time = 0, robbed = false}, -- Little Seoul 8076 #1
	[74] = {atmid = 73, x=-712.92, y=-818.90, z=23.73, time = 0, robbed = false}, -- Little Seoul 8076 #2
	[75] = {atmid = 74, x=-537.84, y=-854.52, z=29.29, time = 0, robbed = false}, -- Look See Little Seoul 8143
	[76] = {atmid = 75, x=-615.57, y=-704.84, z=31.24, time = 0, robbed = false}, -- Little Seoul 8073 #1
	[77] = {atmid = 76, x=-611.96, y=-704.84, z=31.24, time = 0, robbed = false}, -- Little Seoul 8073 #2
	[78] = {atmid = 77, x=-618.32, y=-706.80, z=30.05, time = 0, robbed = false}, -- Little Seoul 8073 #3
	[79] = {atmid = 78, x=-618.31, y=-708.87, z=30.05, time = 0, robbed = false}, -- Little Seoul 8073 #4
	[80] = {atmid = 79, x=-1314.68, y=-836.15, z=16.96, time = 0, robbed = false}, -- BayCity Ave 8007 #1
	[81] = {atmid = 80, x=-1315.79, y=-834.63, z=16.96, time = 0, robbed = false}, -- BayCity Ave 8007 #2
	[82] = {atmid = 81, x=-821.65, y=-1081.92, z=11.13, time = 0, robbed = false}, -- Little Seoul Vêtements 8126 #3
	[105] = {atmid = 104, x=-609.75, y=-1091.92, z=22.32, time = 0, robbed = false}, -- Calais Avenue Little Seoul 8253 #1
	[83] = {atmid = 82, x=-594.47, y=-1161.62, z=22.32, time = 0, robbed = false}, -- Calais Avenue Little Seoul 8253 #1
	[84] = {atmid = 83, x=-596.26, y=-1161.27, z=22.32, time = 0, robbed = false}, -- Calais Avenue Little Seoul 8253 #2
	[85] = {atmid = 84, x=-526.64, y=-1222.98, z=18.45, time = 0, robbed = false}, -- Calais Avenue Little Seoul 8254
	[86] = {atmid = 85, x=-1109.76, y=-1690.77, z=4.38, time = 0, robbed = false}, -- plage 8207

	-- Centre ville
	[87] = {atmid = 86, x=-254.32, y=-692.52, z=33.61, time = 0, robbed = false}, -- Peaceful Street Arcadius 8067 #1
	[88] = {atmid = 87, x=-256.0, y=-716.08, z=33.52, time = 0, robbed = false}, -- Peaceful Street Arcadius 8067 #2
	[89] = {atmid = 88, x=-258.9, y=-723.44, z=33.48, time = 0, robbed = false}, -- Peaceful Street Arcadius 8067 #3
	[90] = {atmid = 89, x=-301.57, y=-830.05, z=32.42, time = 0, robbed = false}, -- Vespucci BLVD - 8069 #1
	[91] = {atmid = 90, x=-303.42, y=-829.74, z=32.42, time = 0, robbed = false}, -- Vespucci BLVD 8069 #2
	[92] = {atmid = 91, x=-203.82, y=-861.38, z=30.27, time = 0, robbed = false}, -- Vespucci BLVD 8064 
	[93] = {atmid = 92, x=-30.25, y=-723.68, z=44.23, time = 0, robbed = false}, -- San andreas Ave 8080 #1
	[94] = {atmid = 93, x=-28.04, y=-724.56, z=44.23, time = 0, robbed = false}, -- San andreas Ave 8080 #2
	[95] = {atmid = 94, x=112.57, y=-819.37, z=31.34, time = 0, robbed = false}, -- San andreas Ave 8055
	[96] = {atmid = 95, x=111.24, y=-775.26, z=31.44, time = 0, robbed = false}, -- San andreas Ave 8031 #1
	[97] = {atmid = 96, x=114.37, y=-776.37, z=31.42, time = 0, robbed = false}, -- San andreas Ave 8031 #2
	[98] = {atmid = 97, x=119.03, y=-883.72, z=31.12, time = 0, robbed = false}, -- Legion Square 8056
	[99] = {atmid = 98, x=147.8, y=-1035.82, z=29.34, time = 0, robbed = false}, -- Legion Square Fleeca 8170 #1
	[100] = {atmid = 99, x=145.95, y=-1035.19, z=29.34, time = 0, robbed = false}, -- Legion Square Fleeca 8170 #2
	[101] = {atmid = 100, x=295.56, y=-896.45, z=29.23, time = 0, robbed = false}, -- Legion Square Fleeca 8050 #1
	[102] = {atmid = 101, x=296.46, y=-894.16, z=29.23, time = 0, robbed = false}, -- Legion Square Fleeca 8050 #2
	[103] = {atmid = 102, x=24.40, y=-945.94, z=29.36, time = 0, robbed = false}, -- Vespucci BLVD 8057 #1
	[104] = {atmid = 103, x=5.21, y=-919.90, z=29.56, time = 0, robbed = false}, -- Vespucci BLVD 8057 #2
  }