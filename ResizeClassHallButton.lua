GarrisonLandingPageMinimapButton:ClearAllPoints() -- Unlocks the frame. // TODO: is this necessary?
GarrisonLandingPageMinimapButton:SetScale(.85) -- Resizes the button to be sort of the size of the other minimap buttons.
GarrisonLandingPageMinimapButton:SetPoint("center","Minimap","center",-80,60) -- Sets the button to the top left of the default minimap.
--  GarrisonLandingPageMinimapButton:SetPoint("center", "UIParent", "center",-872 ,-380);
--GarrisonLandingPageMinimapButton.ignoreFramePositionManager = true

-- NOTE: http://us.battle.net/forums/en/wow/topic/15269817191
-- NOTE: http://wow.gamepedia.com/Making_draggable_frames

--function resizeMinimapButton()
--  GarrisonLandingPageMinimapButton:ClearAllPoints();
--  GarrisonLandingPageMinimapButton:SetScale(.85);
--  GarrisonLandingPageMinimapButton:SetPoint("center", "UIParent", "center",-872 ,-380);
--  GarrisonLandingPageMinimapButton.ignoreFramePositionManager = true;
--end

--local RMMB = {} -- local function OR variable? This is valid function definition.

-- Register the slash commands.
-- NOTE: must use frameXML to achieve this

--function rmmb_OnLoad()
--
--  SlashCmdList["RMMB"] = rmmb_SlashCommand; -- Write a slash command handler and place assign it to SlashCmdList["MYFANCYADDON"].
--  SLASH_RMMB1="/rmmb";
--  SLASH_RMMB2="/resizeminimapbutton";
--
--end

--function rmmb_SlashCommand(arg)
--  -- what the slash command does here
--  local arg = buttonName;
--end

-- This works amazingly as a "/run" command.
function resizeMinimapButton(buttonName,scale)
  buttonName:SetScale(scale)
end

-- NOTE: I think if I do the assignment in the function, I'll be able to do the extra slash command thingy here like I want to do on SRQ.

-- This works amazingly as a "/run" command.
SLASH_RMMB1, SLASH_RMMB2 = "/rmmb", "/resizeminimapbutton";
function SlashCmdList.RMMB(msg, editbox)
  index = string.find(msg, " ");

  if msg == "" then
    print("You must supply a frame name.");
--  end

  elseif ( index ) then
    buttonName = string.sub(msg, 1, index-1);
    scale = string.sub(msg, index+1);
--    scale = .5;
--  end

--  else
--    resizeMinimapButton(buttonName,scale);
    print("Frame: ("..buttonName..")");
    -- NOTE: This creates a nil value for scale somewhere and somehow. I should just copy the entire slash command for SRQ instead.
  elseif ( scale ) then
    print("Scale: ("..scale..")");
  else
    print("(final) Scale: ("..scale..")");
    print("(final) Frame: ("..buttonName..")");
  end
--  resizeMinimapButton(GarrisonLandingPageMinimapButton,.5);

--  print("Resized");
--  ChatFrame1:AddMessage("That button frame doesn't exist! ("..buttonName..")");
end

-- /rmmb buttonName scale
