X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_magic_wand",
	"item_power_treads_agi",
	"item_yasha",
	"item_invis_sword",
	"item_maelstrom",
	"item_manta",
	"item_ultimate_scepter",
	"item_mjollnir",
	"item_aghanims_shard",
	"item_dragon_lance",
	"item_silver_edge",
	"item_hurricane_pike",
	"item_ultimate_scepter_2",
	"item_butterfly",
};			

X["builds"] = {
	{3,1,3,2,3,4,3,1,1,1,4,2,2,2,4},
	{3,1,3,1,2,4,3,3,1,1,4,2,2,2,4}
}

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  IBUtil.GetRandomBuild(X['builds']), skills, 
	  {2,3,5,8}, talents
);

return X