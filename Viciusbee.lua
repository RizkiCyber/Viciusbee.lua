local plr = game:GetService("Players").LocalPlayer
local mouse = game.Players.LocalPlayer:GetMouse()
local UIS = game:GetService'UserInputService'

sproutstarted = false
sproutsafety = false
pausehumcheck = false
SproutFarmActive = false
FieldBoostActive = false
TreatActive = false
WealthClockActive = false
infjumpactive = false
antchallengeescape = false
AutoDigActive = false
PollenFarmActive = false
Field1AFActive = false
Field2AFActive = false
Field3AFActive = false
Field4AFActive = false
Field5AFActive = false
Field6AFActive = false
Field7AFActive = false
Field8AFActive = false
Field9AFActive = false
Field10AFActive = false
Field11AFActive = false
Field12AFActive = false
Field13AFActive = false
Field14AFActive = false
godmodeactivated = false
resethive = false
HuntViciousActive = false
AvoidViciousActive = false
viciousbeenear = false
viciousbeedetected = false
viciousdistance1 = ""
switchlocationmsg = false
tokenfarmactive = false
tokenfarmactive2 = false
GodModeActive = false
moontokenfarmactive = false
farmzoneswitchback = false
switchingzone = false
FarmTempOFF = false
AvoidTempOFF = false

-- Anti Idle
local VirtualUser=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
	VirtualUser:CaptureController()
	VirtualUser:ClickButton2(Vector2.new())
end)

-- Objects
local MainGUI = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Close = Instance.new("TextButton")
local TimeLabel = Instance.new("TextLabel")
local Players = Instance.new("TextButton")
local PlayerFrame = Instance.new("Frame")
local PlayerList = Instance.new("Frame")
local PlayerListBox = Instance.new("Frame")
local PlyrSel = Instance.new("TextLabel")
local Player1 = Instance.new("TextButton")
local Player2 = Instance.new("TextButton")
local Player3 = Instance.new("TextButton")
local Player4 = Instance.new("TextButton")
local Player5 = Instance.new("TextButton")
local TpPlayer = Instance.new("TextButton")
local FindTreasures = Instance.new("TextButton")
local FindTreasuresText1 = Instance.new("TextLabel")
local ExtrasScreen = Instance.new("TextButton")
local ExtrasFrame = Instance.new("Frame")
local ViciousBeeFrame = Instance.new("Frame")
local TPTool = Instance.new("TextButton")
local BTool = Instance.new("TextButton")
local ReJoinServer = Instance.new("TextButton")
local NoClip = Instance.new("TextButton")
local God = Instance.new("TextButton")
local HuntViciousBee = Instance.new("TextButton")
local ViciousBeeDetect = Instance.new("TextLabel")
local FireflyDetect = Instance.new("TextLabel")
local SproutDetect = Instance.new("TextLabel")
local PollenFarm = Instance.new("TextButton")
local FarmFrame = Instance.new("Frame")
local StartFarm = Instance.new("TextButton")
local AutoDig = Instance.new("TextButton")
local TokenToggleLabel = Instance.new("TextLabel")
local TokenToggle = Instance.new("TextBox")
local FireflyToggleLabel = Instance.new("TextLabel")
local FireflyToggle = Instance.new("TextBox")
local HoneyToggleLabel = Instance.new("TextLabel")
local HoneyToggle = Instance.new("TextBox")
local InfJumpToggle = Instance.new("TextButton")
local WealthClockToggle = Instance.new("TextButton")
local FieldBoostToggle = Instance.new("TextButton")
local TreatToggle = Instance.new("TextButton")
local SproutFarmToggle = Instance.new("TextButton")
local InfBackpack = Instance.new("TextButton")

-- Properties

MainGUI.Name = "MainGUI"
MainGUI.Parent = game.CoreGui
local MainCORE = game.CoreGui["MainGUI"]

MainFrame.Name = "MainFrame"
MainFrame.Parent = MainGUI
MainFrame.BackgroundColor3 = Color3.new(0, 0, 0)
MainFrame.BackgroundTransparency = 0
MainFrame.BorderColor3 = Color3.new(0, 0, 0)
MainFrame.Position = UDim2.new(0.5, -319, 0, -32)
MainFrame.Size = UDim2.new(0, 638, 0, 30)

Close.Name = "Close"
Close.Parent = MainFrame
Close.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Close.BorderColor3 = Color3.new(0, 1, 0)
Close.Position = UDim2.new(0, 5, 0, 5)
Close.Size = UDim2.new(0, 20, 0, 20)
Close.Font = Enum.Font.Fantasy
Close.Text = "X"
Close.TextColor3 = Color3.new(1, 0, 0)
Close.TextSize = 17
Close.TextScaled = true
Close.TextWrapped = true

Players.Name = "Players"
Players.Parent = MainFrame
Players.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Players.BorderColor3 = Color3.new(0, 1, 0)
Players.Position = UDim2.new(0, 118, 0, 5)
Players.Size = UDim2.new(0, 60, 0, 20)
Players.BackgroundTransparency = 0
Players.Font = Enum.Font.Fantasy
Players.TextColor3 = Color3.new(1, 1, 1)
Players.Text = "Players"
Players.TextSize = 17
Players.TextWrapped = true

PlayerFrame.Name = "PlayerFrame"
PlayerFrame.Parent = MainFrame
PlayerFrame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
PlayerFrame.BackgroundTransparency = 0.3
PlayerFrame.BorderColor3 = Color3.new(0, 0, 0)
PlayerFrame.Position = UDim2.new(0, 63, 0, 34)
PlayerFrame.Size = UDim2.new(0, 170, 0, 200)
PlayerFrame.Visible = false

PlyrSel.Name = "PlyrSel"
PlyrSel.Parent = PlayerFrame
PlyrSel.BackgroundColor3 = Color3.new(1, 1, 1)
PlyrSel.BackgroundTransparency = 0.15
PlyrSel.BorderColor3 = Color3.new(0, 0, 0)
PlyrSel.Position = UDim2.new(0, 5, 0, 5)
PlyrSel.Size = UDim2.new(0, 160, 0, 20)
PlyrSel.Font = Enum.Font.SourceSans
PlyrSel.Text = "SELECT A PLAYER"
PlyrSel.TextColor3 = Color3.new(0, 0, 0)
PlyrSel.TextScaled = true
PlyrSel.TextSize = 17
PlyrSel.TextWrapped = true

Player1.Name = "Player1"
Player1.Parent = PlayerFrame
Player1.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Player1.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Player1.Position = UDim2.new(0, 5, 0, 35)
Player1.Size = UDim2.new(0, 160, 0, 20)
Player1.Font = Enum.Font.Fantasy
Player1.Text = ""
Player1.TextColor3 = Color3.new(1, 1, 1)
Player1.TextSize = 15
Player1.TextWrapped = true

Player2.Name = "Player2"
Player2.Parent = PlayerFrame
Player2.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Player2.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Player2.Position = UDim2.new(0, 5, 0, 60)
Player2.Size = UDim2.new(0, 160, 0, 20)
Player2.Font = Enum.Font.Fantasy
Player2.Text = ""
Player2.TextColor3 = Color3.new(1, 1, 1)
Player2.TextSize = 15
Player2.TextWrapped = true

Player3.Name = "Player3"
Player3.Parent = PlayerFrame
Player3.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Player3.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Player3.Position = UDim2.new(0, 5, 0, 85)
Player3.Size = UDim2.new(0, 160, 0, 20)
Player3.Font = Enum.Font.Fantasy
Player3.Text = ""
Player3.TextColor3 = Color3.new(1, 1, 1)
Player3.TextSize = 15
Player3.TextWrapped = true

