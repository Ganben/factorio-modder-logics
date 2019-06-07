function OnInit()
    if global.kongfu == nil then
        global.konfu = {}
        global.players = {}
        global.konfu.players = {}
        for i=1,#game.players do
            CreateGui(i)
        end
    end
end

function OnLoad()
    OnInit()
end

function OnPlayerCreated(event)
    local index = event.player_index
    CreateGui(index)
end

function CreateGui(index)

    local player = game.players[index]
    if player.gui.left.kongfu then
        return
    end
    table.insert(global.players, player)
    table.insert(
        global.kongfu.players,
        {
            lv=1,
            exp=0,
            mp=100
        }        
    )
    local root = player.gui.left.add{
        type="frame",
        name="kongfu",
        direction="vertical",
        column_count = 1
    }
end

function OnTick(event)

end

function OnEntityDied(event)

end

function onPlayerCraftedItem(event)

end

