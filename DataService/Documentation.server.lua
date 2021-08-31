--[[
Save Structure
	The SaveStructure module contains the default SaveStructure.
	To add something to the SaveStructure simply add an Item to the SaveStructure 
	table like this.We're going to add gems to the SaveStructure. And that's it it updates
	new and old player data structures
	
	local saveStructure = {
	Coins = 0;
	Xp = 0;
	Inventory = {};
	Gems = 0;
	
DataService:GetPlayerData(Player)
	Returns a player's data and will throw a warn if player is nil
	
	local PlayerData = DataService:GetPlayerData(Player)

	To edit the data you should not edit it directly you should use the next function
	of DataService which is SetPlayerData()
	
DataService:SetPlayerData(Player, Function)
	This sets the datakey to the value and also returns the Data object to be edited 
	further down the chain
	
	local PlayerData = DataService:GetPlayerData(Player)

	DataService:SetPlayerData(Player, function()
    PlayerData.Coins = 100
  end)

DataService.DataChanged
	This event is fired whenever a player's data changes
	To connect this event simply do this.
	
	DataService.DataChanged:Connect(function(player)
		print(player.Name.. "'s data has been changed")
	end)
	
Please see the basic DataServiceExampleService for a full code example
]]