Player4.Name = "Player4"
Player4.Parent = PlayerFrame
Player4.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Player4.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Player4.Position = UDim2.new(0, 5, 0, 110)
Player4.Size = UDim2.new(0, 160, 0, 20)
Player4.Font = Enum.Font.Fantasy
Player4.Text = ""
Player4.TextColor3 = Color3.new(1, 1, 1)
Player4.TextSize = 15
Player4.TextWrapped = true

Player5.Name = "Player5"
Player5.Parent = PlayerFrame
Player5.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Player5.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Player5.Position = UDim2.new(0, 5, 0, 135)
Player5.Size = UDim2.new(0, 160, 0, 20)
Player5.Font = Enum.Font.Fantasy
Player5.Text = ""
Player5.TextColor3 = Color3.new(1, 1, 1)
Player5.TextSize = 15
Player5.TextWrapped = true

TpPlayer.Name = "TpPlayer"
TpPlayer.Parent = PlayerFrame
TpPlayer.BackgroundColor3 = Color3.new(0.18, 0.18, 0.18)
TpPlayer.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
TpPlayer.Position = UDim2.new(0, 5, 0, 165)
TpPlayer.Size = UDim2.new(0, 160, 0, 30)
TpPlayer.Font = Enum.Font.Fantasy
TpPlayer.Text = "Teleport to Player"
TpPlayer.TextColor3 = Color3.new(1, 1, 1)
TpPlayer.TextWrapped = true
TpPlayer.TextSize = 17

PollenFarm.Name = "PollenFarm"
PollenFarm.Parent = MainFrame
PollenFarm.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
PollenFarm.BorderColor3 = Color3.new(0, 1, 0)
PollenFarm.Position = UDim2.new(0, 183, 0, 5)
PollenFarm.Size = UDim2.new(0, 90, 0, 20)
PollenFarm.Font = Enum.Font.Fantasy
PollenFarm.TextColor3 = Color3.new(1, 1, 1)
PollenFarm.Text = "Farm Pollen"
PollenFarm.TextSize = 17
PollenFarm.TextWrapped = true

FarmFrame.Name = "FarmFrame"
FarmFrame.Parent = MainFrame
FarmFrame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
FarmFrame.BorderColor3 = Color3.new(0, 0, 0)
FarmFrame.BackgroundTransparency = 0
FarmFrame.Position = UDim2.new(0, 138, 0, 34)
FarmFrame.Size = UDim2.new(0, 180, 0, 55)
FarmFrame.ZIndex = 7
FarmFrame.Visible = false

AvoidViciousBee.Name = "AvoidViciousBee"
AvoidViciousBee.Parent = FarmFrame
AvoidViciousBee.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
AvoidViciousBee.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
AvoidViciousBee.BackgroundTransparency = 0
AvoidViciousBee.Position = UDim2.new(0, 5, 0, 5)
AvoidViciousBee.Size = UDim2.new(0, 170, 0, 20)
AvoidViciousBee.Font = Enum.Font.Fantasy
AvoidViciousBee.TextColor3 = Color3.new(1, 1, 1)
AvoidViciousBee.Text = "Avoid Vicious Bee: OFF"
AvoidViciousBee.TextSize = 17
AvoidViciousBee.ZIndex = 7
AvoidViciousBee.TextWrapped = true

StartFarm.Name = "StartFarm"
StartFarm.Parent = FarmFrame
StartFarm.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
StartFarm.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
StartFarm.BackgroundTransparency = 0
StartFarm.Position = UDim2.new(0, 5, 0, 30)
StartFarm.Size = UDim2.new(0, 170, 0, 20)
StartFarm.Font = Enum.Font.Fantasy
StartFarm.TextColor3 = Color3.new(1, 1, 1)
StartFarm.Text = "Pollen Farm: OFF"
StartFarm.TextSize = 17
StartFarm.ZIndex = 7
StartFarm.TextWrapped = true

AutoDig.Name = "AutoDig"
AutoDig.Parent = MainFrame
AutoDig.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
AutoDig.BorderColor3 = Color3.new(0, 1, 0)
AutoDig.Position = UDim2.new(0, 278, 0, 5)
AutoDig.Size = UDim2.new(0, 70, 0, 20)
AutoDig.Font = Enum.Font.Fantasy
AutoDig.TextColor3 = Color3.new(1, 1, 1)
AutoDig.Text = "Auto Dig"
AutoDig.TextSize = 17
AutoDig.TextWrapped = true

God.Name = "God"
God.Parent = MainFrame
God.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
God.BorderColor3 = Color3.new(0, 1, 0)
God.Position = UDim2.new(0, 353, 0, 5)
God.Size = UDim2.new(0, 115, 0, 20)
God.Font = Enum.Font.Fantasy
God.TextColor3 = Color3.new(1, 1, 1)
God.Text = "God Mode: OFF"
God.TextSize = 17
God.TextWrapped = true

ExtrasScreen.Name = "ExtrasScreen"
ExtrasScreen.Parent = MainFrame
ExtrasScreen.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
ExtrasScreen.BorderColor3 = Color3.new(0, 1, 0)
ExtrasScreen.Position = UDim2.new(0, 473, 0, 5)
ExtrasScreen.Size = UDim2.new(0, 50, 0, 20)
ExtrasScreen.Font = Enum.Font.Fantasy
ExtrasScreen.TextColor3 = Color3.new(1, 1, 1)
ExtrasScreen.Text = "Extras"
ExtrasScreen.TextSize = 17
ExtrasScreen.TextWrapped = true

ExtrasFrame.Name = "ExtrasFrame"
ExtrasFrame.Parent = MainFrame
ExtrasFrame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
ExtrasFrame.BorderColor3 = Color3.new(0, 0, 0)
ExtrasFrame.BackgroundTransparency = 0
ExtrasFrame.Position = UDim2.new(0, 413, 0, 34)
ExtrasFrame.Size = UDim2.new(0, 170, 0, 330)
ExtrasFrame.ZIndex = 7
ExtrasFrame.Visible = false

HuntViciousBee.Name = "HuntViciousBee"
HuntViciousBee.Parent = ExtrasFrame
HuntViciousBee.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
HuntViciousBee.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
HuntViciousBee.Position = UDim2.new(0, 5, 0, 5)
HuntViciousBee.Size = UDim2.new(0, 160, 0, 20)
HuntViciousBee.Font = Enum.Font.Fantasy
HuntViciousBee.TextColor3 = Color3.new(1, 1, 1)
HuntViciousBee.Text = "Hunt Vicious Bee: OFF"
HuntViciousBee.TextSize = 17
HuntViciousBee.ZIndex = 7
HuntViciousBee.TextWrapped = true

SproutFarmToggle.Name = "SproutFarmToggle"
SproutFarmToggle.Parent = ExtrasFrame
SproutFarmToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
SproutFarmToggle.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
SproutFarmToggle.Position = UDim2.new(0, 5, 0, 30)
SproutFarmToggle.Size = UDim2.new(0, 160, 0, 20)
SproutFarmToggle.Font = Enum.Font.Fantasy
SproutFarmToggle.TextColor3 = Color3.new(1, 1, 1)
SproutFarmToggle.Text = "Farm Sprout: OFF"
SproutFarmToggle.TextSize = 17
SproutFarmToggle.ZIndex = 7
SproutFarmToggle.TextWrapped = true

WealthClockToggle.Name = "WealthClockToggle"
WealthClockToggle.Parent = ExtrasFrame
WealthClockToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
WealthClockToggle.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
WealthClockToggle.Position = UDim2.new(0, 5, 0, 55)
WealthClockToggle.Size = UDim2.new(0, 160, 0, 20)
WealthClockToggle.TextColor3 = Color3.new(1, 1, 1)
WealthClockToggle.Font = Enum.Font.Fantasy
WealthClockToggle.Text = "Wealth Clock: OFF"
WealthClockToggle.ZIndex = 7
WealthClockToggle.TextSize = 16

