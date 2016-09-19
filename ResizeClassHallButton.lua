-- NOTE: Do I need to preface this with "frame:"?
GarrisonLandingPageMinimapButton:ClearAllPoints() -- Unlocks the frame. // TODO: is this necessary?
GarrisonLandingPageMinimapButton:SetScale(.85) -- Resizes the button to be sort of the size of the other minimap buttons.
GarrisonLandingPageMinimapButton:SetPoint("center","Minimap","center",-80,60) -- Sets the button to the top left of the default minimap.
--  GarrisonLandingPageMinimapButton:SetPoint("center", "UIParent", "center",-872 ,-380);
--GarrisonLandingPageMinimapButton.ignoreFramePositionManager = true

-- NOTE: http://wow.gamepedia.com/Making_draggable_frames

--function resizeMinimapButton()
--  GarrisonLandingPageMinimapButton:ClearAllPoints();
--  GarrisonLandingPageMinimapButton:SetScale(.85);
--  GarrisonLandingPageMinimapButton:SetPoint("center", "UIParent", "center",-872 ,-380);
--  GarrisonLandingPageMinimapButton.ignoreFramePositionManager = true;
--end
