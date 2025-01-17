X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_magic_wand",
	"item_boots",
	"item_blink",
	"item_arcane_boots",
	"item_aether_lens",
	"item_ultimate_scepter",
	"item_aghanims_shard",
	"item_kaya_and_sange",
	"item_refresher",
	"item_octarine_core",
	"item_ultimate_scepter_2",
	"item_heart",
	"item_overwhelming_blink"
};			

X["builds"] = {
	{1,2,3,3,3,4,3,1,1,1,4,2,2,2,4},
	{1,2,3,1,1,4,1,3,3,3,4,2,2,2,4},
	{1,2,3,2,2,4,2,3,3,3,4,1,1,1,4},
	{2,3,2,1,2,4,2,3,3,3,4,1,1,1,4}
}

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  IBUtil.GetRandomBuild(X['builds']), skills, 
	  {2,4,6,8}, talents
);

return X