FieldBoostToggle.Name = "FieldBoostToggle"
FieldBoostToggle.Parent = ExtrasFrame
FieldBoostToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
FieldBoostToggle.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
FieldBoostToggle.Position = UDim2.new(0, 5, 0, 80)
FieldBoostToggle.Size = UDim2.new(0, 160, 0, 20)
FieldBoostToggle.TextColor3 = Color3.new(1, 1, 1)
FieldBoostToggle.Font = Enum.Font.Fantasy
FieldBoostToggle.Text = "Auto Field Boost: OFF"
FieldBoostToggle.ZIndex = 7
FieldBoostToggle.TextSize = 16

TreatToggle.Name = "TreatToggle"
TreatToggle.Parent = ExtrasFrame
TreatToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TreatToggle.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
TreatToggle.Position = UDim2.new(0, 5, 0, 105)
TreatToggle.Size = UDim2.new(0, 160, 0, 20)
TreatToggle.TextColor3 = Color3.new(1, 1, 1)
TreatToggle.Font = Enum.Font.Fantasy
TreatToggle.Text = "Auto Treats: OFF"
TreatToggle.ZIndex = 7
TreatToggle.TextSize = 16

NoClip.Name = "NoClip"
NoClip.Parent = ExtrasFrame
NoClip.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
NoClip.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
NoClip.Position = UDim2.new(0, 5, 0, 130)
NoClip.Size = UDim2.new(0, 160, 0, 20)
NoClip.Font = Enum.Font.Fantasy
NoClip.TextColor3 = Color3.new(1, 1, 1)
NoClip.Text = "NoClip Mode: OFF"
NoClip.TextSize = 17
NoClip.ZIndex = 7
NoClip.TextWrapped = true

FindTreasures.Name = "FindTreasures"
FindTreasures.Parent = ExtrasFrame
FindTreasures.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
FindTreasures.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
FindTreasures.Position = UDim2.new(0, 5, 0, 155)
FindTreasures.Size = UDim2.new(0, 160, 0, 20)
FindTreasures.BackgroundTransparency = 0
FindTreasures.Font = Enum.Font.Fantasy
FindTreasures.TextColor3 = Color3.new(1, 1, 1)
FindTreasures.Text = "Tp to all Treasures"
FindTreasures.TextSize = 17
FindTreasures.ZIndex = 7
FindTreasures.TextWrapped = true

FindTreasuresText1.Name = "FindTreasuresText1"
FindTreasuresText1.Parent = MainFrame
FindTreasuresText1.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
FindTreasuresText1.BorderColor3 = Color3.new(0, 0, 0)
FindTreasuresText1.BackgroundTransparency = 0.1
FindTreasuresText1.Position = UDim2.new(0, 221, 0, 130)
FindTreasuresText1.Size = UDim2.new(0, 190, 0, 84)
FindTreasuresText1.TextColor3 = Color3.new(1, 1, 1)
FindTreasuresText1.Font = Enum.Font.Fantasy
FindTreasuresText1.Text = "This will Teleport you to all the hidden treasures on the map. It will only work once\nas the treasures do not respawn."
FindTreasuresText1.TextSize = 16
FindTreasuresText1.TextWrapped = true
FindTreasuresText1.ZIndex = 7
FindTreasuresText1.Visible = false
FindTreasuresText1.TextYAlignment = Enum.TextYAlignment.Top

TPTool.Name = "TPTool"
TPTool.Parent = ExtrasFrame
TPTool.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TPTool.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
TPTool.Position = UDim2.new(0, 5, 0, 180)
TPTool.Size = UDim2.new(0, 160, 0, 20)
TPTool.TextColor3 = Color3.new(1, 1, 1)
TPTool.Font = Enum.Font.Fantasy
TPTool.Text = "Add TPTool"
TPTool.ZIndex = 7
TPTool.TextSize = 16

BTool.Name = "BTool"
BTool.Parent = ExtrasFrame
BTool.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BTool.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BTool.Position = UDim2.new(0, 5, 0, 205)
BTool.Size = UDim2.new(0, 160, 0, 20)
BTool.TextColor3 = Color3.new(1, 1, 1)
BTool.Font = Enum.Font.Fantasy
BTool.Text = "Add BTools"
BTool.ZIndex = 7
BTool.TextSize = 16

ReJoinServer.Name = "ReJoinServer"
ReJoinServer.Parent = ExtrasFrame
ReJoinServer.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
ReJoinServer.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
ReJoinServer.Position = UDim2.new(0, 5, 0, 230)
ReJoinServer.Size = UDim2.new(0, 160, 0, 20)
ReJoinServer.TextColor3 = Color3.new(1, 1, 1)
ReJoinServer.Font = Enum.Font.Fantasy
ReJoinServer.Text = "ReJoin a Server"
ReJoinServer.TextSize = 16
ReJoinServer.ZIndex = 7
ReJoinServer.TextWrapped = true

TokenToggleLabel.Name = "TokenToggleLabel"
TokenToggleLabel.Parent = ExtrasFrame
TokenToggleLabel.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TokenToggleLabel.BorderSizePixel = 0
TokenToggleLabel.Position = UDim2.new(0, 5, 0, 254)
TokenToggleLabel.Size = UDim2.new(0, 132, 0, 22)
TokenToggleLabel.TextColor3 = Color3.new(1, 1, 1)
TokenToggleLabel.Font = Enum.Font.Fantasy
TokenToggleLabel.Text = "Token Pickup kb"
TokenToggleLabel.TextSize = 16
TokenToggleLabel.ZIndex = 7
TokenToggleLabel.TextWrapped = true

TokenToggle.Name = "TokenToggle"
TokenToggle.Parent = ExtrasFrame
TokenToggle.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
TokenToggle.BorderColor3 = Color3.new(0.8, 0.8, 0.8)
TokenToggle.Position = UDim2.new(0, 137, 0, 255)
TokenToggle.Size = UDim2.new(0, 28, 0, 20)
TokenToggle.TextColor3 = Color3.new(1, 1, 1)
TokenToggle.Font = Enum.Font.Fantasy
TokenToggle.Text = "h"
TokenToggle.TextSize = 16
TokenToggle.ZIndex = 7
TokenToggle.TextWrapped = true

FireflyToggleLabel.Name = "FireflyToggleLabel"
FireflyToggleLabel.Parent = ExtrasFrame
FireflyToggleLabel.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
FireflyToggleLabel.BorderSizePixel = 0
FireflyToggleLabel.Position = UDim2.new(0, 5, 0, 279)
FireflyToggleLabel.Size = UDim2.new(0, 132, 0, 22)
FireflyToggleLabel.TextColor3 = Color3.new(1, 1, 1)
FireflyToggleLabel.Font = Enum.Font.Fantasy
FireflyToggleLabel.Text = "Firefly Touch kb"
FireflyToggleLabel.TextSize = 16
FireflyToggleLabel.ZIndex = 7
FireflyToggleLabel.TextWrapped = true

FireflyToggle.Name = "FireflyToggle"
FireflyToggle.Parent = ExtrasFrame
FireflyToggle.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
FireflyToggle.BorderColor3 = Color3.new(0.8, 0.8, 0.8)
FireflyToggle.Position = UDim2.new(0, 137, 0, 280)
FireflyToggle.Size = UDim2.new(0, 28, 0, 20)
FireflyToggle.TextColor3 = Color3.new(1, 1, 1)
FireflyToggle.Font = Enum.Font.Fantasy
FireflyToggle.Text = "j"
FireflyToggle.TextSize = 16
FireflyToggle.ZIndex = 7
FireflyToggle.TextWrapped = true

HoneyToggleLabel.Name = "HoneyToggleLabel"
HoneyToggleLabel.Parent = ExtrasFrame
HoneyToggleLabel.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
HoneyToggleLabel.BorderSizePixel = 0
HoneyToggleLabel.Position = UDim2.new(0, 5, 0, 304)
HoneyToggleLabel.Size = UDim2.new(0, 132, 0, 22)
HoneyToggleLabel.TextColor3 = Color3.new(1, 1, 1)
HoneyToggleLabel.Font = Enum.Font.Fantasy
HoneyToggleLabel.Text = "Make Honey kb"
HoneyToggleLabel.TextSize = 16
HoneyToggleLabel.ZIndex = 7
HoneyToggleLabel.TextWrapped = true

HoneyToggle.Name = "HoneyToggle"
HoneyToggle.Parent = ExtrasFrame
HoneyToggle.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
HoneyToggle.BorderColor3 = Color3.new(0.8, 0.8, 0.8)
HoneyToggle.Position = UDim2.new(0, 137, 0, 305)
HoneyToggle.Size = UDim2.new(0, 28, 0, 20)
HoneyToggle.TextColor3 = Color3.new(1, 1, 1)
HoneyToggle.Font = Enum.Font.Fantasy
HoneyToggle.Text = "y"
HoneyToggle.TextSize = 16
HoneyToggle.ZIndex = 7
HoneyToggle.TextWrapped = true

TimeLabel.Name = "TimeLabel"
TimeLabel.Parent = MainFrame
TimeLabel.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TimeLabel.BorderColor3 = Color3.new(0.15, 0.15, 0.15)
TimeLabel.Position = UDim2.new(0, 573, 0, 5)
TimeLabel.Size = UDim2.new(0, 60, 0, 20)
TimeLabel.BackgroundTransparency = 0
TimeLabel.Font = Enum.Font.Fantasy
TimeLabel.TextColor3 = Color3.new(1, 1, 1)
TimeLabel.Text = ""
TimeLabel.TextSize = 17
TimeLabel.TextWrapped = true

SproutDetect.Name = "SproutDetect"
SproutDetect.Parent = MainFrame
SproutDetect.BackgroundColor3 = Color3.new(0, 0.5, 0)
SproutDetect.BorderColor3 = Color3.new(0.15, 0.15, 0.15)
SproutDetect.Position = UDim2.new(0, 180, 0, 33)
SproutDetect.Size = UDim2.new(0, 150, 0, 35)
SproutDetect.Font = Enum.Font.Fantasy
SproutDetect.TextColor3 = Color3.new(1, 1, 1)
SproutDetect.Text = "Sprout Detected\nDistance: "
SproutDetect.TextSize = 17
SproutDetect.TextWrapped = true
SproutDetect.ZIndex = 4
SproutDetect.Visible = false

FireflyDetect.Name = "FireflyDetect"
FireflyDetect.Parent = MainFrame
FireflyDetect.BackgroundColor3 = Color3.new(0, 0, 0.5)
FireflyDetect.BorderColor3 = Color3.new(0.15, 0.15, 0.15)
FireflyDetect.Position = UDim2.new(0, 334, 0, 33)
FireflyDetect.Size = UDim2.new(0, 150, 0, 35)
FireflyDetect.Font = Enum.Font.Fantasy
FireflyDetect.TextColor3 = Color3.new(1, 1, 1)
FireflyDetect.Text = "Firefly's Detected\nDistance: "
FireflyDetect.TextSize = 17
FireflyDetect.TextWrapped = true
FireflyDetect.ZIndex = 4
FireflyDetect.Visible = false

ViciousBeeDetect.Name = "ViciousBeeDetect"
ViciousBeeDetect.Parent = MainFrame
ViciousBeeDetect.BackgroundColor3 = Color3.new(0.5, 0, 0)
ViciousBeeDetect.BorderColor3 = Color3.new(0.15, 0.15, 0.15)
ViciousBeeDetect.Position = UDim2.new(0, 488, 0, 33)
ViciousBeeDetect.Size = UDim2.new(0, 150, 0, 35)
ViciousBeeDetect.Font = Enum.Font.Fantasy
ViciousBeeDetect.TextColor3 = Color3.new(1, 1, 1)
ViciousBeeDetect.Text = "Vicious Bee Detected\nDistance: "
ViciousBeeDetect.TextSize = 17
ViciousBeeDetect.TextWrapped = true
ViciousBeeDetect.ZIndex = 4
ViciousBeeDetect.Visible = false

-- notify --
 
function notify(msg)
game.StarterGui:SetCore('SendNotification', {
Title = 'Bee Swarm LuckyGUI';
Text = msg;
Duration = 5;
})
end

--- Close ---

Close.MouseButton1Down:connect(function()
MainGUI:Destroy()
end)

--- Menus ---

local Menus = {
	[WayPoints] = WayPointsFrame;
	[ExtrasScreen] = ExtrasFrame;
	[InfoScreen] = InfoFrame;
	[PollenFarm] = FarmFrame;
	[Players] = PlayerFrame;
}
for button,frame in pairs(Menus) do
	button.MouseButton1Click:connect(function()
		if frame.Visible then
			frame.Visible = false
			return
		end
		for k,v in pairs(Menus) do
			v.Visible = v == frame
		end
	end)
end

-- Time --

spawn(function()
	while true do
		if tostring(game.Lighting.TimeOfDay) == "13:39:00" or tostring(game.Lighting.TimeOfDay) == "13:51:36" then
			TimeLabel.BackgroundColor3 = Color3.new(120/255, 1, 235/255)
			TimeLabel.BorderColor3 = Color3.new(120/255, 1, 235/255)
			TimeLabel.Text = "Day"
			TimeLabel.TextColor3 = Color3.new(0, 0, 0)
		else
			TimeLabel.BackgroundColor3 = Color3.new(59/255, 41/255, 86/255)
			TimeLabel.BorderColor3 = Color3.new(59/255, 41/255, 86/255)
			TimeLabel.Text = "Night"
			TimeLabel.TextColor3 = Color3.new(1, 1, 1)
		end
		wait(1)
	end
end)

--- Snow Menus Show Hide ---

FindTreasures.MouseEnter:connect(function()
	FindTreasuresText1.Visible = true
end)

FindTreasures.MouseLeave:connect(function()
	FindTreasuresText1.Visible = false
end)

-- Check Health --

spawn(function()
	while true do
		if not pausehumcheck then
			local PlrChar = game.Players.LocalPlayer.Character
			local FindHum = PlrChar:FindFirstChildOfClass("Humanoid")
			if FindHum then
				plrHealth = string.format("%.0f", FindHum.Health)
			end
		end
		wait(0.5)
	end
end)

-- Round value to x decimal places --

function round(num, numDecimalPlaces)
	local mult = 10^(numDecimalPlaces or 0)
	return math.floor(num * mult + 0.5) / mult
end

-- Check for Sprout --

spawn(function()
	while true do
		sproutdistance1 = nil
		sproutdetected = false
		SproutDetect.Visible = false
		repeat
			for i,v in pairs(workspace.Particles:GetChildren()) do
				for x in string.gmatch(v.Name, "Sprout") do
					if not pausehumcheck and v.Name == "Sprout" then
						sproutdetected = true
						local player = game:GetService'Players'.LocalPlayer
						local character = player.Character or player.CharacterAdded:wait()
						local head = character:WaitForChild'Head'
						local hum = player.Character.HumanoidRootPart
						sproutdistance = (v.Position-hum.Position).magnitude
						sproutdistance1 = round(sproutdistance, 2)
						--print("Sprout Detected. Distance: " ..tostring(sproutdistance))--
						SproutDetect.Text = "Sprout Detected\nDistance: " ..tostring(sproutdistance1).. ""
						SproutDetect.Visible = true
					end
				end
			end
			wait(0.3)
		until v == nil
		wait(0.1)
	end
end)

-- check for fireflys --

spawn(function()
	while true do
		fireflydistance1 = nil
		fireflydetected = false
		FireflyDetect.Visible = false
		repeat
			for i,v in pairs(workspace.NPCBees:GetChildren()) do
				for x in string.gmatch(v.Name, "Firefly") do
					if not pausehumcheck and v.Name == "Firefly" then
						fireflydetected = true
						local player = game:GetService'Players'.LocalPlayer
						local character = player.Character or player.CharacterAdded:wait()
						local head = character:WaitForChild'Head'
						local hum = player.Character.HumanoidRootPart
						firelfydistance = (v.Position-hum.Position).magnitude
						fireflydistance1 = round(firelfydistance, 2)
						--print("Fireflys Detected. Distance: " ..tostring(firelfydistance))--
						FireflyDetect.Text = "Firefly Detected\nDistance: " ..tostring(fireflydistance1).. ""
						FireflyDetect.Visible = true
					end
				end
			end
			wait(0.4)
		until v == nil
		wait(0.1)
	end
end)

-- check for vicious bee --

spawn(function()
	while true do
		viciousdistance1 = nil
		viciousbeedetected = false
		ViciousBeeDetect.Visible = false
		repeat
			for i,v in pairs(workspace.Particles:GetChildren()) do
				for x in string.gmatch(v.Name, "Vicious") do
					if not pausehumcheck and v.Name == "Vicious" then
						viciousbeedetected = true
						local player = game:GetService'Players'.LocalPlayer
						local character = player.Character or player.CharacterAdded:wait()
						local head = character:WaitForChild'Head'
						local hum = player.Character.HumanoidRootPart
						viciousdistance = (v.Position-hum.Position).magnitude
						viciousdistance1 = round(viciousdistance, 2)
						--print("Vicious Bee Detected. Distance: " ..tostring(viciousdistance))--
						ViciousBeeDetect.Text = "Vicious Bee Detected\nDistance: " ..tostring(viciousdistance1).. ""
						ViciousBeeDetect.Visible = true
					end
				end
			end
			if viciousbeedetected and viciousdistance < 80 then
				viciousbeenear = true
				if viciousbeenear and not beenearmsg and not godmodeactivated then
					print("WARNING!! Vicious Bee Near")
					beenearmsg=true
				end
			else
				viciousbeenear = false
				beenearmsg = false
			end
			wait(0.5)
		until v == nil
		wait(0.1)
	end
end)

spawn(function()
	while true do
		if PollenFarmActive then
			if AvoidViciousActive and viciousbeenear then
				if not farmzoneswitched then
					if not switchlocationmsg then
						print("Vicious Bee Near. Switching to Safe Farming Zone")
						notify'Switching to safe Farming Zone'
						switchlocationmsg = true
					end
					switchingzone = true
					PollenFarmActive = false
					wait(1)
					if Field5AFActive then
						originalzone = "Clover"
						Field5AFActive = false
						Field3AFActive = true
					elseif Field7AFActive then
						originalzone = "Spider"
						Field7AFActive = false
						Field3AFActive = true
					elseif Field9AFActive then
						originalzone = "Rose"
						Field9AFActive = false
						Field3AFActive = true
					elseif Field11AFActive then
						originalzone = "Cactus"
						Field11AFActive = false
						Field3AFActive = true
					else
						originalzone = "MountainTop"
						Field3AFActive = true
					end
					farmzoneswitched = true
					switchingzone = false
					PollenFarmActive = true
				end
			end
		end
		wait(0.5)
	end
end)

spawn(function()
	while true do
		wait(0.5)
		if farmzoneswitchback then
			if switchlocationmsg then
				print("Vicious Bee has gone. Switching back to original location")
				notify'Switching back to original location'
				switchlocationmsg = false
			end
			switchingzone = true
			PollenFarmActive = false
			wait(1)
			if originalzone == "Clover" then
				Field3AFActive = false
				Field5AFActive = true
			elseif originalzone == "Spider" then
				Field3AFActive = false
				Field7AFActive = true
			elseif originalzone == "Rose" then
				Field3AFActive = false
				Field9AFActive = true
			elseif originalzone == "Cactus" then
				Field3AFActive = false
				Field11AFActive = true
			elseif originalzone == "MountainTop" then
				Field3AFActive = false
			end
			farmzoneswitched = false
			farmzoneswitchback = false
			switchingzone = false
			PollenFarmActive = true
		end
	end
end)


-- Trigger Wealth Clock every 30 minutes --

WealthClockToggle.MouseButton1Click:connect(function()
	if WealthClockActive ~= true then
		WealthClockActive = true
		notify'Wealth Clock Started'
		print("Wealth Clock Started. The Wealth Clock will be triggered every 30 minutes.")
		WealthClockToggle.BackgroundColor3 = Color3.new(0.5, 0, 0)
		WealthClockToggle.Text = "Wealth Clock: ON"
	else
		WealthClockActive = false
		notify'Wealth Clock Stopped'
		WealthClockToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		WealthClockToggle.Text = "Wealth Clock: OFF"
	end
end)

spawn(function()
	while true do
		if WealthClockActive then
			while WealthClockActive do
				game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer("Wealth Clock")
				print("Wealth Clock activated")
				wcwaittime = 1830
				repeat
					WealthClockToggle.Text = "Wealth Clock: " ..tostring(wcwaittime).. "sec"
					wait(1)
					wcwaittime = wcwaittime - 1
				until wcwaittime == 0 or not WealthClockActive
			end
		end
		wait(1)
	end
end)

--- Player Teleport ---
	
local buttons = {
    Player1,
    Player2,
    Player3,
    Player4,
    Player5
}
spawn (function()
	while true do
		Player1.Text = ""
		Player2.Text = ""
		Player3.Text = ""
		Player4.Text = ""
		Player5.Text = ""
		for i, v in pairs(game.Players:GetChildren()) do
			buttons[i].Text = v.Name
			buttons[i].Visible = true
		end
		wait(0.5)
	end
end)
	
Player1.MouseButton1Down:connect(function()
	PlyrSel.Text = Player1.Text
end)
Player2.MouseButton1Down:connect(function()
	PlyrSel.Text = Player2.Text
end)
Player3.MouseButton1Down:connect(function()
	PlyrSel.Text = Player3.Text
end)
Player4.MouseButton1Down:connect(function()
	PlyrSel.Text = Player4.Text
end)
Player5.MouseButton1Down:connect(function()
	PlyrSel.Text = Player5.Text
end)

TpPlayer.MouseButton1Down:connect(function()
	if PlyrSel.Text == "SELECT A PLAYER" then
		warn("No Player Selected")
	else
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[PlyrSel.Text].HumanoidRootPart.CFrame
	end
end)

--- Pollen Farm ---

StartFarm.MouseButton1Click:connect(function()
	if PollenFarmActive ~= true then
		PollenFarmActive = true
		Field1AFActive = false
		Field2AFActive = false
		Field3AFActive = false
		Field4AFActive = false
		Field5AFActive = false
		Field6AFActive = false
		Field7AFActive = false
		Field8AFActive = false
		Field9AFActive = false
		Field10AFActive = false
		Field11AFActive = false
		Field12AFActive = false
		Field13AFActive = false
		Field14AFActive = false
		resethive = false
		switchlocationmsg = false
		StartFarm.Text = "Pollen Farm: ON"
		PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
		StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
		notify'Pollen Farming Started'
	else
		PollenFarmActive = false
		Field1AFActive = false
		Field2AFActive = false
		Field3AFActive = false
		Field4AFActive = false
		Field5AFActive = false
		Field6AFActive = false
		Field7AFActive = false
		Field8AFActive = false
		Field9AFActive = false
		Field10AFActive = false
		Field11AFActive = false
		Field12AFActive = false
		Field13AFActive = false
		Field14AFActive = false
		farmzoneswitched = false
		resethive = false
		print("Pollen Farming Ended")
		notify'Pollen Farming Ended'
		StartFarm.Text = "Pollen Farm: OFF"
		PollenFarm.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		StartFarm.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		local player = game:GetService("Players").LocalPlayer
		currp=nil
		player.Character:MoveTo(player.SpawnPos.Value.p)
	end
end)

Field1AF.MouseButton1Down:connect(function()
	PollenFarmActive = true
	Field1AFActive = true
	Field2AFActive = false
	Field3AFActive = false
	Field4AFActive = false
	Field5AFActive = false
	Field6AFActive = false
	Field7AFActive = false
	Field8AFActive = false
	Field9AFActive = false
	Field10AFActive = false
	Field11AFActive = false
	Field12AFActive = false
	Field13AFActive = false
	Field14AFActive = false
	resethive = false
	switchlocationmsg = false
	StartFarm.Text = "Pollen Farm: ON"
	PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	notify'Pollen Farming Zone 1 Started'
	WayPointsFrame.Visible = false
end)

Field2AF.MouseButton1Down:connect(function()
	PollenFarmActive = true
	Field2AFActive = true
	Field1AFActive = false
	Field3AFActive = false
	Field4AFActive = false
	Field5AFActive = false
	Field6AFActive = false
	Field7AFActive = false
	Field8AFActive = false
	Field9AFActive = false
	Field10AFActive = false
	Field11AFActive = false
	Field12AFActive = false
	Field13AFActive = false
	Field14AFActive = false
	resethive = false
	switchlocationmsg = false
	StartFarm.Text = "Pollen Farm: ON"
	PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	notify'Pollen Farming Zone 2 Started'
	WayPointsFrame.Visible = false
end)

Field3AF.MouseButton1Down:connect(function()
	PollenFarmActive = true
	Field3AFActive = true
	Field1AFActive = false
	Field2AFActive = false
	Field4AFActive = false
	Field5AFActive = false
	Field6AFActive = false
	Field7AFActive = false
	Field8AFActive = false
	Field9AFActive = false
	Field10AFActive = false
	Field11AFActive = false
	Field12AFActive = false
	Field13AFActive = false
	Field14AFActive = false
	resethive = false
	switchlocationmsg = false
	StartFarm.Text = "Pollen Farm: ON"
	PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	notify'Pollen Farming Zone 3 Started'
	WayPointsFrame.Visible = false
end)

Field4AF.MouseButton1Down:connect(function()
	PollenFarmActive = true
	Field4AFActive = true
	Field1AFActive = false
	Field2AFActive = false
	Field3AFActive = false
	Field5AFActive = false
	Field6AFActive = false
	Field7AFActive = false
	Field8AFActive = false
	Field9AFActive = false
	Field10AFActive = false
	Field11AFActive = false
	Field12AFActive = false
	Field13AFActive = false
	Field14AFActive = false
	resethive = false
	switchlocationmsg = false
	StartFarm.Text = "Pollen Farm: ON"
	PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	notify'Pollen Farming Zone 4 Started'
	WayPointsFrame.Visible = false
end)

Field5AF.MouseButton1Down:connect(function()
	PollenFarmActive = true
	Field5AFActive = true
	Field1AFActive = false
	Field2AFActive = false
	Field3AFActive = false
	Field4AFActive = false
	Field6AFActive = false
	Field7AFActive = false
	Field8AFActive = false
	Field9AFActive = false
	Field10AFActive = false
	Field11AFActive = false
	Field12AFActive = false
	Field13AFActive = false
	Field14AFActive = false
	resethive = false
	switchlocationmsg = false
	StartFarm.Text = "Pollen Farm: ON"
	PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	notify'Pollen Farming Zone 5 Started'
	WayPointsFrame.Visible = false
end)

Field6AF.MouseButton1Down:connect(function()
	PollenFarmActive = true
	Field6AFActive = true
	Field1AFActive = false
	Field2AFActive = false
	Field3AFActive = false
	Field4AFActive = false
	Field5AFActive = false
	Field7AFActive = false
	Field8AFActive = false
	Field9AFActive = false
	Field10AFActive = false
	Field11AFActive = false
	Field12AFActive = false
	Field13AFActive = false
	Field14AFActive = false
	resethive = false
	switchlocationmsg = false
	StartFarm.Text = "Pollen Farm: ON"
	PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	notify'Pollen Farming Zone 6 Started'
	WayPointsFrame.Visible = false
end)

Field7AF.MouseButton1Down:connect(function()
	PollenFarmActive = true
	Field7AFActive = true
	Field1AFActive = false
	Field2AFActive = false
	Field3AFActive = false
	Field4AFActive = false
	Field5AFActive = false
	Field6AFActive = false
	Field8AFActive = false
	Field9AFActive = false
	Field10AFActive = false
	Field11AFActive = false
	Field12AFActive = false
	Field13AFActive = false
	Field14AFActive = false
	resethive = false
	switchlocationmsg = false
	StartFarm.Text = "Pollen Farm: ON"
	PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	notify'Pollen Farming Zone 7 Started'
	WayPointsFrame.Visible = false
end)

Field8AF.MouseButton1Down:connect(function()
	PollenFarmActive = true
	Field8AFActive = true
	Field1AFActive = false
	Field2AFActive = false
	Field3AFActive = false
	Field4AFActive = false
	Field5AFActive = false
	Field6AFActive = false
	Field7AFActive = false
	Field9AFActive = false
	Field10AFActive = false
	Field11AFActive = false
	Field12AFActive = false
	Field13AFActive = false
	Field14AFActive = false
	resethive = false
	switchlocationmsg = false
	StartFarm.Text = "Pollen Farm: ON"
	PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	notify'Pollen Farming Zone 8 Started'
	WayPointsFrame.Visible = false
end)

Field9AF.MouseButton1Down:connect(function()
	PollenFarmActive = true
	Field9AFActive = true
	Field1AFActive = false
	Field2AFActive = false
	Field3AFActive = false
	Field4AFActive = false
	Field5AFActive = false
	Field6AFActive = false
	Field7AFActive = false
	Field8AFActive = false
	Field10AFActive = false
	Field11AFActive = false
	Field12AFActive = false
	Field13AFActive = false
	Field14AFActive = false
	resethive = false
	switchlocationmsg = false
	StartFarm.Text = "Pollen Farm: ON"
	PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	notify'Pollen Farming Zone 9 Started'
	WayPointsFrame.Visible = false
end)

Field10AF.MouseButton1Down:connect(function()
	PollenFarmActive = true
	Field10AFActive = true
	Field1AFActive = false
	Field2AFActive = false
	Field3AFActive = false
	Field4AFActive = false
	Field5AFActive = false
	Field6AFActive = false
	Field7AFActive = false
	Field8AFActive = false
	Field9AFActive = false
	Field11AFActive = false
	Field12AFActive = false
	Field13AFActive = false
	Field14AFActive = false
	resethive = false
	switchlocationmsg = false
	StartFarm.Text = "Pollen Farm: ON"
	PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	notify'Pollen Farming Zone 10 Started'
	WayPointsFrame.Visible = false
end)

Field11AF.MouseButton1Down:connect(function()
	PollenFarmActive = true
	Field11AFActive = true
	Field1AFActive = false
	Field2AFActive = false
	Field3AFActive = false
	Field4AFActive = false
	Field5AFActive = false
	Field6AFActive = false
	Field7AFActive = false
	Field8AFActive = false
	Field9AFActive = false
	Field10AFActive = false
	Field12AFActive = false
	Field13AFActive = false
	Field14AFActive = false
	resethive = false
	switchlocationmsg = false
	StartFarm.Text = "Pollen Farm: ON"
	PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	notify'Pollen Farming Zone 11 Started'
	WayPointsFrame.Visible = false
end)

Field12AF.MouseButton1Down:connect(function()
	PollenFarmActive = true
	Field12AFActive = true
	Field1AFActive = false
	Field2AFActive = false
	Field3AFActive = false
	Field4AFActive = false
	Field5AFActive = false
	Field6AFActive = false
	Field7AFActive = false
	Field8AFActive = false
	Field9AFActive = false
	Field10AFActive = false
	Field11AFActive = false
	Field13AFActive = false
	Field14AFActive = false
	resethive = false
	switchlocationmsg = false
	StartFarm.Text = "Pollen Farm: ON"
	PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	notify'Pollen Farming Zone 12 Started'
	WayPointsFrame.Visible = false
end)

Field13AF.MouseButton1Down:connect(function()
	PollenFarmActive = true
	Field13AFActive = true
	Field1AFActive = false
	Field2AFActive = false
	Field3AFActive = false
	Field4AFActive = false
	Field5AFActive = false
	Field6AFActive = false
	Field7AFActive = false
	Field8AFActive = false
	Field9AFActive = false
	Field10AFActive = false
	Field11AFActive = false
	Field12AFActive = false
	Field14AFActive = false
	resethive = false
	switchlocationmsg = false
	StartFarm.Text = "Pollen Farm: ON"
	PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	notify'Pollen Farming Zone 13 Started'
	WayPointsFrame.Visible = false
end)

Field14AF.MouseButton1Down:connect(function()
	PollenFarmActive = true
	Field14AFActive = true
	Field1AFActive = false
	Field2AFActive = false
	Field3AFActive = false
	Field4AFActive = false
	Field5AFActive = false
	Field6AFActive = false
	Field7AFActive = false
	Field8AFActive = false
	Field9AFActive = false
	Field10AFActive = false
	Field11AFActive = false
	Field12AFActive = false
	Field13AFActive = false
	resethive = false
	switchlocationmsg = false
	StartFarm.Text = "Pollen Farm: ON"
	PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	notify'Pollen Farming Zone 14 Started'
	WayPointsFrame.Visible = false
end)

-- Avoid Vicious Bee --

AvoidViciousBee.MouseButton1Click:connect(function()
	if AvoidViciousActive ~= true then
		AvoidViciousActive = true
		AvoidViciousBee.BackgroundColor3 = Color3.new(0.5, 0, 0)
		AvoidViciousBee.Text = "Avoid Vicious Bee: ON"
	else
		AvoidViciousActive = false
		AvoidViciousBee.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		AvoidViciousBee.Text = "Avoid Vicious Bee: OFF"
	end
end)

-- Hunt Vicious Bee --

HuntViciousBee.MouseButton1Click:connect(function()
	if HuntViciousActive ~= true then
		HuntViciousActive = true
		HuntViciousBee.BackgroundColor3 = Color3.new(0.5, 0, 0)
		HuntViciousBee.Text = "Hunt Vicious Bee: ON"
		ExtrasScreen.BackgroundColor3 = Color3.new(0.5, 0, 0)
	else
		HuntViciousActive = false
		HuntViciousBee.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		HuntViciousBee.Text = "Hunt Vicious Bee: OFF"
		ExtrasScreen.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
	end
end)

spawn(function()
	while true do
		wait(1)
		if HuntViciousActive and viciousbeedetected then
			print("Vicous Bee has Appeared. Hunting Time!!")
			notify'Vicous Bee has Appeared. Hunting Time!!'
			if AvoidViciousActive then
				AvoidTempOFF = true
				AvoidViciousActive = false
				AvoidViciousBee.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
				AvoidViciousBee.Text = "Avoid ViciousBee: OFF"
			end
			if PollenFarmActive then
				FarmTempOFF = true
				PollenFarmActive = false
				StartFarm.Text = "Pollen Farm: OFF"
				PollenFarm.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
				StartFarm.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
			end
			print("God Mode activated. After defeating the bee you will respawn to exit God Mode.")

			God.BackgroundColor3 = Color3.new(0.5, 0, 0)
			God.Text = "God Mode: ON"
			GodModeActive = true
			game.Players.LocalPlayer.Character.Humanoid.Name = 1
			local l = game.Players.LocalPlayer.Character["1"]:Clone()
			l.Parent = game.Players.LocalPlayer.Character
			l.Name = "Humanoid"
			wait(0.1)
			game.Players.LocalPlayer.Character["1"]:Destroy()
			game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
			game.Players.LocalPlayer.Character.Animate.Disabled = true
			wait(0.1)
			game.Players.LocalPlayer.Character.Animate.Disabled = false
			game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
			godmodeactivated = true
			wait(1)
			
			local hum = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
			for i,v in pairs(workspace.Particles:GetChildren()) do
				for x in string.gmatch(v.Name, "Vicious") do
					while HuntViciousActive and viciousbeedetected do
						if v.Name == "Vicious" then
							hum.CFrame = CFrame.new(v.Position.x, v.Position.y, v.Position.z)
							wait(1)
						end
					end
				end
			end
			wait(1)
			location = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			pausehumcheck = true
			wait()
			local prt = Instance.new("Model", workspace);
			Instance.new("Part", prt).Name="Torso";
			Instance.new("Part", prt).Name="Head";
			Instance.new("Humanoid", prt).Name="Humanoid";
			game.Players.LocalPlayer.Character=prt
			God.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
			God.Text = "God Mode: OFF"
			GodModeActive = false
			wait(6)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = location
			pausehumcheck = false
			if AvoidTempOFF then
				AvoidTempOFF = false
				AvoidViciousBee.BackgroundColor3 = Color3.new(0.5, 0, 0)
				AvoidViciousBee.Text = "Avoid ViciousBee: ON"
				AvoidViciousActive = true
			end
			if FarmTempOFF then
				FarmTempOFF = false
				PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
				StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
				StartFarm.Text = "Pollen Farm: ON"
				PollenFarmActive = true
			end
		end
	end
end)

-- Farm Sprouts --

SproutFarmToggle.MouseButton1Click:connect(function()
	if SproutFarmActive ~= true then
		SproutFarmActive = true
		SproutFarmToggle.BackgroundColor3 = Color3.new(0.5, 0, 0)
		SproutFarmToggle.Text = "Farm Sprout: ON"
		ExtrasScreen.BackgroundColor3 = Color3.new(0.5, 0, 0)
	else
		SproutFarmActive = false
		SproutFarmToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		SproutFarmToggle.Text = "Farm Sprout: OFF"
		ExtrasScreen.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
	end
end)

spawn(function()
	while true do
		startpos = nil
		wait(1)
		if SproutFarmActive and sproutdetected then
			player = game:GetService("Players").LocalPlayer
			local pollenLbl = player.Character:FindFirstChild("ProgressLabel",true)
			if not pollenLbl then
				print("Backpack not found")
			end
			local maxpollen = tonumber(pollenLbl.Text:match("%d+$"))
			print("A Sprout has Appeared. Farming Time!!")
			notify'A Sprout has Appeared. Farming Time!!'
			if PollenFarmActive then
				FarmTempOFF = true
				PollenFarmActive = false
				StartFarm.Text = "Pollen Farm: OFF"
				PollenFarm.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
				StartFarm.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
				wait(1)
			end
			while SproutFarmActive and sproutdetected do
				if viciousbeenear and not godmodeactivated or tonumber(plrHealth) <= 30 and not godmodeactivated then
					print("God Mode activated.")
					God.BackgroundColor3 = Color3.new(0.5, 0, 0)
					God.Text = "God Mode: ON"
					GodModeActive = true
					game.Players.LocalPlayer.Character.Humanoid.Name = 1
					local l = game.Players.LocalPlayer.Character["1"]:Clone()
					l.Parent = game.Players.LocalPlayer.Character
					l.Name = "Humanoid"
					wait(0.1)
					game.Players.LocalPlayer.Character["1"]:Destroy()
					game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
					game.Players.LocalPlayer.Character.Animate.Disabled = true
					wait(0.1)
					game.Players.LocalPlayer.Character.Animate.Disabled = false
					game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
					godmodeactivated = true
					wait(1)
				end
				local root = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
				for i,v in pairs(workspace.Particles:GetChildren()) do
					for x in string.gmatch(v.Name, "Sprout") do
						if v.Name == "Sprout" then
							if SproutFarmActive and sproutdetected then
								if not sproutsafety then
									local setstartpos = root.CFrame
									for a = 1, 120 do
										root.CFrame = v.CFrame * CFrame.new(0, 30, 0)
										wait(0.1)
									end
									wait(1)
									root.CFrame = v.CFrame * CFrame.new(3, 10, 3)
									wait(1)
									local startpos = root.CFrame
									AutoDigActive = true
									sproutsafety = true
									sproutstarted = true
								end
							end
						end
					end
				end
				workspace.Collectibles.ChildAdded:Connect(function(part)
					if SproutFarmActive and sproutstarted then
						local rootpos = root.CFrame
						if tostring(part) == tostring(game.Players.LocalPlayer.Name) or tostring(part) == "C" then
							if (part.Position-root.Position).magnitude <= 80 then
								root.CFrame = CFrame.new(part.Position.x, root.Position.y, part.Position.z)
								wait(0.07)
								root.CFrame = rootpos
								wait(0.05)
							end
						end
					end
				end)
				if tonumber(player.CoreStats.Pollen.Value+1) > tonumber(maxpollen) then
					print("Bag Full: " ..tostring(player.CoreStats.Pollen.Value))
					SproutFarmActive = false
					wait(0.1)
					game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Players").LocalPlayer.SpawnPos.Value.p)
					wait(1)
					game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer("ToggleHoneyMaking")
					repeat wait(0.5) until game:GetService("Players").LocalPlayer.CoreStats.Pollen.Value < 1
					wait(4)
					SproutFarmActive = true
				end
				wait(2)
				root.CFrame = startpos
			end
			print("Finished farming Sprout")
			wait(20)
			AutoDigActive = false
			sproutstarted = false
			if godmodeactivated then
				location = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				pausehumcheck = true
				wait()
				local prt = Instance.new("Model", workspace);
				Instance.new("Part", prt).Name="Torso";
				Instance.new("Part", prt).Name="Head";
				Instance.new("Humanoid", prt).Name="Humanoid";
				game.Players.LocalPlayer.Character=prt
				wait(6)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = location
				godmodeactivated = false
				pausehumcheck = false
				God.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
				God.Text = "God Mode: OFF"
				GodModeActive = false
			end
			if FarmTempOFF then
				FarmTempOFF = false
				PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
				StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
				StartFarm.Text = "Pollen Farm: ON"
				PollenFarmActive = true
			end
			sproutsafety = false
			root.CFrame = rootpos
		end
	end
end)

-- God Mode --

God.MouseButton1Click:connect(function()
	if GodModeActive ~= true then
		GodModeActive = true
		God.BackgroundColor3 = Color3.new(0.5, 0, 0)
		God.Text = "God Mode: ON"
		game.Players.LocalPlayer.Character.Humanoid.Name = 1
		local l = game.Players.LocalPlayer.Character["1"]:Clone()
		l.Parent = game.Players.LocalPlayer.Character
		l.Name = "Humanoid"
		wait(0.1)
		game.Players.LocalPlayer.Character["1"]:Destroy()
		game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
		game.Players.LocalPlayer.Character.Animate.Disabled = true
		wait(0.1)
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
	else
		GodModeActive = false
		God.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		God.Text = "God Mode: OFF"
		location = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		--pausehumcheck = true
		wait()
		local prt = Instance.new("Model", workspace);
		Instance.new("Part", prt).Name="Torso";
		Instance.new("Part", prt).Name="Head";
		Instance.new("Humanoid", prt).Name="Humanoid";
		game.Players.LocalPlayer.Character=prt
		wait(6)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = location
		--pausehumcheck = false
	end
end)

-- Auto Dig --

AutoDig.MouseButton1Click:connect(function()
	if AutoDigActive ~= true then
		AutoDigActive = true
		AutoDig.BackgroundColor3 = Color3.new(0.5, 0, 0)
	else
		AutoDigActive = false
		notify'Auto Dig Stopped'
		AutoDig.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
	end
end)

spawn(function()
	while true do
		wait(1)
		if AutoDigActive then
			local player = game:GetService("Players").LocalPlayer
			local pollenTool = player.Character:FindFirstChildOfClass("Tool") or player.Backpack:FindFirstChildOfClass("Tool")
			if pollenTool==nil or pollenTool:FindFirstChild("ClickEvent")==nil then
				AutoDigActive = false
				AutoDig.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
				print("Tool not found")
			else
				pollenTool.Parent = player.Character
				while AutoDigActive do
					wait(0.05)
					pollenTool.ClickEvent:FireServer(CFrame.new())
				end
			end
		end
	end
end)


-- Auto Token Gather --

mouse.KeyDown:connect(function(key)
	if key == TokenToggle.Text then
		if not tokenfarmactive then
			tokenfarmactive = true
			notify'Auto Token Gather Enabled'
		else
			tokenfarmactive = false
			notify'Auto Token Gather Disabled'
		end
	end
end)

spawn(function()
	while true do
		wait(0.5)
		if tokenfarmactive then
			workspace.Collectibles.ChildAdded:Connect(function(part)
				if tokenfarmactive then
					local root = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
					local rootpos = root.CFrame
					if tostring(part) == tostring(game.Players.LocalPlayer.Name) or tostring(part) == "C" then
						-- print("token position:  " ..tostring(part.Position)) --
						-- print("player position: " ..tostring(root.Position)) --
						-- print("Distance:        " ..tostring((part.Position - root.Position).magnitude)) --
						if (part.Position-root.Position).magnitude <= 50 then
							root.CFrame = CFrame.new(part.Position.x, part.Position.y, part.Position.z)
							wait(0.07)
							root.CFrame = rootpos
							wait(0.05)
						end
					end
				end
			end)
		end	
	end
end)

spawn(function()
	while true do
		wait(0.5)
		if tokenfarmactive2 then
			local root = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
			while tokenfarmactive2 do
				local rootpos = root.CFrame
				for k,v in pairs(workspace.Collectibles:GetChildren()) do
					if v.Name == game.Players.LocalPlayer.Name and not v:FindFirstChild("farmed") or tonumber((v.Position - root.Position).magnitude) <= 50 and not v:FindFirstChild("farmed") then
						local intvalue = Instance.new("IntValue",v)
						intvalue.Name = "farmed"
						root.CFrame = v.CFrame
						wait(.07)
					end
				end
				wait(0.1)
				root.CFrame = rootpos
			end
		end	
	end
end)
