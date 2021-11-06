-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
countloop=0
countloopz=0
countloopx=0
_W = display.contentWidth;
_H = display.contentHeight;
solutionis={}
tops=nil
tops={}
modenow=1

local wpmaGlobalAdmob = require("wpmaGlobalAdmob")
wpmaGlobalAdmob.initAdmobBannerAd()
wpmaGlobalAdmob.initAdmobInterstitialAd()


 mylink="https://goo.gl/HHjVGi"
 
 
local stopwatch = require "stopwatch"
local modf = math.modf
local sessstart = 0
local upclockon =0
local timeKeep = stopwatch.new()
 local hh=0
local mm=0
local ss = 0 
local mmt = 0
 timeKeep:pause()
 
function wrap_time(time_amount)
   local start_seconds = time_amount --start_seconds = 20000
 
   local start_minutes = modf(start_seconds/60) --start_minutes = 333
   local seconds = start_seconds - start_minutes*60 --seconds = 20
 
   local start_hours = modf(start_minutes/60) --start_hours = 5
   local minutes = start_minutes - start_hours*60 --minutes = 33
 
   local start_days = modf(start_hours/24) --start_days = 0
   local hours = start_hours - start_days*24 --hours = 5
 
   local wrapped_time = {days=start_days, hours=hours, minutes=minutes, seconds=seconds}
 
   return wrapped_time --returns 0, 5, 33, 20
end

  function resettimer()

timeKeep = nil
 local timeKeep = stopwatch.new()
 timeKeep:pause()
 upclockon =0
 end
 function updateTimer()  
	--upclockon =1
timingtex.isVisible=false
tfor = timeKeep:getElapsedSeconds()
tfor = timeKeep:getElapsedSeconds()
local coolTime = wrap_time(tfor)
print(tx)

if sessstart==0 then

zx1 =  os.date('*t');
	
kk1=os.date("%Y-%m-%d %H:%M:%S", os.time(zx1))

sessstart=1
end

ss=coolTime.seconds
hh=coolTime.hours
mm=coolTime.minutes
timingtex.text = hh.." Hrs : "..mm.." Min : "..ss.." Sec"
--[[
datatrack[1].sessiondur= hh.." Hrs : "..mm.." Min : "..ss.." Sec"

datatrack[1].sessiondurHr= hh
datatrack[1].sessiondurMin= mm
datatrack[1].sessiondurSec= ss
]]--
timingtex.isVisible=false

if mmt==1 then
timingtex.isVisible=false
else
timingtex.isVisible=true
end
--print(tfor)



end

 
 
 
 
 
 
 
 
 
 
 
 local notifications = require( "plugin.notifications" )
 local options1Z = {
   alert = "Your puzzles are waiting on True Sudoku",
  
   --sound = "2.wav",
   custom = { msg = "Alarm" }
}
--(DAYS*24*60*60)
local notificationTime1 = (2*24*60*60) --SEC LALA
local notificationTime2 = (10*24*60*60) --SEC LALA
 
 notifications.cancelNotification()
 time1 = os.date( "!*t", os.time() + notificationTime1 )
notificationID1 = notifications.scheduleNotification( time1, options1Z )

 time2 = os.date( "!*t", os.time() + notificationTime2 )
 notificationID2 = notifications.scheduleNotification( time2, options1Z )

 
 
 
 
 
 
local ads = require("ads")
local t
local appID = "ca-app-pub-5935841090166494/8944995391"

local function adListener(event)
    local msg = evento.response

    if event.phase == "loaded" then
    end

    if event.isError then
    end
end



--background = display.newImage("Images/background.png", 0, 0)

local function showBanner()
ads.init("admob", appID, adListener)
    ads.show("banner", {x = 0, y = display.contentHeight-15, appID, testMode = false})
end
--showBanner()
	 -- timer.performWithDelay(60000, showBanner, -1) 
 wpmaGlobalAdmob.showAdmobBannerAd("bottom")
 wpmaGlobalAdmob.loadAdmobInterstitialAd()
 
 
 local loadsave = require("loadsave")
if (loadsave.loadTable("scorenow.json", system.DocumentsDirectory) ==nil) then

scorenow=nil
scorenow={}
scorenow[1]=0
scorenow[2]=0
scorenow[3]=0
scorenow[4]=0


else
scorenow=loadsave.loadTable("scorenow.json", system.DocumentsDirectory)


end


if (loadsave.loadTable("scorenow2.json", system.DocumentsDirectory) ==nil) then

scorenow2=nil
scorenow2={}
scorenow2[1]={}
scorenow2[1].hh=0
scorenow2[1].mm=0
scorenow2[1].ss=0
scorenow2[1].text="N/A"

scorenow2[2]={}
scorenow2[2].hh=0
scorenow2[2].mm=0
scorenow2[2].ss=0
scorenow2[2].text="N/A"

scorenow2[3]={}
scorenow2[3].hh=0
scorenow2[3].mm=0
scorenow2[3].ss=0
scorenow2[3].text="N/A"

scorenow2[4]={}
scorenow2[4].hh=0
scorenow2[4].mm=0
scorenow2[4].ss=0
scorenow2[4].text="N/A"
 loadsave.saveTable(scorenow2, "scorenow2.json", system.DocumentsDirectory)

else
scorenow2=loadsave.loadTable("scorenow2.json", system.DocumentsDirectory)


end




gamezfeedme1={9 ,2 ,5 ,6 ,3 ,1 ,8 ,4 ,7 ,8 ,6 ,3 ,4 ,2 ,7 ,5 ,1 ,9 ,7 ,1 ,4 ,8 ,9 ,5 ,3 ,6 ,2 ,4 ,7 ,1 ,5 ,8 ,3 ,2 ,9 ,6 ,5 ,3 ,6 ,2 ,1 ,9 ,7 ,8 ,4 ,2 ,8 ,9 ,7 ,6 ,4 ,1 ,5 ,3 ,1 ,5 ,2 ,3 ,4 ,6 ,9 ,7 ,8 ,3 ,4 ,7 ,9 ,5 ,8 ,6 ,2 ,1 ,6 ,9 ,8 ,1 ,7 ,2 ,4 ,3 ,5}

removethesemany1=0

function print_r ( t )  
    local print_r_cache={}
    local function sub_print_r(t,indent)
        if (print_r_cache[tostring(t)]) then
            print(indent.."*"..tostring(t))
        else
            print_r_cache[tostring(t)]=true
            if (type(t)=="table") then
                for pos,val in pairs(t) do
                    if (type(val)=="table") then
                        print(indent.."["..pos.."] => "..tostring(t).." {")
                        sub_print_r(val,indent..string.rep(" ",string.len(pos)+8))
                        print(indent..string.rep(" ",string.len(pos)+6).."}")
                    elseif (type(val)=="string") then
                        print(indent.."["..pos..'] => "'..val..'"')
                    else
                        print(indent.."["..pos.."] => "..tostring(val))
                    end
                end
            else
                print(indent..tostring(t))
            end
        end
    end
    if (type(t)=="table") then
        print(tostring(t).." {")
        sub_print_r(t,"  ")
        print("}")
    else
        sub_print_r(t,"  ")
    end
    print()
end

	 
	 function gameresultsplash(feedherestage)
	timingtex.isVisible=false 
timeKeep:pause() 
	print(timingtex.text)
	    upclockon =0 
	 grateB=nil
	  grateB = display.newGroup()
 dry1=-120
  dry2=-8
    dry3=-80


  
   bacg = display.newImage( "11.jpg" )
bacg.anchorX=0
bacg.anchorY=0
bacg.x  = -10
bacg.y  = -50
bacg:scale( .5, .5 )
bacg:addEventListener("touch", function()  return true end)
bacg:addEventListener("tap", function()  return true end)
  grateB:insert( bacg )
   			
rb1r = display.newRect( 0, 0, _W*5, _H*5 )
 rb1r:setFillColor( 0, 0, 0 ,0)
--rb1r:toFront()

  grateB:insert( rb1r )

	
function anotherfunctx(event)   --creates new puzzle 2nd copy
 if "began" == event.phase then
 	 wpmaGlobalAdmob.showAdmobInterstitialAd() 
wpmaGlobalAdmob.loadAdmobInterstitialAd() 
 timeKeep:pause() 
 upclockon =0
ky= timeKeep:getElapsedSeconds()
print(ky)
timeKeep:addTime(-ky)
			timingtex.isVisible=true

	  butonHolderanother.alpha=1

--lastpress=event.target.digit
 elseif "ended" == event.phase then
	  butonHolderanother.alpha=.7
--gamezfeedme=selectmode(1)
  if grateB==nil then
else
grateB:removeSelf()
grateB = nil
end
killall()
gamezfeedme=nil
gamezfeedme={}
gamezfeedme=selectmode(modenow)
print("selectmodeoutput>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>1")
print_r(modenow)
--print_r(selectmode(1))
print("selectmodeoutput>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>simple array")
--print_r(simp)
--removethesemany=60 --35=18

print("this is the shit that is feed")
--print_r(gamezfeedme)
gameon(gamezfeedme)
 --butonHolderanotherx:toFront()
 
end
end


function butonHolderbackks(event)   
 if "began" == event.phase then
    upclockon =1
				timingtex.isVisible=true
 timeKeep:resume()
	
 
	
		
		
 print("back hit>>>>>>>>>>>>>>")
	  butonHolderbackk.alpha=1

--lastpress=event.target.digit
 elseif "ended" == event.phase then
	  butonHolderbackk.alpha=.7
--gamezfeedme=selectmode(1)
  if grateB==nil then
else
grateB:removeSelf()
grateB = nil
end

 
end
end

function butonHolderrateplays(  )
    if butonHolderrateplay.phase == "began" then
 elseif "ended" == butonHolderrateplay.phase then
settings[1].remind=1 
 system.openURL(mylink)  
 --grateA.isVisible=false
 
end
end



function shareit00()
localGroup = display.newGroup()  

 
 local screenCap = display.captureScreen( true )
screenCap.anchorX=0
screenCap.anchorY=0
screenCap.x=10
screenCap.y=0
 
 
-- creating display objects and adding it to the group --

localGroup:insert(screenCap)


	local baseDir = system.DocumentsDirectory
display.save( localGroup, "TrueSudoku.jpg", baseDir )
--os.remove( system.pathForFile( "TrueSudoku.jpg", baseDir ) )
	 localGroup.isVisible=false

localGroup:removeSelf()
localGroup = nil
-- creating the display group --

local isSimulator = "simulator" == system.getInfo( "environment" )

if isSimulator then
	native.showAlert( "Build for device", "This plugin is not supported on the Corona Simulator, please build for an iOS/Android device or Xcode simulator", { "OK" } )
end

-- Hide the status bar
display.setStatusBar( display.HiddenStatusBar )

-- Require the widget library
local widget = require( "widget" )

-- Use the iOS 7 theme for this sample
--widget.setTheme( "widget_theme_ios7" )

-- This is the name of the native popup to show, in this case we are showing the "social" popup
local popupName = "social"


-- Display some text


local sendMessage = true
local sendURL = true
local sendImage = true

-- Exectuted upon touching & releasing a widget button

	local serviceName = "share"
	local isAvailable = native.canShowPopup( popupName, serviceName )

txthere1 = "Try True Sudoku – a sudoku puzzle with truly one solution"
	-- For demonstration purposes, we set isAvailable to true here for Android.
	if "Android" == system.getInfo( "platformName" ) then
		isAvailable = true
	end
	--messenger2("  1 Thank you for spreading the joy\nof good health with your loved ones.")


	-- If it is possible to show the popup
	if isAvailable then
	


		local listener = {}
		function listener:popup( event )
			--print( "name(" .. event.name .. ") type(" .. event.type .. ") action(" .. tostring(event.action) .. ") limitReached(" .. tostring(event.limitReached) .. ")" )			
		end
		
		local options = {}
		options.service = serviceName
		options.listener = listener
		if sendMessage then
			options.message = txthere1
		end
		if sendURL then
			options.url = { "https://goo.gl/HHjVGi" }
		end

		if sendImage then
			options.image = {
				{ filename = "TrueSudoku.jpg", baseDir = system.DocumentsDirectory },
			}
		end
		-- Show the popup
		native.showPopup( popupName, options )
	else
		if isSimulator then
			native.showAlert( "Build for device", "This plugin is not supported on the Corona Simulator, please build for an iOS/Android device or the Xcode simulator", { "OK" } )
		else
			-- Popup isn't available.. Show error message
			native.showAlert( "Cannot send " .. serviceName .. " message.", "Please setup your " .. serviceName .. " account or check your network connection (on android this means that the package/app (ie Twitter) is not installed on the device)", { "OK" } )
		end
	end

	
end




-- change it to next puzzle
      butonHolderanotherx = display.newImage( "anotherpuz.png" ) -- create a new rectangle and store it in the letterHolder array
   butonHolderanotherx:scale( .31, .31 ) -- assign a random color
   butonHolderanotherx.x = _W/2 -- display the rectangle in a random x position on screen
   butonHolderanotherx.y =   _H-8-80-120+50+dry3+15-10-15+20+20
   butonHolderanotherx.alpha=.8
  -- butonHolderanotherx.isVisible=false
     --grateA:insert( butonHoldercancel) 
	 butonHolderanotherx:addEventListener( "touch", anotherfunctx )
	     grateB:insert( butonHolderanotherx )
	       butonHolderrateplay = display.newImage( "r1.png" ) -- create a new rectangle and store it in the letterHolder array
   butonHolderrateplay:scale( .31, .31 ) -- assign a random color
   butonHolderrateplay.x = _W/2 -- display the rectangle in a random x position on screen
   butonHolderrateplay.y =   _H-8-80-120+dry3+15-10-15+20+20
   butonHolderrateplay.alpha=.8
   
   	       butonHolderrSHARE = display.newImage( "ss3.png" ) -- create a new rectangle and store it in the letterHolder array
   butonHolderrSHARE:scale( .71, .71  ) -- assign a random color
   butonHolderrSHARE.x = _W/2 -- display the rectangle in a random x position on screen
   butonHolderrSHARE.y =   _H-8-80-120+dry3+15-10-15+20+20+20+90-10
   butonHolderrSHARE.alpha=.8
   butonHolderrSHARE.isVisible=false
     --grateA:insert( butonHoldercancel) 
	 butonHolderrSHARE:addEventListener( "touch", shareit00 )
	 	     grateB:insert( butonHolderrSHARE )
	 

        butonHolderbackk = display.newImage( "back2.png" ) -- create a new rectangle and store it in the letterHolder array
   butonHolderbackk:scale( .31, .31 ) -- assign a random color
   butonHolderbackk.x = _W/2 -- display the rectangle in a random x position on screen
   butonHolderbackk.y =   _H-8-80-120+100+dry3+15-10-15+20+20
   butonHolderbackk.alpha=1
     grateB:insert( butonHolderbackk )
     --grateA:insert( butonHoldercancel) 
	 butonHolderbackk:addEventListener( "touch", butonHolderbackks )
  	   

  if feedherestage==1 then
  
  scorenow[modenow]=scorenow[modenow]+1
  
  tempxx =  (scorenow2[modenow].hh*60*60) + (scorenow2[modenow].mm *60)+ scorenow2[modenow].ss
  if tempxx==0 then
   
  scorenow2[modenow].hh=hh
scorenow2[modenow].mm=mm
scorenow2[modenow].ss=ss
scorenow2[modenow].text=timingtex.text
 loadsave.saveTable(scorenow2, "scorenow2.json", system.DocumentsDirectory)
else

tempxx2=(hh*60*60) + (mm *60)+ ss

if tempxx2<tempxx then

  scorenow2[modenow].hh=hh
scorenow2[modenow].mm=mm
scorenow2[modenow].ss=ss
scorenow2[modenow].text=timingtex.text
 loadsave.saveTable(scorenow2, "scorenow2.json", system.DocumentsDirectory)
end


  end
  
 loadsave.saveTable(scorenow, "scorenow.json", system.DocumentsDirectory)
  
  t1text = display.newText( "Congratulations", _W/2, 44*3+185-65-40+dry1,native.systemFont, 20 )
t1text:setFillColor( .2, 1, .3 )
t1text.anchorX=.5
t1text.anchorY=.5


t2text = display.newText( " Lets move on to the next puzzle\n".." Games won at level "..modenow.." is: "..scorenow[modenow].."\n Current Time: "..timingtex.text.."\n Best Time: "..scorenow2[modenow].text, _W/2+20, 44*3+185-65+35+dry1+dry2-30+20,native.systemFont, 16 )
t2text:setFillColor( .95, .95, .95 )
t2text.anchorX=.5
t2text.anchorY=.5
butonHolderbackk.isVisible=false

 	 wpmaGlobalAdmob.showAdmobInterstitialAd() 
wpmaGlobalAdmob.loadAdmobInterstitialAd() 
elseif feedherestage==2 then
  t1text = display.newText( "Try Again", _W/2, 44*3+185-65-40+dry1,native.systemFont, 20 )
t1text:setFillColor( 1, .8, .2 )
t1text.anchorX=.5
t1text.anchorY=.5


t2text = display.newText( "       This puzzle is incomplete.\n Please recheck missing entries", _W/2, 44*3+185-65+35+dry1+dry2-30,native.systemFont, 16 )
t2text:setFillColor( .95, .95, .95  )
t2text.anchorX=.5
t2text.anchorY=.5
butonHolderrateplay.isVisible=false
 	 wpmaGlobalAdmob.showAdmobInterstitialAd() 
wpmaGlobalAdmob.loadAdmobInterstitialAd() 
elseif feedherestage==3 then
  t1text = display.newText( "Try Again", _W/2, 44*3+185-65-40+dry1,native.systemFont, 20 )
t1text:setFillColor( 1, .8, .2 )
t1text.anchorX=.5
t1text.anchorY=.5


t2text = display.newText( "  Sorry! Your numbers don't match up.\n       Please recheck wrong entries", _W/2, 44*3+185-65+35+dry1+dry2-30,native.systemFont, 16 )
t2text:setFillColor( .95, .95, .95  )
t2text.anchorX=.5
t2text.anchorY=.5
butonHolderrateplay.isVisible=false
 	 wpmaGlobalAdmob.showAdmobInterstitialAd() 
wpmaGlobalAdmob.loadAdmobInterstitialAd() 

end
    grateB:insert( t1text )
    grateB:insert( t2text )
	
  
	 end


function gameon(gamezfeedme)
print("ddddddddddddddddddddddddddddddddddddddddddddddd")
--print_r(gamezfeedme)
	 solutionis=nil
	 solutionis={}
	

 grateA = display.newGroup()
entrygroup={"l1.png","l2.png","l3.png","l4.png","l5.png","l6.png","l7.png","l8.png","l9.png"}
entrygroup1={"e1.png","e2.png","e3.png","e4.png","e5.png","e6.png","e7.png","e8.png","e9.png"}
numpicgroup={"n1.png","n2.png","n3.png","n4.png","n5.png","n6.png","n7.png","n8.png","n9.png","n-.png"}
blockss=nil
linessx=nil
linessy=nil
butonHolder=nil
cord=nil
empty0=nil
blockss={}
linessx={}
linessy={}
butonHolder={}
cord={}
empty0={}
empvar=1
blockss[1]={1,2,3,10,11,12,19,20,21}
blockss[2]={4,5,6,13,14,15,22,23,24}
blockss[3]={7,8,9,16,17,18,25,26,27}
blockss[4]={28,29,30,37,38,39,46,47,48}
blockss[5]={31,32,33,40,41,42,49,50,51}
blockss[6]={34,35,36,43,44,45,52,53,54}
blockss[7]={55,56,57,64,65,66,73,74,75}
blockss[8]={58,59,60,67,68,69,76,77,78}
blockss[9]={61,62,63,70,71,72,79,80,81}

Testgameva22={}
Testgameva22.problem=gamezfeedme.PROB
Testgameva22.solution=gamezfeedme.SOL
seed =0
emptycellsz=0




function seedoperation2(seedm) --reverse it
 local randomz = math.random(1,2)
 -- print_r(seedm)
 if randomz==1 then
print("ssssssssssssssssssssssssssssssssssssssssssssssssss")


local temp = nil
temp={}
zx=81
for ix=1,81 do

temp[ix]=seedm[zx]
zx=zx-1 
 end

 --print_r(temp)
 
 return(temp)
 end
 end
 
 function seedoperation3(seedm) --transpose  not good--mirror flip needs to be done + ull rotation
  local randomz = math.random(1,2)
  --print_r(seedm)
 if randomz==1 then
 -- print_r(seedm)
 
 
 local temppz={}
 local mj=1
for za=1,9 do
temppz[za]={}
for az=1,9 do 
temppz[za][az]={}
temppz[za][az]=seedm[mj]
mj=mj+1
end
end 
--print_r(temppz)


print("zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz")
--print(randomz)

 local temppz1={}
 for za=1,9 do
temppz1[za]={}
for az=1,9 do 
temppz1[za][az]={}
temppz1[za][az]=temppz[az][za]
end
end 

 for za=1,9 do
for az=1,9 do 
temppz[az][za]=temppz1[az][za]
end
end



 local mj=1
 kapa={}
for za=1,9 do


for az=1,9 do 

kapa[mj]=temppz[za][az]
mj=mj+1
end
end 
return kapa
else


return seedm
end
--print_r(temppz)
 end
 
 
function seedoperation1(seedm)
local numbers = {1,2,3,4,5,6,7,8,9}
local seedkoo= {}
--print_r(seedm)
for ix= 1,#seedm do
seedkoo[ix]=seedm[ix]

end


for i = 1, 10 do
    local random1 = math.random(9)
    local random2 = math.random(9)
    numbers[random1], numbers[random2] = numbers[random2], numbers[random1]
end
--print_r(numbers)
temppnm=nil
temppnm={}

for ii= 1,81 do
temppnm=numbers[seedkoo[ii]]
seedkoo[ii]=temppnm
end
--print("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxseed change")
--print_r(seedm)
 --solutionis=seedm
return seedkoo

end
countloopz=countloop+1
function problemcreate(seedk,emptycellsz)
--print_r(seedk)



countloop=countloop+1

--print_r(seedk)
kk=0
local seedo=seedk
oddseries={1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 35, 37, 39, 41, 43, 45, 47, 49, 51, 53, 55, 57, 59, 61, 63, 65, 67, 69, 71, 73, 75, 77, 79, 81}
while kk< (10) do

for temp3=1,9 do
temp2=math.random(1,9)


tempz=blockss[temp3][temp2]

kk=kk+1

seedo[tempz]=0
end

end
while kk< (emptycellsz+1) do


tempz=oddseries[math.random(1,41)]

if seedo[tempz]==0 then
temp1 = math.random(1,9)
temp2 = math.random(1,9)
tempz=blockss[temp1][temp2]
if seedo[tempz]==0 then
else
seedo[tempz]=0
kk=kk+1
end
else
seedo[tempz]=0
kk=kk+1
end


end
--print("originalllllllllllllllllllllllllllllllllllllllllllllllllllllllllll")

return seedo

end



linessx[1]={1,2,3,4,5,6,7,8,9}
linessx[2]={10,11,12,13,14,15,16,17,18}
linessx[3]={19,20,21,22,23,24,25,26,27}
linessx[4]={28,29,30,31,32,33,34,35,36}
linessx[5]={37,38,39,40,41,42,43,44,45}
linessx[6]={46,47,48,49,50,51,52,53,54}
linessx[7]={55,56,57,58,59,60,61,62,63}
linessx[8]={64,65,66,67,68,69,70,71,72}
linessx[9]={73,74,75,76,77,78,79,80,81}

linessy[1]={1,10,19,28,37,46,55,64,73}
linessy[2]={2,11,20,29,38,47,56,65,74}
linessy[3]={3,12,21,30,39,48,57,66,75}
linessy[4]={4,13,22,31,40,49,58,67,76}
linessy[5]={5,14,23,32,41,50,59,68,77}
linessy[6]={6,15,24,33,42,51,60,69,78}
linessy[7]={7,16,25,34,43,52,61,70,79}
linessy[8]={8,17,26,35,44,53,62,71,80}
linessy[9]={9,18,27,36,45,54,63,72,81}

cord[1]={1,1,1}
cord[2]={1,2,1}
cord[3]={1,3,1}
cord[4]={1,4,2}
cord[5]={1,5,2}
cord[6]={1,6,2}
cord[7]={1,7,3}
cord[8]={1,8,3}
cord[9]={1,9,3}
cord[10]={2,1,1}
cord[11]={2,2,1}
cord[12]={2,3,1}
cord[13]={2,4,2}
cord[14]={2,5,2}
cord[15]={2,6,2}
cord[16]={2,7,3}
cord[17]={2,8,3}
cord[18]={2,9,3}
cord[19]={3,1,1}
cord[20]={3,2,1}
cord[21]={3,3,1}
cord[22]={3,4,2}
cord[23]={3,5,2}
cord[24]={3,6,2}
cord[25]={3,7,3}
cord[26]={3,8,3}
cord[27]={3,9,3}
cord[28]={4,1,4}
cord[29]={4,2,4}
cord[30]={4,3,4}
cord[31]={4,4,5}
cord[32]={4,5,5}
cord[33]={4,6,5}
cord[34]={4,7,6}
cord[35]={4,8,6}
cord[36]={4,9,6}
cord[37]={5,1,4}
cord[38]={5,2,4}
cord[39]={5,3,4}
cord[40]={5,4,5}
cord[41]={5,5,5}
cord[42]={5,6,5}
cord[43]={5,7,6}
cord[44]={5,8,6}
cord[45]={5,9,6}
cord[46]={6,1,4}
cord[47]={6,2,4}
cord[48]={6,3,4}
cord[49]={6,4,5}
cord[50]={6,5,5}
cord[51]={6,6,5}
cord[52]={6,7,6}
cord[53]={6,8,6}
cord[54]={6,9,6}
cord[55]={7,1,7}
cord[56]={7,2,7}
cord[57]={7,3,7}
cord[58]={7,4,8}
cord[59]={7,5,8}
cord[60]={7,6,8}
cord[61]={7,7,9}
cord[62]={7,8,9}
cord[63]={7,9,9}
cord[64]={8,1,7}
cord[65]={8,2,7}
cord[66]={8,3,7}
cord[67]={8,4,8}
cord[68]={8,5,8}
cord[69]={8,6,8}
cord[70]={8,7,9}
cord[71]={8,8,9}
cord[72]={8,9,9}
cord[73]={9,1,7}
cord[74]={9,2,7}
cord[75]={9,3,7}
cord[76]={9,4,8}
cord[77]={9,5,8}
cord[78]={9,6,8}
cord[79]={9,7,9}
cord[80]={9,8,9}
cord[81]={9,9,9}





--[[
Box1 = {} -- initialize array
numOfImages = 91 -- define how many images on what on screen
local i = 1
local sq=100

Box1[i]= display.newImage( "1.png" )



Box1[i].x  = _W
Box1[i].y  = _H/2
Box1[i].alpha=1 --.70 and .90
Box1[i]:scale( .1, .18 )

for i=1,numOfImages do -- start for loop to go from 1 to 10
   letterHolder[i] = display.newRect(0,0,20,20) -- create a new rectangle and store it in the letterHolder array
   letterHolder[i]:setFillColor(math.random(1,255), math.random(1,255), math.random(1,255)) -- assign a random color
   letterHolder[i].x = math.random(0, display.contentWidth) -- display the rectangle in a random x position on screen
   letterHolder[i].y = math.random(0, display.contentHeight) -- display the rectangle in a random y position on screen
end


letterHolder = {} -- initialize array
numOfImages = 10 -- define how many images on what on screen
 
for i=1,numOfImages do -- start for loop to go from 1 to 10
   letterHolder[i] = display.newRect(0,0,20,20) -- create a new rectangle and store it in the letterHolder array
   letterHolder[i]:setFillColor(math.random(1,255), math.random(1,255), math.random(1,255)) -- assign a random color
   letterHolder[i].x = math.random(0, display.contentWidth) -- display the rectangle in a random x position on screen
   letterHolder[i].y = math.random(0, display.contentHeight) -- display the rectangle in a random y position on screen
end

]]--

function bckchange(yp)
	background = display.newImage( yp, true )
background.x = display.contentWidth / 2
background.y = display.contentHeight / 2
background:scale(.5,.5)
rb1az = display.newRect( 0, 0, _W*5, _H*5 )
 rb1az:setFillColor( 0, 0, 0 ,0)
--rb1r:toFront()



 grateA:insert( background ) 
   grateA:insert( rb1az )
end

--lineHolder[1] = display.newImage( "1.png" )

c=bckchange("11.jpg")
j=0
k=1
l=1
bxstartx=34
bystarty=-130
bxscale=32
letterHolder = nil -- initialize array
letterHolder1=nil
  letterHolder2=nil
  entryHolder = nil
  entryHolder1 = nil
letterHolder = {} -- initialize array
letterHolder1={}
  letterHolder2={}
  entryHolder = {}
  entryHolder1 = {}
bbx="3.png"
bbx2="111.png"

bbx3="2.png"
currentactive=0
checkemptyvalue=nil
currentemptyvalue=nil
checkemptyvalue={}
currentemptyvalue={}

function numero(Testgameval1,solut)
	 unitedseries=nil 
	 unitedseries={} 
	for isa=1,81 do
	unitedseries[isa]=Testgameval1[isa]
	end
	
	print("before ssssssssss>>>>>>>>>>>>>>>>>>>>>>>>")
 print_r(unitedseries)
for xx=1,81 do
--may need to reset empvar here--check
if Testgameval1[xx]==0 then
letterHolder[xx].alpha=.6
empty0[empvar]=nil
empty0[empvar]={}
empty0[empvar]=xx


checkemptyvalue[empvar]={}
checkemptyvalue[empvar]=solut[xx]
currentemptyvalue[empvar]=nil
currentemptyvalue[empvar]={}
currentemptyvalue[empvar]=0

empvar=empvar+1
else
numpic[xx][Testgameval1[xx]].isVisible=true
letterHolder[xx].alpha=1
end

end
print("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&")
--print_r(checkemptyvalue)
--print_r(currentemptyvalue)
--print_r(solut)
end

function colon(pos)
colcrd=cord[pos][2]


for kk=1,9 do
temp=linessy[colcrd][kk]

 letterHolder2[temp].isVisible=true

end
end

function coloff(pos)
rowcrd=cord[pos][2]


for kk=1,9 do
temp=linessy[rowcrd][kk]

 letterHolder2[temp].isVisible=false

end
end





function rowon(pos)
rowcrd=cord[pos][1]


for kk=1,9 do
temp=linessx[rowcrd][kk]

 letterHolder2[temp].isVisible=true

end
end

function rowoff(pos)
rowcrd=cord[pos][1]


for kk=1,9 do
temp=linessx[rowcrd][kk]

 letterHolder2[temp].isVisible=false

end
end


function blockon(pos)
blockcrd=cord[pos][3]


for kk=1,9 do
temp=blockss[blockcrd][kk]

 letterHolder2[temp].isVisible=true

end
end

function blockoff(pos)
blockcrd=cord[pos][3]


for kk=1,9 do
temp=blockss[blockcrd][kk]

 letterHolder2[temp].isVisible=false

end
end

function alloff()


for zz=1,9 do
for kk=1,9 do
temp=blockss[zz][kk]

 letterHolder2[temp].isVisible=false

end
end
end


local buttonListener1 = function( event )
	if "ended" == event.phase then

	if currentactive==0 then
	currentactive=event.target.pos

	end
	blockoff(currentactive)
	rowoff(currentactive)
	coloff(currentactive)
	 letterHolder1[currentactive].isVisible=false
		  --event.target.isVisible=false
		 
		 letterHolder1[event.target.pos].isVisible=true
 rowon(event.target.pos)		
		blockon(event.target.pos)
		colon(event.target.pos)
		letterHolder1[event.target.pos]:toFront()
		 
		 
currentactive=event.target.pos
		   
		   
		--[[
		local group = event.target

		-- tap only triggers change from original to different color
		local topObject = group[1]

		if ( topObject.isVisible ) then
			local bottomObject = group[2]

			-- Dissolve to bottomObject (different color)
			transition.dissolve( topObject, bottomObject, 500 )
			else

			-- Restore after some random delay
			transition.dissolve( bottomObject, topObject, 500 )
		end
		]]--

		-- we handled it so return true to stop propagation
		return true
	end
end    

local buttonListener2 = function( event )
	if "ended" == event.phase then
	  event.target.isVisible=false
		 
		 letterHolder[event.target.pos].isVisible=true
	 rowoff(event.target.pos)	
	blockoff(event.target.pos)
	coloff(event.target.pos)
		--[[
		local group = event.target

		-- tap only triggers change from original to different color
		local topObject = group[1]

		if ( topObject.isVisible ) then
			local bottomObject = group[2]

			-- Dissolve to bottomObject (different color)
			transition.dissolve( topObject, bottomObject, 500 )
			else

			-- Restore after some random delay
			transition.dissolve( bottomObject, topObject, 500 )
		end
		]]--

		-- we handled it so return true to stop propagation
		return true
	end
end    

numpic=nil
numpic={}
numOfImages = 9 -- define how many images on what on screen
for z=1,9 do 
for i=1,9 do -- start for loop to go from 1 to 10

 letterHolder[l]={}
   letterHolder[l] = display.newImage( bbx ) -- create a new rectangle and store it in the letterHolder array
   letterHolder[l]:scale( bxscale/100, bxscale/100 ) -- assign a random color
   letterHolder[l].x = bxstartx+(bxscale*j) -- display the rectangle in a random x position on screen
   letterHolder[l].y = _H/4 + (z*bxscale)+bystarty
    letterHolder[l].alpha=.75
	    letterHolder[l].isVisible=true
    letterHolder[l].glow=0
	  letterHolder[l].pos=l
	  	 grateA:insert( letterHolder[l] ) 
	
	   letterHolder2[l]={}
   letterHolder2[l] = display.newImage( bbx3 ) -- create a new rectangle and store it in the letterHolder array
   letterHolder2[l]:scale( bxscale/100, bxscale/100 ) -- assign a random color
   letterHolder2[l].x = bxstartx+(bxscale*j) -- display the rectangle in a random x position on screen
   letterHolder2[l].y = _H/4 + (z*bxscale)+bystarty
    letterHolder2[l].alpha=1
	    letterHolder2[l].isVisible=false
    letterHolder2[l].glow=0
	letterHolder2[l].pos=l
	letterHolder2[l]:toFront()
	 grateA:insert( letterHolder2[l] ) 
	 
	   letterHolder1[l]={}
   letterHolder1[l] = display.newImage( bbx2 ) -- create a new rectangle and store it in the letterHolder array
   letterHolder1[l]:scale( bxscale/100, bxscale/100 ) -- assign a random color
   letterHolder1[l].x = bxstartx+(bxscale*j) -- display the rectangle in a random x position on screen
   letterHolder1[l].y = _H/4 + (z*bxscale)+bystarty
    letterHolder1[l].alpha=1
	    letterHolder1[l].isVisible=false
    letterHolder1[l].glow=0
	letterHolder1[l].pos=l
	 grateA:insert( letterHolder1[l] ) 
numpic[l]=nil
entryHolder[l]=nil
entryHolder1[l]=nil
numpic[l]={}
entryHolder[l]={}
entryHolder1[l]={}
 for ss=1,9 do
 
    numpic[l][ss]={}
   numpic[l][ss] = display.newImage( numpicgroup[ss] ) -- create a new rectangle and store it in the letterHolder array
   numpic[l][ss]:scale( bxscale/100, bxscale/100 ) -- assign a random color
   numpic[l][ss].x = bxstartx+(bxscale*j) -- display the rectangle in a random x position on screen
   numpic[l][ss].y = _H/4 + (z*bxscale)+bystarty
    numpic[l][ss].alpha=1
	    numpic[l][ss].isVisible=false
numpic[l][ss].glow=0
	numpic[l][ss].pos=l
	numpic[l][ss]:toFront()
	grateA:insert( numpic[l][ss] ) 
	entryHolder[l][ss]={}
	entryHolder[l][ss] = display.newImage( entrygroup[ss] ) -- create a new rectangle and store it in the letterHolder array
   entryHolder[l][ss]:scale( bxscale/100, bxscale/100 ) -- assign a random color
   entryHolder[l][ss].x = bxstartx+(bxscale*j) -- display the rectangle in a random x position on screen
   entryHolder[l][ss].y = _H/4 + (z*bxscale)+bystarty
    entryHolder[l][ss].alpha=1
	    entryHolder[l][ss].isVisible=false
entryHolder[l][ss].glow=0
	entryHolder[l][ss].pos=l
	entryHolder[l][ss]:toFront()
grateA:insert( entryHolder[l][ss] ) 
	entryHolder1[l][ss]={}
	entryHolder1[l][ss] = display.newImage( entrygroup1[ss] ) -- create a new rectangle and store it in the letterHolder array
   entryHolder1[l][ss]:scale( bxscale/100, bxscale/100 ) -- assign a random color
   entryHolder1[l][ss].x = bxstartx+(bxscale*j) -- display the rectangle in a random x position on screen
   entryHolder1[l][ss].y = _H/4 + (z*bxscale)+bystarty
    entryHolder1[l][ss].alpha=1
	    entryHolder1[l][ss].isVisible=false
entryHolder1[l][ss].glow=0
	entryHolder1[l][ss].pos=l
	entryHolder1[l][ss]:toFront()
grateA:insert( entryHolder1[l][ss] ) 
	
 end
 
 
 
 
 
	 letterHolder[l]:addEventListener( "touch", buttonListener1 )

	 letterHolder1[l]:addEventListener( "touch", buttonListener2 )
	 

	
	l=l+1
j=j+1
   -- display the rectangle in a random y position on screen
end
j=0
z=z+1
end


j=0
k=1
bolcHolder=nil
bolcHolder = {} -- initialize array
for z=1,3 do 
for i=1,3 do -- start for loop to go from 1 to 10
   bolcHolder[i] = display.newImage( "3.png" ) -- create a new rectangle and store it in the letterHolder array
   bolcHolder[i]:scale( (bxscale*3)/100, (bxscale*3)/100 ) -- assign a random color
   bolcHolder[i].x = 32+bxstartx+((bxscale*3)*j) -- display the rectangle in a random x position on screen
   bolcHolder[i].y = -32+_H/4 + (z*(bxscale*3))+bystarty
   bolcHolder[i].alpha=.55
   grateA:insert( bolcHolder[i] ) 
j=j+1
   -- display the rectangle in a random y position on screen
end
j=0
z=z+1
end

 				 ribbon1 = display.newRect( 0, -20, _W*7, 47 )
 ribbon1:setFillColor( 0, 0, 0 ,.5)
--ribbon1:toFront()
ribbon1:addEventListener("touch", function()  return true end)
ribbon1:addEventListener("tap", function()  return true end)

  timingtex = display.newText( "00 Hrs : 00 Min : 00 Sec", _W/2-10-5, -7,native.systemFont, 18 )
timingtex:setFillColor( 1, 1, 1 )
timingtex.anchorX=.5
timingtex.anchorY=.5

  grateA:insert(ribbon1) 

  grateA:insert( timingtex) 
 timeKeep:resume()
	    upclockon =1
				 		tx=  timer.performWithDelay(1000, updateTimer, 0)
						print("here1")


function shareit2()
-- creating the display group --
 localGroup = display.newGroup()  

 
 local screenCap = display.captureScreen( true )
screenCap.anchorX=0
screenCap.anchorY=0
screenCap.x=10
screenCap.y=0
 
 
-- creating display objects and adding it to the group --

localGroup:insert(screenCap)


	local baseDir = system.DocumentsDirectory
--  display.save( localGroup, "TrueSudoku.jpg", baseDir )

	 localGroup.isVisible=false

localGroup:removeSelf()
localGroup = nil
local isSimulator = "simulator" == system.getInfo( "environment" )

if isSimulator then
	native.showAlert( "Build for device", "This plugin is not supported on the Corona Simulator, please build for an iOS/Android device or Xcode simulator", { "OK" } )
end

-- Hide the status bar
display.setStatusBar( display.HiddenStatusBar )

-- Require the widget library
local widget = require( "widget" )

-- Use the iOS 7 theme for this sample
--widget.setTheme( "widget_theme_ios7" )

-- This is the name of the native popup to show, in this case we are showing the "social" popup
local popupName = "social"


-- Display some text


local sendMessage = true
local sendURL = true
local sendImage = false

-- Exectuted upon touching & releasing a widget button

	local serviceName = "share"
	local isAvailable = native.canShowPopup( popupName, serviceName )

txthere1 = "Try True Sudoku – a sudoku puzzle with truly one solution"
	-- For demonstration purposes, we set isAvailable to true here for Android.
	if "Android" == system.getInfo( "platformName" ) then
		isAvailable = true
	end
	--messenger2("  1 Thank you for spreading the joy\nof good health with your loved ones.")


	-- If it is possible to show the popup
	if isAvailable then
	


		local listener = {}
		function listener:popup( event )
			--print( "name(" .. event.name .. ") type(" .. event.type .. ") action(" .. tostring(event.action) .. ") limitReached(" .. tostring(event.limitReached) .. ")" )			
		end
		
		local options = {}
		options.service = serviceName
		options.listener = listener
		if sendMessage then
			options.message = txthere1
		end
		if sendURL then
			options.url = { "https://goo.gl/HHjVGi" }
		end


		-- Show the popup
		native.showPopup( popupName, options )
	else
		if isSimulator then
			native.showAlert( "Build for device", "This plugin is not supported on the Corona Simulator, please build for an iOS/Android device or the Xcode simulator", { "OK" } )
		else
			-- Popup isn't available.. Show error message
			native.showAlert( "Cannot send " .. serviceName .. " message.", "Please setup your " .. serviceName .. " account or check your network connection (on android this means that the package/app (ie Twitter) is not installed on the device)", { "OK" } )
		end
	end

	
end


   sharemenow = display.newImage( "SJ3.png" ) -- create a new rectangle and store it in the letterHolder array
   sharemenow:scale( .36, .36) -- assign a random color
sharemenow.x = _W -- display the rectangle in a random x position on screen
sharemenow.y = -15-3
sharemenow.alpha=.8
sharemenow.anchorX=1
sharemenow.anchorY=0
sharemenow.id = "share"
 grateA:insert(sharemenow) 
--numero(Testgameva22.problem)--display num
i=1
balpha=.75
deltay=0
deltay2=-15
deltay3=-15
magicnum=1.6
butonHolder[i] = display.newImage( "b1.png" ) -- create a new rectangle and store it in the letterHolder array
   butonHolder[i]:scale( (bxscale*magicnum)/100, (bxscale*magicnum)/100 ) -- assign a random color
   butonHolder[i].x = 32+13 -- display the rectangle in a random x position on screen
   butonHolder[i].y = _H/4+200 +deltay
   butonHolder[i].alpha=balpha
      butonHolder[i].digit=i
	  grateA:insert( butonHolder[i]) 
   i=2

butonHolder[i] = display.newImage( "b2.png" ) -- create a new rectangle and store it in the letterHolder array
   butonHolder[i]:scale( (bxscale*magicnum)/100, (bxscale*magicnum)/100 ) -- assign a random color
   butonHolder[i].x = 32+13+62 -- display the rectangle in a random x position on screen
   butonHolder[i].y = _H/4+200 +deltay
   butonHolder[i].alpha=balpha
    butonHolder[i].digit=i
		  grateA:insert( butonHolder[i]) 
i=3
   butonHolder[i] = display.newImage( "b3.png" ) -- create a new rectangle and store it in the letterHolder array
   butonHolder[i]:scale( (bxscale*magicnum)/100, (bxscale*magicnum)/100 ) -- assign a random color
   butonHolder[i].x = 32+13+120+2 -- display the rectangle in a random x position on screen
   butonHolder[i].y = _H/4+200 +deltay
   butonHolder[i].alpha=balpha
    butonHolder[i].digit=i
		  grateA:insert( butonHolder[i]) 
   i=4
  butonHolder[i] = display.newImage( "b4.png" ) -- create a new rectangle and store it in the letterHolder array
   butonHolder[i]:scale( (bxscale*magicnum)/100, (bxscale*magicnum)/100 ) -- assign a random color
   butonHolder[i].x = 32+13 -- display the rectangle in a random x position on screen
   butonHolder[i].y = _H/4+200 +70+deltay+deltay2
   butonHolder[i].alpha=balpha
 butonHolder[i].digit=i
 	  grateA:insert( butonHolder[i]) 
   i=5
butonHolder[i] = display.newImage( "b5.png" ) -- create a new rectangle and store it in the letterHolder array
   butonHolder[i]:scale( (bxscale*magicnum)/100, (bxscale*magicnum)/100 ) -- assign a random color
   butonHolder[i].x = 32+13+62 -- display the rectangle in a random x position on screen
   butonHolder[i].y = _H/4+200 +70+deltay+deltay2
   butonHolder[i].alpha=balpha
    butonHolder[i].digit=i
		  grateA:insert( butonHolder[i]) 
i=6
   butonHolder[i] = display.newImage( "b6.png" ) -- create a new rectangle and store it in the letterHolder array
   butonHolder[i]:scale( (bxscale*magicnum)/100, (bxscale*magicnum)/100 ) -- assign a random color
   butonHolder[i].x = 32+13+120+2 -- display the rectangle in a random x position on screen
   butonHolder[i].y = _H/4+200 +70+deltay+deltay2
   butonHolder[i].alpha=balpha
    butonHolder[i].digit=i
		  grateA:insert( butonHolder[i]) 
     i=7
  butonHolder[i] = display.newImage( "b7.png" ) -- create a new rectangle and store it in the letterHolder array
   butonHolder[i]:scale( (bxscale*magicnum)/100, (bxscale*magicnum)/100 ) -- assign a random color
   butonHolder[i].x = 32+13 -- display the rectangle in a random x position on screen
   butonHolder[i].y = _H/4+200 +70+70+deltay+deltay2+deltay3
   butonHolder[i].alpha=balpha
 butonHolder[i].digit=i
 	  grateA:insert( butonHolder[i]) 
   i=8

butonHolder[i] = display.newImage( "b8.png" ) -- create a new rectangle and store it in the letterHolder array
   butonHolder[i]:scale( (bxscale*magicnum)/100, (bxscale*magicnum)/100 ) -- assign a random color
   butonHolder[i].x = 32+13+62 -- display the rectangle in a random x position on screen
   butonHolder[i].y = _H/4+200 +70+70+deltay+deltay2+deltay3
   butonHolder[i].alpha=balpha
    butonHolder[i].digit=i
		  grateA:insert( butonHolder[i]) 
i=9
   butonHolder[i] = display.newImage( "b9.png" ) -- create a new rectangle and store it in the letterHolder array
   butonHolder[i]:scale( (bxscale*magicnum)/100, (bxscale*magicnum)/100 ) -- assign a random color
   butonHolder[i].x = 32+13+120+2 -- display the rectangle in a random x position on screen
   butonHolder[i].y = _H/4+200 +70+70+deltay+deltay2+deltay3
   butonHolder[i].alpha=balpha
    butonHolder[i].digit=i
		  grateA:insert( butonHolder[i]) 

      butonHoldercc = display.newImage( "cc.png" ) -- create a new rectangle and store it in the letterHolder array
   butonHoldercc:scale( (bxscale*magicnum)/100, (bxscale*magicnum)/100 ) -- assign a random color
   butonHoldercc.x = 32+13+120+2+60 -- display the rectangle in a random x position on screen
   butonHoldercc.y =  _H/4+200 +deltay
   butonHoldercc.alpha=.8
   	  grateA:insert( butonHoldercc) 
  --  butonHoldercc.digit=i
      
      butonHolderinvert = display.newImage( "inv.png" ) -- create a new rectangle and store it in the letterHolder array
   butonHolderinvert:scale( (bxscale*magicnum)/100, (bxscale*magicnum)/100 ) -- assign a random color
   butonHolderinvert.x = 32+13+120+2+60 -- display the rectangle in a random x position on screen
   butonHolderinvert.y =   _H/4+200 +70+deltay+deltay2
   butonHolderinvert.alpha=.8
      	  grateA:insert( butonHolderinvert) 
   -- butonHolderinvert.digit=i
	


	
      butonHolderredo = display.newImage( "redo.png" ) -- create a new rectangle and store it in the letterHolder array
   butonHolderredo:scale( (bxscale*magicnum)/100, (bxscale*magicnum)/100 ) -- assign a random color
   butonHolderredo.x = 32+13+120+2+60 -- display the rectangle in a random x position on screen
   butonHolderredo.y =  _H/4+200 +70+70+deltay+deltay2+deltay3
   butonHolderredo.alpha=.8
     	  grateA:insert( butonHolderredo) 
--    butonHolderredo.digit=i

-------------------------------------
    butonHolderok = display.newImage( "okx.png" ) -- create a new rectangle and store it in the letterHolder array
   butonHolderok:scale( (bxscale*1.9)/100, (bxscale*1.9)/100 ) -- assign a random color
   butonHolderok.x = 32+13+120+2+60+62 -- display the rectangle in a random x position on screen
   butonHolderok.y =  _H/4+200 +deltay
   butonHolderok.alpha=.8
        	  grateA:insert( butonHolderok) 
  --  butonHoldercc.digit=i
      
      butonHoldercancel = display.newImage( "cancel.png" ) -- create a new rectangle and store it in the letterHolder array
   butonHoldercancel:scale( (bxscale*.65)/100, (bxscale*.65)/100 ) -- assign a random color
   butonHoldercancel.x = 32+13+120+2+60+62 -- display the rectangle in a random x position on screen
   butonHoldercancel.y =   _H/4+200 +70+deltay+deltay2
   butonHoldercancel.alpha=.8
     grateA:insert( butonHoldercancel) 
   -- butonHolderinvert.digit=i
	


	
      butonHolderback = display.newImage( "barrow.png" ) -- create a new rectangle and store it in the letterHolder array
   butonHolderback:scale( (bxscale*2.1)/100, (bxscale*2.1)/100 ) -- assign a random color
   butonHolderback.x = 32+13+120+2+60+62 -- display the rectangle in a random x position on screen
   butonHolderback.y =  _H/4+200 +70+70+deltay+deltay2+deltay3
   butonHolderback.alpha=.75
      grateA:insert( butonHolderback) 
--    butonHolderredo.digit=i
	
	
	al=0
	lastpress=1
entlog=nil
entlog={}	
	
	for i=1,81 do
	entlog[i]={}
	for ii=1,10 do
	entlog[i][ii]=0
	end
	end
	
	   function entrysel(event)
	   if "began" == event.phase then
	   butonHolder[lastpress].alpha=balpha
al=event.target.alpha
event.target.alpha=1
lastpress=event.target.digit
 elseif "ended" == event.phase then
-- print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++")
 event.target.alpha=al
	--  print(event.target)
	   digit=event.target.digit
	  --    print ("handled1")
   for i=1,#empty0 do
   
  if currentactive==empty0[i] then
   --butonHolder[currentactive][digit].isVisible=true
  digit=event.target.digit
  
  --set status
  -- print("STATUS no"..entlog[currentactive][digit])
   --print("start current 10 status:"..entlog[currentactive][10])
  -- grid2flag=entlog[currentactive][10]
if entlog[currentactive][digit]==0 then


  entlog[currentactive][digit]=1

  --print("check yes")
  else
   entlog[currentactive][digit]=0
    --print("check no"..entlog[currentactive][digit])
  end

    --check status
  entlog[currentactive][10]=0

  	for i=1,9 do
	
	if entlog[currentactive][i]>0 then
	entlog[currentactive][10]=entlog[currentactive][10]+1
	
	--print("cell active is: "..currentactive.."   value:"..i)
	end
	end
 -- print("new no 10: "..entlog[currentactive][10])
  --display
  
  for zz=1,9 do

    entryHolder1[currentactive][zz].isVisible=false
	entryHolder[currentactive][zz].isVisible=false
end

  if entlog[currentactive][10]==1 then
  
    for zz=1,9 do
   if entlog[currentactive][zz]==1 then
   -- entryHolder[currentactive][zz].isVisible=false
	entryHolder1[currentactive][zz].isVisible=true
end
end
  
  
  end
  
    if entlog[currentactive][10]>1 then
	    for zz=1,9 do
   if entlog[currentactive][zz]==1 then
   -- entryHolder[currentactive][zz].isVisible=false
	entryHolder[currentactive][zz].isVisible=true
end
	end
	end
  
  
  
  
  --[[
  if entlog[currentactive][10]==0 then
  

    entryHolder1[currentactive][digit].isVisible=false
	entryHolder[currentactive][digit].isVisible=false

  print("11A")
elseif entlog[currentactive][10]==1 then
    if   entryHolder1[currentactive][digit].isVisible==false then
entryHolder1[currentactive][digit].isVisible=true
-- if grid2flag==2 then
for zz=1,9 do
entryHolder[currentactive][zz].isVisible=false
if entryHolder1[currentactive][zz]==1 then
print("hello")
--entryHolder1[currentactive][zz].isVisible=true
-- end
end
end


 print("12A")
  else
     print("13A")
	entryHolder1[currentactive][digit].isVisible=false
  end
  
    elseif entlog[currentactive][10]>1 then
  print(">1")
  for i=1,9 do
    if entryHolder1[currentactive][i].isVisible==true then
entryHolder[currentactive][i].isVisible=true	
entryHolder1[currentactive][i].isVisible=false
print("change")
end
	if   entryHolder[currentactive][digit].isVisible==false then
entryHolder[currentactive][digit].isVisible=true
 print("12b")
  else
     print("13b")
	entryHolder[currentactive][digit].isVisible=false
  end
end


  
  end
  
   ]]--
  --print_r(digit)
  -- print_r(currentactive)
  end
   
   end
  
   end
   end
   
   function ccit(event)
    if "began" == event.phase then
	  butonHoldercc.alpha=1


--lastpress=event.target.digit
 elseif "ended" == event.phase then
	  butonHoldercc.alpha=.7
 --print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++")
    for i=1,#empty0 do
   
  if currentactive==empty0[i] then
 for i=1,10 do
	

	entlog[currentactive][i]=0
	


	end
  --print("new no 10: "..entlog[currentactive][10])
  --display
  
  for zz=1,9 do
    entryHolder1[currentactive][zz].isVisible=false
	entryHolder[currentactive][zz].isVisible=false
end

 end
 end
 
end 
 end
 
 
  
   function butonHolderinvert1(event)
    if "began" == event.phase then
	  butonHolderinvert.alpha=1

--lastpress=event.target.digit
 elseif "ended" == event.phase then
	  butonHolderinvert.alpha=.7
 --print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++")
     for i=1,#empty0 do
   
  if currentactive==empty0[i] then
 entlog[currentactive][10]=0
 for i=1,9 do
	if entlog[currentactive][i]==0 then
	entlog[currentactive][i]=1
	 entlog[currentactive][10]= entlog[currentactive][10]+1
	else
	entlog[currentactive][i]=0
	end
	end

--  print("new no 10: "..entlog[currentactive][10])
  --display
  
  --display
  
  for zz=1,9 do
    entryHolder1[currentactive][zz].isVisible=false
	entryHolder[currentactive][zz].isVisible=false
end

  if entlog[currentactive][10]==1 then
  
    for zz=1,9 do
   if entlog[currentactive][zz]==1 then
   -- entryHolder[currentactive][zz].isVisible=false
	entryHolder1[currentactive][zz].isVisible=true
end
end
  
  
  end
  
    if entlog[currentactive][10]>1 then
	    for zz=1,9 do
   if entlog[currentactive][zz]==1 then
   -- entryHolder[currentactive][zz].isVisible=false
	entryHolder[currentactive][zz].isVisible=true
end
	end
	end
  
  
end
end

 
 
end 
 end
	
   for xq=1,9 do
butonHolder[xq]:addEventListener( "touch", entrysel )
   end
   
   function redoitall(event)
     if "began" == event.phase then
	  butonHolderredo.alpha=1

--lastpress=event.target.digit
 elseif "ended" == event.phase then
	  butonHolderredo.alpha=.7
 --print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++")
 tempstoreit=currentactive
    for i=1,#empty0 do
   
 currentactive=empty0[i]
 
 entlog[currentactive][10]=0
 
 for i=1,10 do

	entlog[currentactive][i]=0

	end

  --print("new no 10: "..entlog[currentactive][10])
  --display
  
  --display
  
  for zz=1,9 do
    entryHolder1[currentactive][zz].isVisible=false
	entryHolder[currentactive][zz].isVisible=false
end

  
end
 
currentactive= tempstoreit
  --alloff()

end 
   end
   
   function checkitall(event)
    if "began" == event.phase then
	  butonHolderok.alpha=1
	 -- capturescreen()
    for i=1,#currentemptyvalue do
	  currentemptyvalue[i]=0
	  end
	  
--lastpress=event.target.digit
 elseif "ended" == event.phase then
 
function actualcheckvaluezz(fullseries)
rowcheckee={}
colcheckee={}
blockcheckee={}
supercheck=1

for xas=1,9 do

rowcheckee[xas]=1 --problem then 0 else 1
colcheckee[xas]=1
blockcheckee[xas]=1
end


 local temppz={}
 local BLOCKSTRAIGHTCOPY={}
 
 local mj=1
for za=1,9 do
temppz[za]={}
for az=1,9 do 
temppz[za][az]={}
temppz[za][az]=fullseries[mj]
BLOCKSTRAIGHTCOPY[mj]=fullseries[mj]
mj=mj+1
end
end 

--row check

for fd=1,9 do
numberdump=nil
numberdump={}
for init=1,9 do
numberdump[init]=0
end

for xaz=1,9 do

val=temppz[fd][xaz]
numberdump[val]=numberdump[val]+1
if numberdump[val]>1 then
rowcheckee[fd]=0
supercheck=0
print("error here by check row:"..fd.." value is:"..val)
end

end
end
print_r(temppz)
print_r(rowcheckee)

--colcheckee

for fd=1,9 do
numberdump=nil
numberdump={}
for init=1,9 do
numberdump[init]=0
end

for xaz=1,9 do

val=temppz[xaz][fd]
numberdump[val]=numberdump[val]+1
if numberdump[val]>1 then
colcheckee[xaz]=0
supercheck=0
print("error here by check col:"..fd.." value is:"..val)
end

end
end
--print_r(temppz)
print_r(colcheckee)




--block check

for fd=1,9 do
numberdump=nil
numberdump={}
for init=1,9 do
numberdump[init]=0
end

for xaz=1,9 do
tempz=blockss[fd][xaz]


val=BLOCKSTRAIGHTCOPY[tempz]
numberdump[val]=numberdump[val]+1
if numberdump[val]>1 then
blockcheckee[fd]=0
supercheck=0
print("error here by check block:"..fd.." value is:"..val)
end

end
end
--print_r(temppz)
print_r(blockcheckee)
print(supercheck)
return supercheck --1 ok ; 0 wrong
end

	  butonHolderok.alpha=.7
	  
	  


	  
	  tempstoreit=currentactive
    for i=1,#empty0 do
   
 currentactive=empty0[i]
 if entlog[currentactive][10]==1 then
  for iz=1,9 do

	if entlog[currentactive][iz]==0 then
	else
	currentemptyvalue[i]=iz
	--print(currentemptyvalue[i].."no 10 is:"..entlog[currentactive][10])
	
	end

	end
 else
 end
 	print("before2 ssssssssss>>>>>>>>>>>>>>>>>>>>>>>>")
 print_r(unitedseries)
 
 alpha=1
 for zas=1,#unitedseries do
 if unitedseries[zas]==0 then
 
 unitedseries[zas]=currentemptyvalue[alpha]
   alpha=alpha+1
 if alpha>#currentemptyvalue then
unitedseries[zas]=0
 end
 
 end
 end

	 -- print("__________current values_____________")
-- print_r(unitedseries)
	

 print("__________current values2222222222_____________")
print_r(currentemptyvalue)
  --display
  compleflag=1
    correctflag=1
  --display
      for i=1,#currentemptyvalue do
	  if currentemptyvalue[i]==0 then
	   compleflag=0
	   
	   print(i.." complt cells flag"..compleflag)
	  ---sk to reckeck iincompleates
	  else
	   if currentemptyvalue[i]==checkemptyvalue[i] then
	   
	
	   
	   else
	   correctflag=0
	      print(i.." error there///// and the cell is till now:"..compleflag)
	   end
	  
	  end
	  end
--print("this should be the true values............................................")
  --print_r(checkemptyvalue)
--print("checked by sudoku="..checkitifok)
end
 	-- print("after ssssssssss>>>>>>>>>>>>>>>>>>>>>>>>")
 -- print_r(unitedseries)
 
 if compleflag==1 then
 --checkitifok=actualcheckvaluezz(unitedseries)
-- print("checked by sudoku="..checkitifok)
 end
 
currentactive= tempstoreit
-- print("my united series............................................")	 
	 -- print_r(unitedseries)
	  print(compleflag.."...."..correctflag)
	  if compleflag== 0 then
	  --compleate the cells
	    gameresultsplash(2) --2
	--	os.remove( system.pathForFile( "TrueSudoku.jpg", baseDir ) )
	  else
	  if correctflag== 0 then
--reckeck value..try again
if checkitifok==0 then
  gameresultsplash(3)
 -- os.remove( system.pathForFile( "TrueSudoku.jpg", baseDir ) )
  else
  print("alernate game end?????????????}}}}}}}}}}}}}}}}}}}")
     gameresultsplash(3)
	-- os.remove( system.pathForFile( "TrueSudoku.jpg", baseDir ) )
	  end
	  else
	  
	  --win game
	    gameresultsplash(1)
		--shareit00() usr this
end	  
	  end
	  
	  
	  
	  
	  end
   
   end
   
  butonHolderinvert:addEventListener( "touch", butonHolderinvert1 )
  butonHoldercc:addEventListener( "touch", ccit )
  butonHolderredo:addEventListener( "touch", redoitall )
  butonHolderok:addEventListener( "touch", checkitall )
  butonHoldercancel:addEventListener( "touch", initpage )
  butonHolderback:addEventListener( "touch", levelsetter )
  sharemenow:addEventListener( "touch", shareit2 )
-- --Testgameva22.solution=seedoperation1(Testgameva22.solution)
-- topm=nil
-- topm={}
-- --print_r(gamezfeedme)
-- tops=nil
-- tops={}
-- topm=seedoperation1(gamezfeedme) -- this changed gamezfeedme directly
-- topm=seedoperation2(gamezfeedme)
-- topm=seedoperation3(gamezfeedme) 
-- for ix= 1,81 do
-- tops[ix]=topm[ix]

-- end

print("solllllllllllllllllllllllllllllllllxxxxxxxxxxxxxxxxxx")





 --print_r(kzam)
--print_r(gamezfeedme)
--Testgameva22.problem=problemcreate(topm,removethesemany)
--Testgameva22.problem=(Testgameva22.solution) --remove
 print_r(tops)
 print_r(topm)
--print("gamezfeedme value::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
--print_r(gamezfeedme)
numero(Testgameva22.problem,Testgameva22.solution)

countloopx=countloopx+1
-- -- Testgameva22.solution=seedoperation1(Testgameva22.solution)
-- Testgameva22.problem=problemcreate(Testgameva22.solution,55)
 -- Testgameva22.problem=(Testgameva22.solution) --remove
-- -- print_r(Testgameva22)
-- --print_r(Testgameva22.problem)
-- numero(Testgameva22.problem)

end


function killall()
if grateA==nil then

elseif grateA==0 then
else
grateA:removeSelf()
grateA = nil
  	currentactive=nil
checkemptyvalue=nil
currentemptyvalue=nil

  entlog=nil

  
  	entryHolder=nil
    entryHolder1=nil
end
end

function selectmode(modeselect)


print("sssssssssssssssssssssssssssssssssssssssssssssssssssssssaaaaaaaaaaaaaaa"..modeselect)




SimplepuzzleSOL=nil
SimplepuzzlePROB=nil
EASYpuzzleSOL=nil
EASYpuzzlePROB=nil
medpuzzleSOL=nil
medpuzzlePROB=nil
hARDpuzzleSOL=nil
hARDpuzzlePROB=nil
SimplepuzzleSOL={}
SimplepuzzlePROB={}
EASYpuzzleSOL={}
EASYpuzzlePROB={}
medpuzzleSOL={}
medpuzzlePROB={}
hARDpuzzleSOL={}
hARDpuzzlePROB={}

SimplepuzzleSOL[1]={4,3,7,8,2,6,9,1,5,5,2,1,3,9,7,8,4,6,6,9,8,5,4,1,2,3,7,9,5,2,4,7,8,1,6,3,8,1,6,2,3,5,4,7,9,3,7,4,6,1,9,5,2,8,1,6,9,7,5,2,3,8,4,7,4,5,1,8,3,6,9,2,2,8,3,9,6,4,7,5,1}
SimplepuzzleSOL[2]={9,5,2,8,6,7,4,3,1,1,3,6,2,9,4,8,7,5,4,8,7,1,3,5,2,9,6,8,9,5,3,4,2,6,1,7,6,2,4,9,7,1,5,8,3,7,1,3,6,5,8,9,4,2,3,6,8,7,2,9,1,5,4,5,7,9,4,1,6,3,2,8,2,4,1,5,8,3,7,6,9}
SimplepuzzleSOL[3]={9,7,3,6,8,2,5,4,1,8,6,1,9,4,5,7,2,3,4,2,5,1,3,7,6,9,8,6,1,7,3,2,9,8,5,4,3,9,4,8,5,6,1,7,2,5,8,2,7,1,4,9,3,6,2,3,6,5,7,8,4,1,9,7,4,8,2,9,1,3,6,5,1,5,9,4,6,3,2,8,7}
SimplepuzzleSOL[4]={3,4,6,7,8,9,1,5,2,2,1,5,6,4,3,7,9,8,9,8,7,1,5,2,3,4,6,8,5,3,4,9,6,2,7,1,1,6,9,8,2,7,4,3,5,7,2,4,5,3,1,8,6,9,5,7,2,3,6,8,9,1,4,4,9,1,2,7,5,6,8,3,6,3,8,9,1,4,5,2,7}
SimplepuzzleSOL[5]={2,6,5,9,7,1,3,4,8,9,4,8,3,2,6,5,1,7,7,3,1,8,5,4,6,9,2,5,2,4,7,1,9,8,3,6,6,8,7,4,3,5,1,2,9,1,9,3,2,6,8,4,7,5,3,5,9,6,4,7,2,8,1,4,7,6,1,8,2,9,5,3,8,1,2,5,9,3,7,6,4}
SimplepuzzleSOL[6]={6,1,3,9,5,2,8,4,7,2,8,7,1,3,4,6,9,5,4,9,5,6,7,8,3,2,1,5,6,2,7,1,3,9,8,4,1,4,8,5,2,9,7,3,6,7,3,9,8,4,6,1,5,2,8,5,1,2,9,7,4,6,3,3,2,6,4,8,1,5,7,9,9,7,4,3,6,5,2,1,8}
SimplepuzzleSOL[7]={3,9,6,8,4,7,2,1,5,4,7,8,5,1,2,6,3,9,5,1,2,3,6,9,8,7,4,1,2,3,4,7,5,9,6,8,7,8,5,2,9,6,1,4,3,9,6,4,1,3,8,7,5,2,2,5,1,6,8,4,3,9,7,8,3,9,7,5,1,4,2,6,6,4,7,9,2,3,5,8,1}
SimplepuzzleSOL[8]={3,8,7,9,4,1,6,5,2,6,5,1,2,8,3,9,7,4,4,9,2,5,6,7,8,3,1,7,2,3,1,5,8,4,9,6,5,1,4,6,7,9,2,8,3,9,6,8,4,3,2,7,1,5,1,7,9,3,2,6,5,4,8,2,3,5,8,9,4,1,6,7,8,4,6,7,1,5,3,2,9}
SimplepuzzleSOL[9]={6,9,7,8,3,2,4,5,1,8,5,1,9,7,4,3,2,6,4,2,3,1,5,6,8,7,9,1,6,2,7,4,5,9,8,3,5,3,8,6,9,1,2,4,7,9,7,4,2,8,3,1,6,5,7,1,9,5,2,8,6,3,4,3,8,6,4,1,7,5,9,2,2,4,5,3,6,9,7,1,8}
SimplepuzzleSOL[10]={5,7,4,9,6,1,2,8,3,1,2,3,8,5,4,7,6,9,8,6,9,2,3,7,4,5,1,2,5,7,3,1,9,8,4,6,4,3,1,6,8,2,9,7,5,9,8,6,7,4,5,3,1,2,6,4,2,1,7,3,5,9,8,3,1,5,4,9,8,6,2,7,7,9,8,5,2,6,1,3,4}
SimplepuzzleSOL[11]={8,5,1,3,9,6,7,2,4,2,3,4,5,1,7,9,8,6,9,7,6,8,4,2,1,3,5,5,4,8,2,7,3,6,9,1,7,1,2,6,5,9,3,4,8,3,6,9,1,8,4,2,5,7,6,2,5,7,3,8,4,1,9,4,8,7,9,2,1,5,6,3,1,9,3,4,6,5,8,7,2}
SimplepuzzleSOL[12]={4,8,7,9,2,6,3,5,1,2,1,5,3,7,8,6,9,4,6,3,9,5,1,4,2,7,8,5,9,8,1,4,2,7,3,6,1,2,6,7,9,3,4,8,5,7,4,3,6,8,5,9,1,2,9,5,2,8,6,7,1,4,3,8,6,1,4,3,9,5,2,7,3,7,4,2,5,1,8,6,9}
SimplepuzzleSOL[13]={9,5,7,8,1,2,6,4,3,3,6,8,4,9,5,2,7,1,4,1,2,3,6,7,8,9,5,2,8,4,7,3,1,5,6,9,5,3,9,6,2,8,4,1,7,6,7,1,5,4,9,3,2,8,8,2,3,1,7,4,9,5,6,1,4,5,9,8,6,7,3,2,7,9,6,2,5,3,1,8,4}
SimplepuzzleSOL[14]={2,1,9,6,4,5,7,8,3,4,7,3,8,2,1,6,5,9,6,5,8,7,3,9,1,4,2,3,6,7,2,8,4,9,1,5,5,8,1,3,9,6,2,7,4,9,2,4,5,1,7,8,3,6,8,3,5,1,6,2,4,9,7,1,4,6,9,7,3,5,2,8,7,9,2,4,5,8,3,6,1}
SimplepuzzleSOL[15]={6,1,9,3,5,2,4,8,7,8,7,3,6,9,4,1,5,2,2,5,4,8,7,1,6,9,3,9,4,1,2,8,6,3,7,5,5,6,7,4,3,9,8,2,1,3,8,2,7,1,5,9,6,4,1,3,5,9,2,8,7,4,6,7,9,6,5,4,3,2,1,8,4,2,8,1,6,7,5,3,9}
SimplepuzzleSOL[16]={8,3,5,6,4,9,2,1,7,2,9,4,1,5,7,8,3,6,6,7,1,8,2,3,9,5,4,5,6,7,9,1,2,4,8,3,9,4,3,7,8,5,6,2,1,1,8,2,4,3,6,7,9,5,3,5,8,2,7,4,1,6,9,4,1,9,5,6,8,3,7,2,7,2,6,3,9,1,5,4,8}
SimplepuzzleSOL[17]={3,4,6,2,9,7,5,8,1,2,7,9,5,8,1,6,3,4,8,1,5,6,3,4,9,7,2,9,6,1,8,7,2,4,5,3,4,5,3,9,1,6,7,2,8,7,8,2,4,5,3,1,6,9,1,2,8,7,4,5,3,9,6,6,3,7,1,2,9,8,4,5,5,9,4,3,6,8,2,1,7}
SimplepuzzleSOL[18]={3,7,1,9,2,5,6,8,4,8,5,2,6,7,4,1,9,3,6,4,9,1,3,8,5,2,7,1,2,4,7,8,6,3,5,9,9,8,5,3,4,1,2,7,6,7,6,3,2,5,9,4,1,8,4,3,8,5,1,7,9,6,2,5,9,7,4,6,2,8,3,1,2,1,6,8,9,3,7,4,5}
SimplepuzzleSOL[19]={9,3,2,4,7,5,1,6,8,8,6,1,3,2,9,7,4,5,4,5,7,1,6,8,2,9,3,3,2,6,9,1,7,5,8,4,5,8,4,2,3,6,9,7,1,7,1,9,8,5,4,6,3,2,2,7,8,5,9,3,4,1,6,1,9,3,6,4,2,8,5,7,6,4,5,7,8,1,3,2,9}
SimplepuzzleSOL[20]={5,4,2,8,9,3,1,6,7,9,6,3,7,1,5,8,2,4,1,8,7,4,2,6,9,3,5,4,5,1,2,8,9,6,7,3,7,3,8,5,6,1,2,4,9,2,9,6,3,7,4,5,8,1,8,7,9,1,3,2,4,5,6,6,2,5,9,4,7,3,1,8,3,1,4,6,5,8,7,9,2}
SimplepuzzleSOL[21]={1,4,9,8,7,6,3,2,5,3,8,5,4,2,1,6,9,7,7,2,6,9,5,3,4,8,1,2,1,8,7,6,4,9,5,3,6,7,3,2,9,5,8,1,4,9,5,4,3,1,8,2,7,6,4,9,7,1,3,2,5,6,8,8,6,1,5,4,9,7,3,2,5,3,2,6,8,7,1,4,9}
SimplepuzzleSOL[22]={8,5,6,7,2,4,3,9,1,4,7,9,1,5,3,8,6,2,3,1,2,8,9,6,5,4,7,2,9,5,3,6,1,4,7,8,1,8,4,5,7,9,6,2,3,7,6,3,2,4,8,9,1,5,5,4,8,9,1,7,2,3,6,6,2,1,4,3,5,7,8,9,9,3,7,6,8,2,1,5,4}
SimplepuzzleSOL[23]={8,7,1,6,2,4,3,9,5,9,2,3,5,8,1,4,6,7,4,6,5,9,3,7,2,1,8,3,4,9,8,7,2,6,5,1,2,5,8,1,9,6,7,3,4,7,1,6,3,4,5,9,8,2,6,8,4,2,1,9,5,7,3,1,9,2,7,5,3,8,4,6,5,3,7,4,6,8,1,2,9}
SimplepuzzleSOL[24]={6,3,1,7,5,2,9,8,4,4,5,7,9,8,6,2,3,1,9,2,8,3,1,4,7,6,5,1,9,3,8,2,5,6,4,7,2,7,4,1,6,3,5,9,8,8,6,5,4,7,9,1,2,3,3,4,6,5,9,7,8,1,2,5,8,2,6,4,1,3,7,9,7,1,9,2,3,8,4,5,6}
SimplepuzzleSOL[25]={7,2,5,9,6,4,8,3,1,4,9,1,3,5,8,6,2,7,6,3,8,7,1,2,4,9,5,1,7,2,6,4,3,5,8,9,8,6,4,2,9,5,7,1,3,3,5,9,1,8,7,2,4,6,2,4,7,5,3,9,1,6,8,9,8,6,4,7,1,3,5,2,5,1,3,8,2,6,9,7,4}
SimplepuzzleSOL[26]={3,5,2,7,6,9,8,4,1,1,6,4,8,2,3,9,7,5,7,8,9,1,4,5,2,3,6,8,1,3,6,5,2,4,9,7,4,7,6,9,1,8,5,2,3,9,2,5,3,7,4,1,6,8,6,3,8,2,9,1,7,5,4,5,9,7,4,8,6,3,1,2,2,4,1,5,3,7,6,8,9}
SimplepuzzleSOL[27]={2,6,3,9,4,7,1,5,8,5,4,1,8,2,6,9,3,7,7,9,8,5,3,1,4,2,6,4,1,7,3,8,9,5,6,2,6,3,5,4,7,2,8,9,1,9,8,2,6,1,5,3,7,4,1,5,9,2,6,8,7,4,3,8,2,4,7,9,3,6,1,5,3,7,6,1,5,4,2,8,9}
SimplepuzzleSOL[28]={7,4,1,5,6,9,2,3,8,6,8,2,1,4,3,5,9,7,5,3,9,8,2,7,1,6,4,8,6,3,4,9,1,7,5,2,2,5,4,3,7,6,9,8,1,9,1,7,2,5,8,6,4,3,3,7,8,6,1,5,4,2,9,4,9,5,7,8,2,3,1,6,1,2,6,9,3,4,8,7,5}
SimplepuzzleSOL[29]={6,7,1,3,9,8,5,4,2,8,3,2,4,5,6,7,1,9,5,4,9,1,2,7,3,6,8,9,1,6,7,4,2,8,3,5,7,8,4,5,1,3,9,2,6,3,2,5,8,6,9,1,7,4,2,5,3,9,7,4,6,8,1,4,9,8,6,3,1,2,5,7,1,6,7,2,8,5,4,9,3}
SimplepuzzleSOL[30]={2,3,9,5,4,1,6,8,7,7,4,8,3,6,9,2,5,1,6,5,1,7,8,2,4,9,3,9,6,7,1,5,4,8,3,2,1,8,4,2,7,3,5,6,9,5,2,3,8,9,6,7,1,4,8,9,2,6,1,7,3,4,5,4,7,5,9,3,8,1,2,6,3,1,6,4,2,5,9,7,8}
SimplepuzzleSOL[31]={7,4,1,8,9,3,6,2,5,3,8,6,1,5,2,9,7,4,2,5,9,6,7,4,8,3,1,1,2,8,9,6,7,4,5,3,9,6,4,5,3,1,7,8,2,5,3,7,4,2,8,1,6,9,4,1,2,7,8,5,3,9,6,6,7,5,3,4,9,2,1,8,8,9,3,2,1,6,5,4,7}
SimplepuzzleSOL[32]={1,4,7,6,2,9,3,5,8,6,5,3,8,4,1,2,7,9,8,2,9,3,7,5,4,1,6,4,1,6,9,3,8,5,2,7,3,9,2,5,1,7,6,8,4,7,8,5,4,6,2,9,3,1,2,3,4,7,8,6,1,9,5,5,6,8,1,9,3,7,4,2,9,7,1,2,5,4,8,6,3}
SimplepuzzleSOL[33]={8,1,2,4,5,7,6,3,9,3,7,5,1,6,9,2,8,4,4,9,6,3,2,8,7,1,5,9,5,8,6,4,1,3,2,7,2,6,1,9,7,3,5,4,8,7,3,4,5,8,2,1,9,6,6,4,3,8,1,5,9,7,2,1,8,7,2,9,6,4,5,3,5,2,9,7,3,4,8,6,1}
SimplepuzzleSOL[34]={5,6,3,7,1,8,9,4,2,1,4,9,3,2,5,6,7,8,8,7,2,4,6,9,3,1,5,9,3,1,8,4,2,7,5,6,7,5,8,9,3,6,1,2,4,6,2,4,5,7,1,8,3,9,3,8,6,1,5,4,2,9,7,4,9,7,2,8,3,5,6,1,2,1,5,6,9,7,4,8,3}
SimplepuzzleSOL[35]={5,1,8,2,7,4,9,6,3,9,2,3,8,6,1,7,5,4,4,7,6,3,5,9,8,1,2,6,8,2,5,1,7,4,3,9,3,5,4,6,9,8,2,7,1,7,9,1,4,2,3,6,8,5,1,3,9,7,4,6,5,2,8,8,6,5,9,3,2,1,4,7,2,4,7,1,8,5,3,9,6}
SimplepuzzleSOL[36]={5,3,6,1,4,2,7,8,9,7,4,2,6,9,8,3,1,5,8,1,9,7,5,3,6,2,4,9,8,5,3,2,6,1,4,7,2,7,1,4,8,9,5,6,3,4,6,3,5,7,1,8,9,2,3,9,8,2,6,5,4,7,1,1,2,7,8,3,4,9,5,6,6,5,4,9,1,7,2,3,8}
SimplepuzzleSOL[37]={1,6,2,5,3,4,7,8,9,4,5,8,7,9,1,6,3,2,3,9,7,2,6,8,4,5,1,5,8,3,4,7,9,1,2,6,6,7,4,1,2,3,5,9,8,9,2,1,6,8,5,3,4,7,7,3,9,8,4,6,2,1,5,2,4,5,9,1,7,8,6,3,8,1,6,3,5,2,9,7,4}
SimplepuzzleSOL[38]={5,7,6,8,1,2,9,4,3,2,3,8,4,9,6,5,7,1,4,1,9,7,3,5,2,8,6,1,4,7,2,6,3,8,5,9,9,6,5,1,8,4,3,2,7,3,8,2,5,7,9,6,1,4,7,9,4,6,2,8,1,3,5,6,2,1,3,5,7,4,9,8,8,5,3,9,4,1,7,6,2}
SimplepuzzleSOL[39]={6,8,2,9,3,1,4,5,7,4,3,7,6,8,5,1,2,9,1,9,5,4,2,7,6,3,8,2,6,1,8,7,9,3,4,5,5,4,8,3,1,2,9,7,6,3,7,9,5,6,4,8,1,2,9,1,4,2,5,6,7,8,3,8,2,6,7,4,3,5,9,1,7,5,3,1,9,8,2,6,4}
SimplepuzzleSOL[40]={9,4,3,7,6,5,8,1,2,5,6,7,1,2,8,9,4,3,1,2,8,3,9,4,5,7,6,7,9,1,5,3,6,2,8,4,3,8,6,4,1,2,7,9,5,2,5,4,9,8,7,3,6,1,8,3,5,6,7,1,4,2,9,4,1,2,8,5,9,6,3,7,6,7,9,2,4,3,1,5,8}
SimplepuzzleSOL[41]={3,9,8,2,5,6,1,4,7,7,5,1,3,8,4,9,2,6,4,2,6,1,9,7,8,5,3,9,4,3,8,1,5,6,7,2,8,7,2,6,4,9,3,1,5,6,1,5,7,2,3,4,9,8,5,8,7,4,6,1,2,3,9,2,3,4,9,7,8,5,6,1,1,6,9,5,3,2,7,8,4}
SimplepuzzleSOL[42]={3,4,8,2,7,5,6,9,1,9,1,6,8,3,4,5,2,7,5,7,2,9,1,6,4,8,3,1,6,3,5,2,9,7,4,8,4,5,7,1,6,8,9,3,2,2,8,9,3,4,7,1,6,5,6,2,4,7,8,1,3,5,9,8,9,1,6,5,3,2,7,4,7,3,5,4,9,2,8,1,6}
SimplepuzzleSOL[43]={5,9,4,8,7,3,1,2,6,3,6,8,1,4,2,7,5,9,7,1,2,9,5,6,8,3,4,9,2,7,6,3,8,4,1,5,8,5,6,4,2,1,9,7,3,1,4,3,7,9,5,6,8,2,6,7,5,2,8,9,3,4,1,4,3,1,5,6,7,2,9,8,2,8,9,3,1,4,5,6,7}
SimplepuzzleSOL[44]={4,5,8,7,9,6,3,1,2,2,7,9,3,1,4,6,8,5,6,1,3,5,8,2,4,9,7,7,3,4,9,6,8,2,5,1,1,8,2,4,7,5,9,6,3,9,6,5,2,3,1,8,7,4,8,2,6,1,4,7,5,3,9,3,4,7,6,5,9,1,2,8,5,9,1,8,2,3,7,4,6}
SimplepuzzleSOL[45]={7,3,1,2,4,6,8,9,5,2,5,6,3,9,8,7,1,4,8,4,9,7,5,1,2,6,3,9,1,3,6,7,5,4,2,8,5,6,2,4,8,3,9,7,1,4,7,8,1,2,9,5,3,6,1,2,5,8,6,7,3,4,9,6,8,7,9,3,4,1,5,2,3,9,4,5,1,2,6,8,7}
SimplepuzzleSOL[46]={1,6,4,2,8,9,3,5,7,8,2,9,7,5,3,4,6,1,3,7,5,4,6,1,8,2,9,4,8,3,6,9,5,7,1,2,7,9,2,1,4,8,6,3,5,5,1,6,3,2,7,9,4,8,9,4,7,5,1,6,2,8,3,6,3,1,8,7,2,5,9,4,2,5,8,9,3,4,1,7,6}
SimplepuzzleSOL[47]={5,3,9,6,8,7,1,2,4,6,2,4,1,3,5,8,9,7,1,7,8,2,9,4,5,3,6,8,1,7,3,5,2,6,4,9,9,6,3,8,4,1,2,7,5,2,4,5,7,6,9,3,8,1,4,8,6,5,7,3,9,1,2,3,9,1,4,2,6,7,5,8,7,5,2,9,1,8,4,6,3}
SimplepuzzleSOL[48]={4,2,5,8,3,9,6,7,1,1,6,7,2,4,5,9,8,3,8,3,9,7,1,6,5,2,4,7,5,3,1,6,4,2,9,8,9,8,1,3,2,7,4,6,5,6,4,2,5,9,8,1,3,7,5,1,8,6,7,2,3,4,9,2,7,4,9,5,3,8,1,6,3,9,6,4,8,1,7,5,2}
SimplepuzzleSOL[49]={3,4,8,7,5,9,2,1,6,2,6,1,4,3,8,9,5,7,5,7,9,1,6,2,8,3,4,9,5,6,8,4,1,7,2,3,8,2,4,6,7,3,1,9,5,7,1,3,9,2,5,6,4,8,4,8,5,2,9,7,3,6,1,6,9,7,3,1,4,5,8,2,1,3,2,5,8,6,4,7,9}
SimplepuzzleSOL[50]={7,3,9,8,2,5,6,4,1,4,1,6,3,7,9,5,2,8,5,8,2,1,6,4,7,3,9,2,7,1,4,3,6,8,9,5,3,9,8,2,5,7,1,6,4,6,5,4,9,8,1,2,7,3,9,2,5,7,4,8,3,1,6,8,4,7,6,1,3,9,5,2,1,6,3,5,9,2,4,8,7}
SimplepuzzleSOL[51]={8,5,9,7,4,1,2,3,6,2,1,6,9,5,3,4,7,8,7,3,4,2,6,8,9,5,1,1,8,5,3,2,4,7,6,9,9,6,2,1,7,5,8,4,3,3,4,7,6,8,9,5,1,2,6,2,8,5,3,7,1,9,4,4,7,1,8,9,6,3,2,5,5,9,3,4,1,2,6,8,7}
SimplepuzzleSOL[52]={7,3,2,6,5,8,9,1,4,5,1,9,2,4,7,6,8,3,8,4,6,1,9,3,2,7,5,6,5,7,9,2,1,3,4,8,3,9,4,7,8,6,1,5,2,2,8,1,5,3,4,7,9,6,9,6,3,4,1,5,8,2,7,4,2,8,3,7,9,5,6,1,1,7,5,8,6,2,4,3,9}
SimplepuzzleSOL[53]={8,4,7,9,6,1,5,3,2,2,5,1,7,8,3,6,4,9,3,6,9,2,4,5,8,1,7,1,8,5,4,3,9,2,7,6,9,2,4,5,7,6,3,8,1,7,3,6,8,1,2,4,9,5,4,7,2,1,5,8,9,6,3,6,9,8,3,2,7,1,5,4,5,1,3,6,9,4,7,2,8}
SimplepuzzleSOL[54]={8,5,9,7,6,1,4,3,2,2,3,7,8,4,5,9,6,1,4,6,1,9,3,2,5,8,7,6,9,8,4,1,3,2,7,5,3,1,2,5,7,9,8,4,6,7,4,5,2,8,6,3,1,9,1,2,4,3,5,7,6,9,8,5,7,3,6,9,8,1,2,4,9,8,6,1,2,4,7,5,3}
SimplepuzzleSOL[55]={7,1,5,8,6,2,4,9,3,9,3,2,7,4,1,8,5,6,4,8,6,5,3,9,1,2,7,8,4,7,9,2,6,5,3,1,1,6,9,4,5,3,7,8,2,5,2,3,1,7,8,6,4,9,6,9,4,3,1,5,2,7,8,2,7,8,6,9,4,3,1,5,3,5,1,2,8,7,9,6,4}
SimplepuzzleSOL[56]={8,6,7,9,4,5,1,3,2,5,1,9,2,3,8,7,4,6,2,4,3,7,1,6,8,5,9,3,2,8,6,7,9,5,1,4,6,9,1,5,8,4,3,2,7,4,7,5,3,2,1,6,9,8,1,8,2,4,5,7,9,6,3,7,3,6,1,9,2,4,8,5,9,5,4,8,6,3,2,7,1}
SimplepuzzleSOL[57]={2,1,4,5,6,7,9,8,3,9,7,5,1,3,8,2,4,6,3,6,8,9,2,4,1,7,5,8,4,6,7,1,3,5,2,9,1,2,9,6,8,5,4,3,7,7,5,3,2,4,9,6,1,8,6,8,7,4,5,2,3,9,1,4,3,1,8,9,6,7,5,2,5,9,2,3,7,1,8,6,4}
SimplepuzzleSOL[58]={7,2,5,3,9,4,6,1,8,9,1,8,6,7,2,3,4,5,6,4,3,1,8,5,7,2,9,1,5,7,9,2,6,8,3,4,8,3,2,5,4,7,9,6,1,4,6,9,8,3,1,2,5,7,5,7,1,2,6,9,4,8,3,2,8,4,7,1,3,5,9,6,3,9,6,4,5,8,1,7,2}
SimplepuzzleSOL[59]={7,9,2,4,8,6,3,5,1,4,5,8,1,3,9,7,6,2,3,1,6,7,5,2,4,9,8,6,8,4,2,9,3,5,1,7,2,7,1,5,4,8,6,3,9,9,3,5,6,7,1,8,2,4,1,2,3,8,6,7,9,4,5,8,4,9,3,2,5,1,7,6,5,6,7,9,1,4,2,8,3}
SimplepuzzleSOL[60]={8,2,3,5,7,9,6,4,1,5,4,7,1,6,3,8,9,2,1,9,6,8,4,2,3,5,7,9,7,5,2,3,1,4,8,6,4,3,1,6,8,5,2,7,9,6,8,2,7,9,4,5,1,3,2,1,9,4,5,6,7,3,8,3,5,8,9,2,7,1,6,4,7,6,4,3,1,8,9,2,5}
SimplepuzzleSOL[61]={6,2,5,7,3,4,1,9,8,4,7,9,1,8,5,3,6,2,8,1,3,2,6,9,5,7,4,1,4,2,6,5,8,7,3,9,5,3,8,9,1,7,4,2,6,7,9,6,3,4,2,8,1,5,2,8,1,5,7,6,9,4,3,9,5,7,4,2,3,6,8,1,3,6,4,8,9,1,2,5,7}
SimplepuzzleSOL[62]={5,8,3,1,2,4,7,6,9,2,7,4,6,9,5,1,3,8,9,6,1,8,7,3,5,2,4,8,4,9,5,1,6,3,7,2,6,2,5,3,8,7,4,9,1,1,3,7,2,4,9,8,5,6,7,1,2,9,3,8,6,4,5,4,5,8,7,6,2,9,1,3,3,9,6,4,5,1,2,8,7}
SimplepuzzleSOL[63]={4,5,9,6,1,7,3,8,2,2,6,7,5,8,3,4,1,9,3,8,1,4,2,9,6,7,5,8,7,4,1,9,5,2,6,3,6,9,3,8,7,2,5,4,1,5,1,2,3,4,6,8,9,7,9,3,8,7,5,4,1,2,6,7,4,5,2,6,1,9,3,8,1,2,6,9,3,8,7,5,4}
SimplepuzzleSOL[64]={9,7,1,5,6,8,3,2,4,6,3,4,7,2,1,8,9,5,8,2,5,9,4,3,1,7,6,3,4,9,2,8,5,7,6,1,1,8,6,3,7,4,2,5,9,7,5,2,1,9,6,4,3,8,5,1,7,8,3,9,6,4,2,2,6,8,4,5,7,9,1,3,4,9,3,6,1,2,5,8,7}
SimplepuzzleSOL[65]={9,4,3,7,2,5,8,1,6,2,6,7,8,9,1,5,4,3,8,1,5,6,4,3,7,2,9,4,5,6,1,7,2,9,3,8,7,9,2,3,8,4,6,5,1,3,8,1,5,6,9,4,7,2,1,7,9,4,3,6,2,8,5,6,3,4,2,5,8,1,9,7,5,2,8,9,1,7,3,6,4}
SimplepuzzleSOL[66]={8,5,3,1,9,7,4,6,2,9,1,2,4,8,6,7,5,3,6,7,4,3,2,5,9,1,8,4,8,6,5,3,1,2,9,7,5,3,1,9,7,2,8,4,6,2,9,7,6,4,8,1,3,5,7,4,9,2,5,3,6,8,1,1,2,5,8,6,4,3,7,9,3,6,8,7,1,9,5,2,4}
SimplepuzzleSOL[67]={5,4,2,7,1,6,8,3,9,9,7,8,2,3,5,1,6,4,6,3,1,8,9,4,2,5,7,4,2,3,9,5,8,6,7,1,1,6,7,3,4,2,9,8,5,8,5,9,6,7,1,3,4,2,2,9,6,4,8,7,5,1,3,7,8,5,1,2,3,4,9,6,3,1,4,5,6,9,7,2,8}
SimplepuzzleSOL[68]={9,1,3,4,2,8,7,6,5,8,2,6,9,7,5,3,1,4,7,5,4,1,6,3,2,8,9,1,6,7,3,9,2,5,4,8,2,4,8,7,5,1,9,3,6,5,3,9,6,8,4,1,7,2,4,7,5,2,1,6,8,9,3,3,8,1,5,4,9,6,2,7,6,9,2,8,3,7,4,5,1}
SimplepuzzleSOL[69]={7,3,1,8,2,4,6,9,5,2,8,5,3,9,6,1,7,4,4,9,6,7,5,1,2,3,8,5,7,3,6,8,2,9,4,1,9,6,8,4,1,7,3,5,2,1,2,4,5,3,9,7,8,6,6,4,9,2,7,5,8,1,3,8,1,2,9,4,3,5,6,7,3,5,7,1,6,8,4,2,9}
SimplepuzzleSOL[70]={1,2,3,8,9,7,4,6,5,5,7,4,2,6,1,8,3,9,8,9,6,3,5,4,2,7,1,2,8,5,9,1,3,6,4,7,6,4,7,5,2,8,9,1,3,9,3,1,7,4,6,5,8,2,4,1,9,6,7,5,3,2,8,7,5,8,4,3,2,1,9,6,3,6,2,1,8,9,7,5,4}
SimplepuzzleSOL[71]={9,6,1,4,5,2,3,7,8,4,2,5,7,8,3,6,1,9,3,7,8,1,6,9,4,2,5,6,5,7,2,9,1,8,3,4,1,4,9,6,3,8,2,5,7,8,3,2,5,7,4,1,9,6,7,9,4,3,2,6,5,8,1,5,1,3,8,4,7,9,6,2,2,8,6,9,1,5,7,4,3}
SimplepuzzleSOL[72]={5,9,2,8,1,7,6,4,3,1,8,7,4,3,6,2,5,9,3,4,6,2,9,5,8,1,7,7,5,3,1,4,2,9,8,6,8,2,9,5,6,3,4,7,1,6,1,4,7,8,9,5,3,2,4,7,5,6,2,1,3,9,8,2,3,8,9,7,4,1,6,5,9,6,1,3,5,8,7,2,4}
SimplepuzzleSOL[73]={5,3,7,8,2,1,9,4,6,6,1,9,3,4,7,5,8,2,2,4,8,9,6,5,3,1,7,9,2,1,4,5,6,8,7,3,4,6,5,7,3,8,1,2,9,8,7,3,1,9,2,4,6,5,3,8,4,2,7,9,6,5,1,7,9,6,5,1,4,2,3,8,1,5,2,6,8,3,7,9,4}
SimplepuzzleSOL[74]={2,3,1,7,5,6,8,4,9,8,4,5,1,9,3,7,6,2,9,6,7,2,8,4,3,5,1,1,2,6,5,7,8,4,9,3,7,8,4,3,2,9,5,1,6,5,9,3,4,6,1,2,7,8,3,7,8,6,1,5,9,2,4,6,5,9,8,4,2,1,3,7,4,1,2,9,3,7,6,8,5}
SimplepuzzleSOL[75]={5,1,8,6,9,3,7,2,4,3,7,9,2,4,5,6,8,1,2,6,4,8,7,1,5,3,9,9,4,2,3,5,8,1,7,6,8,3,6,7,1,4,9,5,2,7,5,1,9,6,2,8,4,3,1,2,7,5,3,9,4,6,8,4,8,5,1,2,6,3,9,7,6,9,3,4,8,7,2,1,5}
SimplepuzzleSOL[76]={5,6,3,2,7,9,4,1,8,7,2,8,3,1,4,5,9,6,9,4,1,8,5,6,2,3,7,1,7,2,5,6,3,9,8,4,8,9,6,1,4,2,3,7,5,4,3,5,7,9,8,1,6,2,6,1,9,4,2,7,8,5,3,2,8,7,9,3,5,6,4,1,3,5,4,6,8,1,7,2,9}
SimplepuzzleSOL[77]={9,3,7,8,5,4,6,1,2,2,1,8,3,6,9,7,5,4,6,4,5,7,1,2,8,9,3,1,6,2,4,3,7,5,8,9,3,8,4,6,9,5,1,2,7,7,5,9,2,8,1,4,3,6,8,7,6,5,2,3,9,4,1,5,2,1,9,4,6,3,7,8,4,9,3,1,7,8,2,6,5}
SimplepuzzleSOL[78]={5,3,4,8,9,2,7,1,6,9,6,1,3,7,4,2,8,5,8,7,2,1,5,6,3,4,9,1,4,7,5,6,3,9,2,8,2,9,5,4,8,7,1,6,3,6,8,3,2,1,9,5,7,4,3,1,9,7,4,8,6,5,2,4,5,6,9,2,1,8,3,7,7,2,8,6,3,5,4,9,1}
SimplepuzzleSOL[79]={9,1,3,5,2,7,6,4,8,8,7,5,4,6,1,3,2,9,2,6,4,8,3,9,5,1,7,6,9,8,7,5,4,2,3,1,3,4,1,2,9,6,7,8,5,5,2,7,3,1,8,4,9,6,7,3,9,1,4,5,8,6,2,1,8,2,6,7,3,9,5,4,4,5,6,9,8,2,1,7,3}
SimplepuzzleSOL[80]={7,6,1,3,9,4,5,2,8,3,8,4,7,5,2,6,1,9,2,9,5,6,8,1,4,3,7,6,4,7,9,2,5,3,8,1,1,3,8,4,7,6,9,5,2,5,2,9,8,1,3,7,4,6,4,1,2,5,6,7,8,9,3,9,5,6,2,3,8,1,7,4,8,7,3,1,4,9,2,6,5}
SimplepuzzleSOL[81]={6,9,4,8,5,7,1,3,2,3,7,2,9,6,1,4,8,5,5,8,1,4,3,2,9,7,6,1,6,7,5,9,8,3,2,4,8,2,9,1,4,3,6,5,7,4,3,5,2,7,6,8,9,1,9,5,8,6,2,4,7,1,3,7,1,6,3,8,5,2,4,9,2,4,3,7,1,9,5,6,8}
SimplepuzzleSOL[82]={7,8,1,5,4,9,2,3,6,6,3,2,7,1,8,9,4,5,9,5,4,3,2,6,1,7,8,4,6,8,1,9,7,3,5,2,3,2,5,6,8,4,7,1,9,1,7,9,2,5,3,8,6,4,8,9,3,4,6,1,5,2,7,5,1,6,9,7,2,4,8,3,2,4,7,8,3,5,6,9,1}
SimplepuzzleSOL[83]={2,1,5,4,8,7,9,3,6,9,8,6,1,5,3,7,2,4,7,3,4,6,9,2,5,8,1,5,4,3,7,6,8,2,1,9,6,2,7,5,1,9,3,4,8,1,9,8,2,3,4,6,7,5,3,7,9,8,4,5,1,6,2,8,6,2,9,7,1,4,5,3,4,5,1,3,2,6,8,9,7}
SimplepuzzleSOL[84]={9,4,6,1,7,5,2,3,8,3,1,2,9,4,8,5,7,6,5,8,7,6,2,3,1,4,9,6,3,5,7,8,1,4,9,2,7,9,4,2,5,6,3,8,1,1,2,8,4,3,9,7,6,5,4,5,1,8,6,7,9,2,3,2,6,9,3,1,4,8,5,7,8,7,3,5,9,2,6,1,4}
SimplepuzzleSOL[85]={4,1,5,6,9,2,3,8,7,7,8,9,5,3,4,6,2,1,3,2,6,1,8,7,4,5,9,5,9,3,4,7,1,8,6,2,2,4,7,8,6,3,9,1,5,1,6,8,2,5,9,7,4,3,9,5,1,7,4,6,2,3,8,6,7,2,3,1,8,5,9,4,8,3,4,9,2,5,1,7,6}
SimplepuzzleSOL[86]={4,5,9,1,2,3,7,8,6,8,6,7,9,4,5,3,2,1,2,3,1,7,8,6,5,4,9,5,8,6,3,9,2,1,7,4,7,9,3,8,1,4,6,5,2,1,4,2,5,6,7,9,3,8,9,2,5,4,7,1,8,6,3,6,7,8,2,3,9,4,1,5,3,1,4,6,5,8,2,9,7}
SimplepuzzleSOL[87]={4,8,3,2,1,6,7,5,9,6,2,9,7,3,5,1,8,4,5,1,7,9,4,8,6,3,2,9,7,8,6,2,1,3,4,5,1,4,2,5,7,3,9,6,8,3,5,6,8,9,4,2,7,1,2,3,4,1,8,7,5,9,6,8,6,1,3,5,9,4,2,7,7,9,5,4,6,2,8,1,3}
SimplepuzzleSOL[88]={9,8,7,5,2,4,3,6,1,2,6,5,3,1,9,8,7,4,3,4,1,7,8,6,5,9,2,4,1,6,2,9,5,7,3,8,7,9,2,8,3,1,4,5,6,8,5,3,4,6,7,2,1,9,1,7,8,6,4,3,9,2,5,5,2,9,1,7,8,6,4,3,6,3,4,9,5,2,1,8,7}
SimplepuzzleSOL[89]={3,4,9,1,8,6,7,2,5,7,1,5,2,9,4,8,3,6,6,2,8,5,7,3,9,1,4,2,5,6,9,3,1,4,8,7,1,8,4,7,2,5,6,9,3,9,3,7,6,4,8,2,5,1,5,7,2,3,6,9,1,4,8,4,6,1,8,5,2,3,7,9,8,9,3,4,1,7,5,6,2}
SimplepuzzleSOL[90]={1,8,6,9,5,3,7,4,2,9,4,7,8,2,1,3,6,5,5,2,3,4,6,7,9,8,1,8,6,9,3,4,5,2,1,7,2,7,5,6,1,9,4,3,8,3,1,4,2,7,8,5,9,6,7,3,1,5,8,4,6,2,9,6,9,8,7,3,2,1,5,4,4,5,2,1,9,6,8,7,3}
SimplepuzzleSOL[91]={9,3,4,6,5,8,2,7,1,6,1,5,7,9,2,8,3,4,8,7,2,3,1,4,9,5,6,2,9,6,8,3,5,4,1,7,3,5,8,4,7,1,6,2,9,1,4,7,2,6,9,5,8,3,4,6,3,5,2,7,1,9,8,5,8,1,9,4,3,7,6,2,7,2,9,1,8,6,3,4,5}
SimplepuzzleSOL[92]={9,7,4,8,5,2,6,1,3,1,2,8,3,7,6,9,5,4,5,3,6,4,1,9,8,7,2,6,5,9,2,4,1,3,8,7,4,1,2,7,8,3,5,9,6,7,8,3,6,9,5,2,4,1,2,4,7,5,6,8,1,3,9,8,6,1,9,3,4,7,2,5,3,9,5,1,2,7,4,6,8}
SimplepuzzleSOL[93]={7,2,6,1,9,5,3,4,8,4,5,3,7,8,6,1,9,2,9,1,8,4,3,2,7,5,6,6,7,9,8,1,4,2,3,5,1,4,2,5,6,3,9,8,7,3,8,5,2,7,9,4,6,1,8,3,1,9,5,7,6,2,4,2,9,7,6,4,8,5,1,3,5,6,4,3,2,1,8,7,9}
SimplepuzzleSOL[94]={9,5,4,6,1,3,8,2,7,7,8,1,5,2,4,6,9,3,2,3,6,7,8,9,5,4,1,3,4,9,8,6,7,2,1,5,5,6,2,3,9,1,7,8,4,1,7,8,2,4,5,3,6,9,6,9,3,4,5,2,1,7,8,4,2,7,1,3,8,9,5,6,8,1,5,9,7,6,4,3,2}
SimplepuzzleSOL[95]={4,2,7,9,1,8,6,3,5,5,8,9,6,3,7,1,4,2,1,3,6,2,5,4,7,9,8,8,6,5,1,4,9,2,7,3,3,9,1,7,2,5,8,6,4,7,4,2,8,6,3,5,1,9,6,1,8,3,9,2,4,5,7,2,5,3,4,7,6,9,8,1,9,7,4,5,8,1,3,2,6}
SimplepuzzleSOL[96]={6,1,3,8,5,7,2,9,4,8,2,5,4,3,9,6,7,1,9,7,4,2,6,1,8,3,5,5,6,1,3,2,4,9,8,7,3,9,2,7,1,8,4,5,6,4,8,7,6,9,5,3,1,2,7,4,9,5,8,2,1,6,3,1,5,6,9,4,3,7,2,8,2,3,8,1,7,6,5,4,9}
SimplepuzzleSOL[97]={3,9,1,8,5,2,4,6,7,6,7,8,1,9,4,2,3,5,5,2,4,7,6,3,9,1,8,4,5,9,3,2,8,6,7,1,8,3,7,4,1,6,5,2,9,2,1,6,5,7,9,8,4,3,9,8,2,6,3,7,1,5,4,7,6,5,9,4,1,3,8,2,1,4,3,2,8,5,7,9,6}
SimplepuzzleSOL[98]={3,9,5,6,7,1,2,8,4,2,1,4,3,8,9,5,6,7,8,7,6,2,5,4,1,3,9,1,6,3,7,2,5,4,9,8,9,2,8,1,4,3,6,7,5,5,4,7,8,9,6,3,2,1,7,5,1,9,6,2,8,4,3,6,3,9,4,1,8,7,5,2,4,8,2,5,3,7,9,1,6}
SimplepuzzleSOL[99]={7,4,2,6,3,1,5,9,8,6,9,5,8,2,7,4,1,3,1,8,3,5,9,4,7,6,2,8,1,9,7,4,3,2,5,6,3,5,4,2,1,6,8,7,9,2,7,6,9,8,5,3,4,1,5,2,7,1,6,8,9,3,4,9,3,1,4,5,2,6,8,7,4,6,8,3,7,9,1,2,5}
SimplepuzzleSOL[100]={7,5,3,6,2,4,9,1,8,1,4,9,8,3,7,6,2,5,2,6,8,1,9,5,3,7,4,9,2,5,3,4,1,8,6,7,8,1,6,7,5,9,4,3,2,4,3,7,2,8,6,5,9,1,3,9,1,5,7,8,2,4,6,5,7,4,9,6,2,1,8,3,6,8,2,4,1,3,7,5,9}
SimplepuzzleSOL[101]={6,9,4,2,1,8,3,7,5,8,5,3,7,6,9,2,4,1,2,1,7,3,5,4,6,8,9,9,7,8,5,3,2,4,1,6,1,3,6,8,4,7,5,9,2,5,4,2,1,9,6,8,3,7,7,6,9,4,8,5,1,2,3,4,2,1,6,7,3,9,5,8,3,8,5,9,2,1,7,6,4}
SimplepuzzleSOL[102]={2,1,9,6,4,5,8,3,7,3,7,5,8,2,1,6,9,4,6,4,8,9,3,7,2,1,5,8,2,4,7,9,3,5,6,1,1,6,3,5,8,4,7,2,9,5,9,7,1,6,2,4,8,3,4,8,1,3,7,6,9,5,2,7,3,6,2,5,9,1,4,8,9,5,2,4,1,8,3,7,6}
SimplepuzzleSOL[103]={5,2,9,6,3,8,1,7,4,1,8,7,2,4,9,3,6,5,4,3,6,5,1,7,9,2,8,8,4,2,1,9,6,7,5,3,3,6,1,4,7,5,2,8,9,7,9,5,3,8,2,6,4,1,9,5,3,7,2,4,8,1,6,2,1,4,8,6,3,5,9,7,6,7,8,9,5,1,4,3,2}
SimplepuzzleSOL[104]={4,8,5,1,7,2,3,9,6,7,9,6,3,8,4,5,2,1,3,2,1,9,6,5,7,4,8,5,4,7,8,2,9,6,1,3,1,6,8,4,3,7,2,5,9,9,3,2,5,1,6,4,8,7,6,5,3,2,9,8,1,7,4,8,1,4,7,5,3,9,6,2,2,7,9,6,4,1,8,3,5}
SimplepuzzleSOL[105]={1,4,3,2,5,8,9,7,6,5,9,2,6,1,7,3,4,8,8,6,7,3,9,4,5,1,2,9,7,6,1,8,3,2,5,4,3,1,8,5,4,2,7,6,9,4,2,5,9,7,6,8,3,1,2,3,9,7,6,1,4,8,5,7,8,1,4,2,5,6,9,3,6,5,4,8,3,9,1,2,7}
SimplepuzzleSOL[106]={9,8,3,7,6,5,2,4,1,4,7,6,2,9,1,5,8,3,2,1,5,8,4,3,6,9,7,1,6,2,4,8,7,9,3,5,8,5,9,3,2,6,1,7,4,7,3,4,1,5,9,8,2,6,5,4,8,6,7,2,3,1,9,6,2,1,9,3,4,7,5,8,3,9,7,5,1,8,4,6,2}
SimplepuzzleSOL[107]={7,4,2,3,8,9,5,1,6,8,9,1,5,2,6,7,4,3,3,6,5,7,4,1,8,9,2,5,3,6,2,7,4,1,8,9,1,8,4,9,5,3,6,2,7,2,7,9,1,6,8,4,3,5,6,1,3,8,9,5,2,7,4,4,2,8,6,3,7,9,5,1,9,5,7,4,1,2,3,6,8}
SimplepuzzleSOL[108]={9,6,7,3,2,4,1,8,5,5,2,3,1,8,9,6,4,7,4,8,1,5,7,6,9,3,2,6,9,4,7,1,2,3,5,8,8,3,2,4,6,5,7,9,1,1,7,5,9,3,8,4,2,6,3,5,6,2,9,1,8,7,4,7,4,8,6,5,3,2,1,9,2,1,9,8,4,7,5,6,3}
SimplepuzzleSOL[109]={5,9,6,3,1,8,2,4,7,7,4,2,9,6,5,3,8,1,8,1,3,7,2,4,5,6,9,6,2,8,1,7,9,4,3,5,9,3,4,8,5,2,7,1,6,1,5,7,4,3,6,9,2,8,3,8,9,5,4,1,6,7,2,2,7,1,6,9,3,8,5,4,4,6,5,2,8,7,1,9,3}
SimplepuzzleSOL[110]={4,3,6,2,9,8,7,5,1,8,7,9,6,5,1,4,3,2,1,2,5,7,4,3,8,9,6,7,1,8,9,6,5,3,2,4,6,9,2,4,3,7,5,1,8,3,5,4,1,8,2,9,6,7,2,4,3,5,7,6,1,8,9,9,8,1,3,2,4,6,7,5,5,6,7,8,1,9,2,4,3}
SimplepuzzleSOL[111]={4,1,7,6,2,8,9,5,3,2,8,3,5,1,9,7,6,4,9,6,5,4,7,3,8,2,1,7,2,8,3,4,6,5,1,9,5,4,1,7,9,2,6,3,8,3,9,6,1,8,5,2,4,7,1,3,2,9,6,7,4,8,5,6,5,9,8,3,4,1,7,2,8,7,4,2,5,1,3,9,6}
SimplepuzzleSOL[112]={2,6,7,4,5,1,3,9,8,9,1,5,3,8,7,6,4,2,8,3,4,9,6,2,1,7,5,3,9,8,7,1,6,5,2,4,7,5,6,2,3,4,9,8,1,1,4,2,8,9,5,7,3,6,4,2,1,6,7,9,8,5,3,6,8,9,5,2,3,4,1,7,5,7,3,1,4,8,2,6,9}
SimplepuzzleSOL[113]={1,6,3,4,8,2,5,9,7,5,8,7,9,6,1,3,4,2,9,2,4,3,7,5,8,1,6,8,7,1,6,2,3,4,5,9,2,5,9,1,4,8,6,7,3,3,4,6,5,9,7,1,2,8,4,3,2,7,1,6,9,8,5,7,1,5,8,3,9,2,6,4,6,9,8,2,5,4,7,3,1}
SimplepuzzleSOL[114]={8,4,1,7,6,2,5,9,3,5,3,6,4,9,8,2,7,1,7,2,9,3,5,1,4,8,6,3,6,2,1,7,5,9,4,8,1,5,7,9,8,4,3,6,2,9,8,4,2,3,6,7,1,5,6,9,3,8,2,7,1,5,4,2,1,5,6,4,9,8,3,7,4,7,8,5,1,3,6,2,9}
SimplepuzzleSOL[115]={5,4,7,9,1,3,6,2,8,3,9,1,6,2,8,7,5,4,2,6,8,5,7,4,3,1,9,7,3,9,1,8,5,2,4,6,8,2,5,7,4,6,1,9,3,4,1,6,2,3,9,5,8,7,6,8,3,4,5,1,9,7,2,1,7,4,3,9,2,8,6,5,9,5,2,8,6,7,4,3,1}
SimplepuzzleSOL[116]={7,1,5,3,8,4,6,9,2,9,2,6,1,5,7,4,8,3,3,4,8,6,9,2,1,7,5,4,5,9,8,6,1,3,2,7,1,3,2,4,7,9,5,6,8,6,8,7,2,3,5,9,4,1,5,6,1,7,4,8,2,3,9,8,9,3,5,2,6,7,1,4,2,7,4,9,1,3,8,5,6}
SimplepuzzleSOL[117]={7,1,2,9,4,5,8,6,3,3,5,9,6,8,2,1,7,4,8,4,6,1,7,3,2,5,9,4,2,1,5,3,9,6,8,7,5,9,7,8,1,6,4,3,2,6,8,3,4,2,7,9,1,5,1,3,5,2,9,8,7,4,6,9,7,8,3,6,4,5,2,1,2,6,4,7,5,1,3,9,8}
SimplepuzzleSOL[118]={9,4,5,6,2,1,7,3,8,6,1,3,8,7,5,9,4,2,7,8,2,9,4,3,5,6,1,4,5,1,2,8,9,6,7,3,2,6,8,5,3,7,1,9,4,3,7,9,1,6,4,2,8,5,1,3,6,7,5,8,4,2,9,8,9,7,4,1,2,3,5,6,5,2,4,3,9,6,8,1,7}
SimplepuzzleSOL[119]={7,1,9,4,8,6,3,2,5,2,4,5,1,3,7,6,9,8,8,3,6,5,9,2,7,4,1,6,7,2,3,5,4,1,8,9,3,9,1,7,2,8,4,5,6,4,5,8,6,1,9,2,7,3,9,6,4,8,7,3,5,1,2,1,2,7,9,6,5,8,3,4,5,8,3,2,4,1,9,6,7}
SimplepuzzleSOL[120]={9,7,1,2,4,8,5,3,6,3,4,5,9,1,6,8,7,2,8,6,2,7,5,3,4,1,9,7,1,8,4,2,9,3,6,5,6,2,3,8,7,5,9,4,1,5,9,4,3,6,1,7,2,8,4,8,6,5,3,2,1,9,7,1,5,7,6,9,4,2,8,3,2,3,9,1,8,7,6,5,4}
SimplepuzzleSOL[121]={4,6,7,2,3,9,1,8,5,3,8,2,5,1,6,9,7,4,1,5,9,7,4,8,3,6,2,2,4,8,6,7,3,5,1,9,9,1,6,4,2,5,8,3,7,7,3,5,8,9,1,2,4,6,5,9,3,1,6,7,4,2,8,6,2,1,9,8,4,7,5,3,8,7,4,3,5,2,6,9,1}
SimplepuzzleSOL[122]={8,5,9,2,4,7,6,1,3,3,2,4,6,8,1,5,9,7,1,6,7,9,3,5,2,4,8,5,1,2,8,6,4,3,7,9,9,4,6,7,1,3,8,5,2,7,3,8,5,2,9,4,6,1,4,8,5,1,9,2,7,3,6,6,7,1,3,5,8,9,2,4,2,9,3,4,7,6,1,8,5}
SimplepuzzleSOL[123]={8,1,3,4,9,5,7,6,2,7,6,9,1,2,3,8,5,4,4,5,2,6,7,8,3,9,1,3,2,6,8,1,7,5,4,9,5,8,1,3,4,9,6,2,7,9,7,4,5,6,2,1,3,8,6,3,7,9,8,4,2,1,5,1,4,8,2,5,6,9,7,3,2,9,5,7,3,1,4,8,6}
SimplepuzzleSOL[124]={6,9,4,5,7,1,2,8,3,7,1,8,3,4,2,9,5,6,3,2,5,6,9,8,1,4,7,4,5,6,8,2,7,3,1,9,9,3,1,4,6,5,7,2,8,8,7,2,1,3,9,4,6,5,2,6,7,9,8,4,5,3,1,1,8,9,2,5,3,6,7,4,5,4,3,7,1,6,8,9,2}
SimplepuzzleSOL[125]={4,3,6,7,8,5,1,9,2,2,1,8,9,4,6,7,3,5,5,9,7,3,2,1,4,8,6,8,4,5,6,1,9,3,2,7,9,7,2,8,3,4,5,6,1,3,6,1,5,7,2,9,4,8,1,2,3,4,5,8,6,7,9,7,8,9,1,6,3,2,5,4,6,5,4,2,9,7,8,1,3}
SimplepuzzleSOL[126]={9,5,1,8,4,6,7,2,3,7,2,3,9,5,1,8,4,6,4,8,6,2,7,3,9,5,1,2,4,5,6,3,7,1,9,8,6,3,9,1,8,4,5,7,2,8,1,7,5,2,9,6,3,4,1,7,2,4,6,5,3,8,9,5,6,4,3,9,8,2,1,7,3,9,8,7,1,2,4,6,5}
SimplepuzzleSOL[127]={3,4,7,5,1,8,6,9,2,8,1,9,2,6,7,5,3,4,5,6,2,4,3,9,1,8,7,1,9,3,8,5,2,7,4,6,6,7,5,3,9,4,8,2,1,2,8,4,1,7,6,3,5,9,4,3,6,9,8,1,2,7,5,7,2,8,6,4,5,9,1,3,9,5,1,7,2,3,4,6,8}
SimplepuzzleSOL[128]={1,4,3,9,5,6,2,7,8,8,5,7,3,1,2,6,9,4,9,6,2,7,8,4,1,5,3,6,9,4,5,3,8,7,2,1,7,2,8,6,9,1,3,4,5,5,3,1,2,4,7,8,6,9,4,7,5,8,6,3,9,1,2,3,1,6,4,2,9,5,8,7,2,8,9,1,7,5,4,3,6}
SimplepuzzleSOL[129]={4,6,3,9,1,8,5,2,7,5,1,7,4,2,3,6,8,9,8,9,2,5,6,7,1,3,4,6,7,4,2,3,5,9,1,8,1,3,8,6,4,9,7,5,2,9,2,5,8,7,1,4,6,3,2,4,9,1,8,6,3,7,5,3,8,6,7,5,4,2,9,1,7,5,1,3,9,2,8,4,6}
SimplepuzzleSOL[130]={9,5,3,4,7,6,2,8,1,2,8,4,9,1,3,5,6,7,6,1,7,8,5,2,3,9,4,8,6,9,2,3,7,1,4,5,3,4,2,1,8,5,9,7,6,5,7,1,6,4,9,8,3,2,1,3,6,5,9,4,7,2,8,7,2,8,3,6,1,4,5,9,4,9,5,7,2,8,6,1,3}
SimplepuzzleSOL[131]={9,2,5,3,1,8,6,4,7,3,1,6,4,9,7,5,2,8,8,4,7,6,2,5,1,3,9,5,3,2,7,6,9,4,8,1,1,7,9,8,4,2,3,5,6,6,8,4,5,3,1,9,7,2,4,6,1,2,8,3,7,9,5,2,5,3,9,7,6,8,1,4,7,9,8,1,5,4,2,6,3}
SimplepuzzleSOL[132]={2,6,4,8,7,9,3,5,1,8,9,3,1,5,4,7,2,6,5,1,7,3,2,6,9,4,8,9,5,1,4,3,2,8,6,7,7,2,6,5,9,8,1,3,4,4,3,8,7,6,1,2,9,5,3,8,2,6,4,7,5,1,9,6,7,5,9,1,3,4,8,2,1,4,9,2,8,5,6,7,3}
SimplepuzzleSOL[133]={2,4,9,5,8,1,3,7,6,5,8,6,7,3,4,9,2,1,7,1,3,9,2,6,8,5,4,4,6,2,3,7,8,5,1,9,1,3,5,2,6,9,7,4,8,8,9,7,4,1,5,2,6,3,9,2,4,6,5,3,1,8,7,3,7,1,8,4,2,6,9,5,6,5,8,1,9,7,4,3,2}
SimplepuzzleSOL[134]={2,8,9,5,3,1,6,4,7,3,4,1,7,9,6,2,5,8,6,5,7,2,8,4,9,3,1,5,1,2,4,6,9,7,8,3,9,3,8,1,5,7,4,2,6,7,6,4,8,2,3,1,9,5,1,7,3,9,4,5,8,6,2,4,2,5,6,1,8,3,7,9,8,9,6,3,7,2,5,1,4}
SimplepuzzleSOL[135]={6,3,8,2,9,4,7,5,1,1,2,9,5,8,7,3,6,4,5,7,4,3,1,6,8,9,2,7,8,2,1,5,9,4,3,6,4,6,1,7,2,3,5,8,9,9,5,3,6,4,8,2,1,7,8,1,7,9,3,2,6,4,5,3,9,6,4,7,5,1,2,8,2,4,5,8,6,1,9,7,3}
SimplepuzzleSOL[136]={5,1,3,2,8,4,6,9,7,7,8,4,5,6,9,1,2,3,9,2,6,7,3,1,5,4,8,4,7,1,6,2,3,9,8,5,8,5,2,9,4,7,3,6,1,6,3,9,8,1,5,4,7,2,1,6,7,3,9,8,2,5,4,3,9,8,4,5,2,7,1,6,2,4,5,1,7,6,8,3,9}
SimplepuzzleSOL[137]={9,8,3,4,2,6,5,1,7,6,5,4,7,8,1,2,9,3,7,1,2,9,5,3,8,6,4,8,6,5,3,7,2,1,4,9,1,4,9,5,6,8,7,3,2,2,3,7,1,9,4,6,8,5,4,7,1,6,3,5,9,2,8,3,9,8,2,1,7,4,5,6,5,2,6,8,4,9,3,7,1}
SimplepuzzleSOL[138]={9,8,6,3,1,7,2,4,5,3,5,7,4,8,2,1,6,9,2,1,4,5,6,9,3,7,8,4,9,3,7,2,5,8,1,6,6,2,5,8,3,1,4,9,7,1,7,8,6,9,4,5,2,3,7,3,2,9,4,8,6,5,1,8,4,9,1,5,6,7,3,2,5,6,1,2,7,3,9,8,4}
SimplepuzzleSOL[139]={2,4,1,5,9,7,3,6,8,9,7,3,6,8,2,4,5,1,8,5,6,3,4,1,9,2,7,5,1,9,7,2,6,8,3,4,3,2,7,4,1,8,5,9,6,4,6,8,9,3,5,7,1,2,6,9,2,8,5,4,1,7,3,1,8,5,2,7,3,6,4,9,7,3,4,1,6,9,2,8,5}
SimplepuzzleSOL[140]={9,3,5,6,7,4,1,8,2,7,1,4,8,3,2,6,9,5,2,6,8,5,1,9,3,4,7,6,9,2,7,4,1,5,3,8,5,7,3,2,8,6,4,1,9,4,8,1,3,9,5,7,2,6,3,5,9,1,2,7,8,6,4,1,4,6,9,5,8,2,7,3,8,2,7,4,6,3,9,5,1}
SimplepuzzleSOL[141]={7,8,4,3,5,1,2,9,6,5,1,6,7,9,2,3,4,8,2,9,3,6,8,4,5,7,1,9,2,8,5,7,3,1,6,4,4,3,1,2,6,8,9,5,7,6,5,7,4,1,9,8,2,3,1,6,2,9,3,7,4,8,5,3,7,9,8,4,5,6,1,2,8,4,5,1,2,6,7,3,9}
SimplepuzzleSOL[142]={9,8,6,5,2,4,7,1,3,5,2,3,7,1,9,6,4,8,4,7,1,6,3,8,2,9,5,3,5,4,8,7,1,9,6,2,2,9,8,3,4,6,1,5,7,1,6,7,9,5,2,8,3,4,8,1,5,2,6,3,4,7,9,6,3,2,4,9,7,5,8,1,7,4,9,1,8,5,3,2,6}
SimplepuzzleSOL[143]={7,8,5,3,6,9,2,4,1,2,6,4,1,5,7,3,8,9,3,1,9,2,8,4,5,7,6,4,5,1,6,7,8,9,3,2,6,7,3,9,1,2,8,5,4,9,2,8,5,4,3,6,1,7,1,3,6,7,2,5,4,9,8,5,4,2,8,9,1,7,6,3,8,9,7,4,3,6,1,2,5}
SimplepuzzleSOL[144]={1,8,5,6,4,3,2,9,7,4,9,2,7,1,5,3,6,8,3,6,7,9,8,2,4,5,1,9,3,6,1,2,4,7,8,5,7,2,1,8,5,6,9,3,4,8,5,4,3,9,7,1,2,6,6,4,9,2,7,8,5,1,3,2,7,8,5,3,1,6,4,9,5,1,3,4,6,9,8,7,2}
SimplepuzzlePROB[1]={0,3,7,8,2,0,9,0,5,0,2,0,3,0,7,8,4,0,6,9,0,5,0,1,2,3,0,0,5,2,0,7,0,1,6,3,8,1,6,0,0,0,0,0,9,0,7,0,6,0,9,0,0,0,0,6,9,7,5,2,0,8,4,7,4,5,1,0,0,6,9,2,2,0,0,9,6,4,7,5,0}
SimplepuzzlePROB[2]={9,0,2,8,6,7,0,3,1,1,0,6,0,0,0,0,7,0,4,0,7,0,3,5,2,9,6,8,0,0,3,4,2,6,1,7,0,0,0,9,7,1,5,8,0,7,1,3,0,0,0,0,4,0,3,6,0,0,0,0,1,5,4,5,7,9,4,0,6,0,0,0,2,4,0,5,8,0,7,6,9}
SimplepuzzlePROB[3]={9,7,3,0,8,2,5,0,1,8,6,0,0,4,5,7,2,3,0,2,0,0,0,0,0,0,8,6,0,0,3,2,0,8,0,4,3,9,0,8,0,0,1,0,0,5,0,2,7,1,0,9,3,0,2,3,0,0,0,8,4,1,9,7,4,8,0,9,1,3,0,0,0,5,9,4,6,3,2,8,0}
SimplepuzzlePROB[4]={3,0,6,7,0,0,1,5,2,0,1,5,6,4,3,0,0,8,9,0,0,1,5,2,3,4,6,0,5,3,0,9,6,0,7,1,1,6,9,8,2,0,4,0,5,7,2,4,5,3,1,0,6,9,5,0,2,0,0,8,9,0,0,4,0,1,0,0,0,6,8,3,0,0,0,0,0,0,5,0,0}
SimplepuzzlePROB[5]={2,6,0,9,7,1,0,4,0,9,0,0,3,0,6,5,1,7,0,3,0,0,5,0,6,0,2,5,0,4,7,1,9,8,3,0,0,8,0,4,3,5,1,2,9,1,0,3,2,6,8,4,7,0,0,0,9,0,4,0,0,8,0,4,7,0,1,0,0,9,0,3,8,1,0,5,0,0,0,6,4}
SimplepuzzlePROB[6]={6,0,0,0,5,2,8,4,0,0,0,7,1,0,4,6,0,0,0,9,5,6,0,8,3,2,1,0,0,2,7,0,0,9,8,4,1,4,0,5,2,9,0,0,6,0,3,9,8,0,0,1,5,2,8,5,1,2,9,7,4,0,0,0,2,6,0,8,0,5,0,9,0,0,4,3,6,5,2,0,0}
SimplepuzzlePROB[7]={0,0,0,8,0,0,0,1,5,4,7,0,0,1,0,6,3,9,0,0,2,3,6,9,0,7,4,1,0,3,4,7,5,9,0,8,7,0,0,0,9,6,1,4,0,9,6,4,0,3,8,7,0,2,0,5,1,0,0,4,0,9,7,0,0,9,7,0,1,4,2,6,6,4,0,9,2,0,5,0,0}
SimplepuzzlePROB[8]={3,8,7,9,4,1,6,0,0,6,0,0,2,8,0,9,7,4,0,9,2,5,6,0,8,3,0,7,0,3,1,5,0,0,9,0,5,1,0,6,7,9,2,8,0,0,0,8,4,0,2,7,1,5,1,7,0,0,0,0,0,4,8,0,0,0,0,0,4,1,6,7,0,4,6,0,1,5,3,0,0}
SimplepuzzlePROB[9]={6,9,7,8,0,2,0,5,1,0,0,1,9,0,4,3,2,0,4,0,3,1,0,6,0,7,9,0,6,0,7,4,5,0,0,3,5,0,8,0,0,1,0,4,7,9,0,4,2,8,3,0,6,5,7,0,0,0,2,8,0,0,4,0,8,0,4,0,7,0,0,2,2,4,0,3,6,9,0,1,8}
SimplepuzzlePROB[10]={5,0,4,0,0,1,2,0,3,1,2,3,0,0,4,7,6,0,8,0,9,0,3,7,4,5,1,0,0,7,3,0,9,8,0,6,0,0,1,0,8,2,0,7,5,9,8,6,0,0,5,0,1,2,6,0,0,1,7,3,0,9,8,3,0,0,4,0,8,6,2,0,0,0,0,5,0,6,1,3,4}
SimplepuzzlePROB[11]={0,0,1,3,0,0,7,2,4,2,3,0,5,1,0,9,0,6,9,7,6,8,4,0,0,3,5,5,0,0,2,7,0,0,0,1,0,1,0,0,0,9,3,4,8,3,6,0,0,0,4,0,5,7,0,2,0,7,3,8,0,0,9,4,8,7,9,2,1,5,6,0,1,9,0,4,6,0,8,0,0}
SimplepuzzlePROB[12]={0,8,7,0,0,6,0,5,1,2,1,5,3,0,0,6,0,0,0,0,9,5,1,4,2,0,0,5,9,0,1,4,0,0,0,0,0,2,6,7,9,0,0,8,0,7,4,0,6,8,5,9,1,0,0,5,2,8,6,7,1,4,3,0,0,0,4,3,0,5,2,0,3,7,4,2,0,1,0,6,9}
SimplepuzzlePROB[13]={9,5,7,8,1,2,0,0,0,3,6,0,4,0,0,0,7,1,4,0,0,0,0,0,8,0,5,2,8,0,7,0,1,5,6,9,5,0,0,0,2,8,4,1,7,6,0,0,0,0,9,3,2,0,8,2,3,0,0,0,0,5,6,1,4,5,9,8,6,7,3,2,0,9,6,0,5,3,0,0,4}
SimplepuzzlePROB[14]={2,0,9,6,0,5,7,0,0,0,0,0,8,0,1,6,0,9,0,5,0,0,0,9,1,4,2,3,6,7,0,8,4,0,0,5,0,8,1,3,0,6,2,7,4,9,2,4,0,1,7,8,3,6,0,0,0,1,6,2,4,9,7,0,0,0,9,0,0,0,2,0,7,9,2,4,5,0,3,6,0}
SimplepuzzlePROB[15]={6,1,9,3,5,0,0,0,0,0,7,0,6,9,4,1,5,2,2,5,0,8,0,1,0,9,3,0,4,0,2,0,6,3,7,5,0,6,0,4,0,0,8,2,1,3,8,2,7,1,5,0,0,4,0,0,5,0,2,0,7,4,6,0,0,0,5,4,0,0,1,0,0,2,8,1,6,0,0,3,9}
SimplepuzzlePROB[16]={8,3,5,6,4,9,2,0,0,2,0,4,1,0,7,0,3,6,6,7,1,8,2,0,9,0,0,0,6,0,0,0,2,4,8,0,0,0,0,0,0,0,0,2,1,1,8,0,4,3,0,7,9,5,3,0,0,0,7,0,0,6,9,0,0,9,5,6,8,3,7,0,7,2,6,0,9,1,5,4,8}
SimplepuzzlePROB[17]={3,4,6,0,9,7,5,0,0,0,7,0,5,8,1,6,3,4,0,1,5,6,3,4,0,7,2,9,0,0,8,7,2,0,0,0,0,0,3,9,1,6,7,2,0,0,0,2,0,5,3,1,6,9,1,2,0,0,0,0,3,0,0,0,3,0,1,0,9,8,0,5,5,9,0,3,6,8,0,0,7}
SimplepuzzlePROB[18]={3,0,1,9,0,0,6,8,4,0,0,0,6,7,0,0,0,0,6,0,9,1,3,8,5,2,7,0,2,4,7,0,0,3,5,9,9,8,5,3,4,1,2,0,0,7,0,3,2,0,9,0,1,0,4,3,0,5,0,7,0,6,0,5,9,7,0,0,2,8,3,1,2,1,0,8,0,0,0,0,5}
SimplepuzzlePROB[19]={0,0,2,4,7,5,1,6,0,0,6,0,0,2,9,7,4,5,0,5,0,0,0,0,2,9,3,3,2,6,9,0,7,5,8,4,0,8,0,2,0,6,9,7,1,7,0,0,0,5,4,0,3,2,2,7,8,5,0,0,4,0,6,1,0,0,6,4,0,8,0,0,6,0,0,0,8,0,3,2,9}
SimplepuzzlePROB[20]={5,0,2,8,0,0,0,0,0,9,6,0,0,1,5,0,2,0,0,0,0,4,0,6,9,3,5,4,0,1,2,8,9,0,0,3,0,3,8,0,0,0,2,4,0,0,9,0,3,7,4,5,8,1,8,7,9,1,3,2,4,5,0,6,2,5,0,4,7,0,1,8,3,0,4,6,5,0,0,0,2}
SimplepuzzlePROB[21]={1,0,9,0,0,0,0,2,0,3,8,0,4,2,1,0,9,0,7,2,0,9,5,0,4,8,1,0,1,8,7,6,0,9,0,3,0,7,3,2,0,0,0,1,4,9,0,4,3,0,8,2,7,6,4,0,0,0,0,0,5,6,8,0,0,1,5,4,9,7,0,2,0,3,2,6,8,7,0,4,0}
SimplepuzzlePROB[22]={8,5,6,7,0,4,3,0,0,4,7,9,1,0,3,8,6,2,3,1,0,0,9,0,5,0,7,2,0,5,0,0,0,4,7,0,1,0,4,5,7,0,6,0,0,7,0,3,0,4,0,9,1,0,5,4,0,0,0,7,0,3,0,6,2,1,4,0,5,7,0,9,0,0,0,6,8,2,1,5,4}
SimplepuzzlePROB[23]={8,7,1,6,2,4,3,0,0,0,0,3,0,8,0,4,6,7,0,0,5,0,3,7,2,1,0,0,4,9,8,0,0,6,5,0,0,5,8,1,9,0,0,0,0,0,1,0,3,4,0,0,0,2,6,0,4,2,0,9,5,7,3,1,9,2,0,5,3,0,4,6,5,3,0,4,0,8,1,0,9}
SimplepuzzlePROB[24]={6,3,0,0,0,0,9,0,4,0,0,7,9,8,0,0,3,1,0,0,0,0,1,4,0,6,5,0,9,3,8,0,5,0,0,7,2,7,4,0,0,3,0,9,0,0,6,5,0,0,9,1,0,0,3,4,0,5,9,7,8,1,2,0,8,0,6,4,1,3,7,0,7,1,9,2,3,8,4,5,6}
SimplepuzzlePROB[25]={7,2,5,9,0,4,0,3,1,0,9,1,3,5,8,6,0,7,0,0,8,7,0,2,4,0,5,0,0,2,0,4,0,5,8,9,8,0,0,2,9,5,7,1,3,3,0,9,0,0,7,0,4,6,0,4,7,0,3,0,0,6,8,0,8,6,4,7,1,3,0,0,0,1,0,0,2,0,0,0,4}
SimplepuzzlePROB[26]={0,5,2,7,6,0,8,4,0,1,6,4,0,2,3,9,0,5,7,0,0,0,4,5,0,3,6,8,1,3,0,5,0,4,9,7,4,7,0,9,1,8,0,0,0,0,2,5,3,0,0,1,0,0,6,3,0,2,9,1,7,0,0,5,9,7,0,0,0,3,1,0,0,4,1,5,0,7,0,8,0}
SimplepuzzlePROB[27]={0,0,3,9,4,7,1,0,8,5,4,0,0,0,6,9,0,7,7,9,8,5,0,0,0,2,6,0,0,7,3,0,0,5,0,2,6,0,5,4,0,2,8,0,1,0,8,0,6,1,0,3,7,4,1,5,9,0,6,8,7,4,3,0,2,0,7,9,0,0,0,5,3,0,6,1,0,0,0,8,9}
SimplepuzzlePROB[28]={7,0,1,5,0,0,2,3,0,0,8,0,1,4,3,0,0,0,5,0,0,0,0,7,0,6,4,8,0,0,4,0,1,7,0,2,2,5,4,3,7,6,0,0,1,9,0,7,2,5,8,6,0,0,0,7,8,0,1,5,4,2,0,0,9,5,7,8,2,3,1,6,0,2,6,9,0,4,0,0,5}
SimplepuzzlePROB[29]={0,0,0,0,0,8,0,4,2,8,0,2,0,5,6,7,1,0,5,4,9,1,2,0,3,0,0,9,0,0,7,0,0,0,3,5,7,8,4,5,0,3,9,0,0,3,2,5,0,6,9,1,0,4,2,0,3,9,0,4,0,8,1,4,9,8,6,3,1,0,0,0,1,6,7,0,8,5,0,9,0}
SimplepuzzlePROB[30]={2,3,9,5,4,0,0,8,0,7,4,8,0,0,9,2,0,1,6,0,1,7,0,2,4,9,3,0,0,7,0,0,0,0,3,2,1,0,4,0,7,0,5,6,9,5,2,0,8,9,6,0,1,4,0,9,0,6,1,7,0,4,5,4,7,5,0,0,8,1,2,6,0,0,0,0,0,0,0,7,8}
SimplepuzzlePROB[31]={0,0,1,8,9,0,6,2,5,3,8,6,1,5,2,0,7,0,0,0,9,6,0,4,0,0,0,1,2,8,9,6,0,4,0,0,0,6,0,0,3,0,7,0,2,5,3,7,0,0,8,1,6,9,4,0,2,7,8,0,3,0,6,6,7,5,0,0,9,0,1,8,0,9,0,2,1,6,0,4,0}
SimplepuzzlePROB[32]={1,4,0,6,2,9,0,5,8,0,5,0,0,4,0,2,7,9,8,0,9,3,7,5,4,1,6,4,0,0,9,0,8,5,0,7,3,9,2,5,0,7,0,8,4,7,8,0,0,0,2,9,3,1,2,3,0,0,8,0,1,9,0,0,6,0,0,9,0,7,0,0,9,7,0,0,0,0,8,6,0}
SimplepuzzlePROB[33]={0,0,2,4,0,7,0,3,9,0,0,5,1,6,0,0,8,0,4,9,0,3,2,0,7,1,0,9,0,8,6,4,0,3,0,7,2,6,1,9,0,3,5,4,8,7,3,0,0,8,0,1,0,6,0,4,3,0,1,5,9,7,0,1,8,7,2,0,6,0,5,0,5,2,0,0,3,0,0,6,0}
SimplepuzzlePROB[34]={5,6,3,7,1,8,9,4,2,0,4,9,3,0,5,0,0,0,0,0,2,4,6,9,0,0,5,0,3,1,8,4,2,7,5,6,7,0,0,9,3,0,0,2,0,0,0,0,5,0,1,8,0,0,3,0,6,1,0,0,2,9,0,0,0,0,2,0,3,5,6,1,2,1,5,6,9,7,0,8,0}
SimplepuzzlePROB[35]={5,1,0,2,0,4,9,6,0,0,0,3,8,6,1,7,5,4,0,7,6,3,0,0,8,0,0,6,8,2,5,1,0,0,3,9,0,5,4,6,9,0,2,0,0,7,9,0,0,2,0,0,8,0,0,3,0,7,4,0,5,2,8,8,0,5,9,0,2,0,4,7,2,0,7,1,0,0,0,9,6}
SimplepuzzlePROB[36]={5,3,6,0,0,0,7,8,9,7,0,0,0,0,8,3,1,5,8,1,9,7,5,0,0,2,0,9,8,5,3,0,0,1,0,7,2,0,0,0,8,0,0,6,0,4,0,0,0,7,1,0,0,2,3,9,0,2,6,5,4,7,1,1,2,0,8,3,4,9,0,6,6,0,0,9,1,7,0,0,8}
SimplepuzzlePROB[37]={1,6,0,5,3,4,7,0,9,4,5,0,7,0,0,0,3,2,0,0,7,2,6,8,4,5,0,0,0,3,0,7,9,1,0,6,6,7,4,1,0,3,5,0,8,9,2,0,0,0,0,3,4,0,7,3,9,8,0,6,2,0,5,0,4,0,0,1,0,8,6,0,0,0,6,3,0,2,9,7,0}
SimplepuzzlePROB[38]={5,7,0,8,1,2,0,0,3,0,3,0,4,9,0,5,7,1,4,0,0,7,3,0,2,0,6,0,4,0,0,6,3,8,0,9,9,0,0,1,8,4,0,2,7,3,0,0,5,7,0,6,1,4,7,0,0,6,0,8,0,3,5,0,0,0,3,5,0,4,9,0,8,5,0,9,4,1,0,6,2}
SimplepuzzlePROB[39]={6,8,2,0,3,1,0,5,0,4,0,7,0,0,5,1,0,9,1,0,0,0,2,0,0,0,8,2,0,1,8,7,0,3,0,5,5,4,8,3,1,2,0,7,6,3,7,9,5,6,4,8,0,2,9,1,0,2,0,6,0,0,3,8,0,0,7,0,0,5,0,0,0,5,0,1,0,8,2,6,4}
SimplepuzzlePROB[40]={0,4,0,7,0,5,0,0,2,5,6,7,1,2,8,0,0,3,1,2,8,0,9,0,5,7,6,7,0,0,5,3,6,0,8,4,3,8,0,0,0,0,0,0,0,2,0,4,0,0,7,3,0,1,8,0,0,6,7,1,4,2,9,0,1,2,8,0,0,6,0,7,6,7,9,2,4,3,0,0,8}
SimplepuzzlePROB[41]={3,9,0,2,5,6,1,4,7,7,5,1,3,0,4,9,0,6,4,2,0,0,9,7,8,5,0,0,4,3,8,1,0,0,0,2,8,7,2,0,4,0,0,1,0,6,1,5,0,0,3,4,0,8,0,0,7,4,0,0,2,0,0,2,0,0,9,0,8,0,6,1,1,6,9,0,3,2,0,0,0}
SimplepuzzlePROB[42]={3,4,0,2,0,0,6,9,1,0,0,6,0,0,4,5,2,7,5,7,2,9,1,0,0,8,0,1,6,3,0,2,9,0,0,8,4,0,7,0,0,0,9,0,0,2,8,0,3,0,7,1,0,0,6,2,4,0,0,1,3,5,9,8,9,1,6,0,3,0,0,4,7,0,5,4,9,0,8,1,0}
SimplepuzzlePROB[43]={5,0,4,8,7,3,1,2,0,3,6,8,0,0,0,7,0,0,7,0,0,0,5,0,8,3,0,9,2,7,6,3,8,4,0,5,0,0,6,4,2,0,0,7,0,1,4,3,7,9,0,0,8,0,6,7,5,2,8,0,3,0,0,0,3,0,5,0,7,0,0,8,2,8,0,3,1,4,5,6,0}
SimplepuzzlePROB[44]={4,5,0,0,0,0,3,1,2,0,7,9,0,1,0,6,8,5,0,1,3,5,8,2,4,9,7,0,0,4,0,0,8,2,0,1,1,8,2,4,0,5,0,0,3,0,6,5,0,3,1,8,0,4,8,2,0,1,4,0,0,0,0,3,0,7,6,0,9,0,2,0,0,9,1,8,2,0,7,0,6}
SimplepuzzlePROB[45]={7,3,1,0,0,6,8,9,5,2,0,0,3,0,0,0,1,4,0,0,9,7,5,0,2,0,3,0,1,3,6,7,0,4,0,0,0,6,2,4,8,3,0,0,1,4,7,8,1,0,9,5,0,6,0,0,0,0,6,7,3,4,9,6,8,0,9,0,0,0,5,2,0,9,4,0,1,2,6,8,0}
SimplepuzzlePROB[46]={1,0,0,2,8,0,3,5,0,0,2,9,0,0,3,4,6,1,3,0,5,4,6,0,8,0,0,4,8,0,0,0,5,7,1,2,7,0,2,1,4,8,0,3,5,0,0,0,3,2,7,0,0,8,0,4,7,0,0,6,2,0,0,0,3,1,8,7,2,5,9,4,0,0,8,0,3,4,1,7,0}
SimplepuzzlePROB[47]={5,0,9,0,8,7,0,0,4,6,0,4,0,3,0,8,9,7,1,0,8,2,9,4,0,3,6,8,1,7,3,5,0,6,0,0,9,6,3,0,0,1,0,7,5,2,0,0,7,0,0,3,8,1,0,0,0,0,7,3,9,1,0,0,9,1,4,0,6,0,5,8,0,0,2,0,0,8,4,6,3}
SimplepuzzlePROB[48]={0,2,5,0,3,9,6,7,1,1,6,0,0,4,0,0,0,3,0,0,9,7,0,6,0,0,4,7,5,3,1,6,0,2,9,8,9,0,1,3,2,0,4,6,5,6,4,2,0,9,8,1,3,7,0,0,8,0,0,0,3,0,9,0,0,0,9,5,0,8,1,6,3,0,0,4,8,0,7,0,0}
SimplepuzzlePROB[49]={3,4,8,7,5,0,0,1,0,0,0,1,0,0,8,0,5,0,0,7,9,0,0,0,8,0,4,9,5,6,8,4,1,7,2,3,8,2,4,6,0,0,1,0,5,0,0,0,9,2,5,0,4,0,0,8,5,0,9,7,0,6,1,6,9,7,3,1,4,0,0,0,1,3,2,0,0,6,4,0,9}
SimplepuzzlePROB[50]={7,0,0,8,2,0,6,4,0,4,0,6,3,0,9,5,2,8,5,0,2,1,0,4,7,3,9,0,7,1,0,0,0,0,9,0,0,9,8,0,5,0,1,6,4,0,5,4,0,8,1,2,7,3,9,2,0,7,0,8,3,1,6,8,0,0,6,0,3,0,0,2,1,0,0,0,0,0,4,8,7}
SimplepuzzlePROB[51]={0,0,0,7,0,1,2,3,0,2,1,6,0,0,0,0,7,8,7,0,4,0,0,8,9,0,1,0,8,5,3,2,4,7,6,0,9,6,0,1,7,5,0,4,3,0,0,0,6,0,9,5,1,0,6,0,8,5,3,7,0,0,4,4,7,1,0,9,6,0,2,0,5,0,3,0,1,0,6,8,7}
SimplepuzzlePROB[52]={7,3,0,0,5,0,9,1,4,5,0,9,2,0,7,6,0,0,8,0,6,1,9,0,2,7,0,0,0,7,9,2,1,3,0,8,3,0,4,7,8,6,0,5,0,2,0,1,5,0,0,7,0,6,0,6,0,4,0,0,0,2,0,0,0,8,3,0,9,5,6,1,1,7,5,8,6,0,0,3,9}
SimplepuzzlePROB[53]={8,0,7,9,6,1,5,3,0,0,5,1,0,8,3,6,0,9,0,0,9,0,4,0,0,0,7,0,8,5,4,3,0,2,0,6,9,2,0,5,7,0,0,8,0,7,0,6,8,1,2,4,0,5,4,0,2,1,5,0,0,6,3,6,0,8,3,0,7,0,5,0,0,1,3,0,0,4,7,0,8}
SimplepuzzlePROB[54]={8,0,0,0,0,1,0,3,0,2,3,0,8,4,5,9,0,1,4,6,1,0,3,0,0,0,7,0,0,8,4,1,3,2,7,0,0,0,2,0,7,0,8,4,6,7,4,5,2,0,6,0,1,9,0,2,4,0,5,7,0,9,8,0,7,0,6,9,8,0,2,4,0,0,0,1,2,4,0,5,3}
SimplepuzzlePROB[55]={7,1,5,0,0,2,4,0,0,9,3,2,0,4,1,0,5,6,4,8,0,0,0,9,1,0,0,8,4,7,9,0,6,0,3,0,1,6,0,0,5,0,0,8,2,5,0,3,0,7,0,0,0,9,6,0,4,3,0,5,2,7,8,0,7,0,6,9,4,3,1,5,0,5,0,2,8,0,9,6,0}
SimplepuzzlePROB[56]={8,0,0,9,4,0,0,3,2,5,0,9,2,3,8,0,0,0,0,0,3,7,1,6,0,5,0,3,2,8,6,0,9,0,1,0,0,9,1,5,8,0,3,2,7,4,7,5,3,2,1,6,9,8,0,0,2,0,0,7,9,0,3,7,3,6,0,0,0,4,0,0,0,5,0,8,6,3,0,0,1}
SimplepuzzlePROB[57]={2,0,4,5,6,7,9,8,0,0,7,5,0,0,0,0,0,6,0,6,0,9,2,4,0,0,0,8,4,6,7,1,0,5,0,0,1,2,9,6,0,0,4,3,7,7,5,3,2,0,9,6,1,0,0,8,7,0,5,2,3,0,1,4,3,0,8,9,6,0,0,0,5,9,2,0,7,1,0,0,0}
SimplepuzzlePROB[58]={7,0,5,3,9,4,6,0,0,9,0,0,0,0,2,3,0,5,6,0,3,1,0,0,7,2,9,0,0,7,0,0,6,8,3,0,8,3,0,5,4,7,9,0,0,4,6,9,0,0,1,2,5,7,5,7,0,2,6,0,4,0,3,2,0,4,0,1,0,0,9,6,0,9,6,0,5,0,1,7,2}
SimplepuzzlePROB[59]={7,0,0,4,8,6,0,0,0,4,0,8,1,3,0,7,6,2,3,1,6,0,0,2,0,9,0,6,8,0,0,9,0,5,1,0,2,0,1,0,0,0,6,3,0,9,3,5,6,7,1,8,0,4,1,2,3,0,6,7,0,4,5,0,0,9,0,0,5,0,7,6,0,6,7,9,1,4,0,8,0}
SimplepuzzlePROB[60]={8,0,0,5,7,9,6,4,0,5,0,0,0,6,3,8,9,0,0,0,6,8,4,0,3,5,7,9,7,5,0,3,0,0,0,6,0,0,1,6,0,0,2,7,9,0,8,0,0,0,4,0,0,3,2,1,9,4,5,0,7,3,0,3,0,8,0,2,7,1,6,4,7,6,0,0,1,0,9,2,5}
SimplepuzzlePROB[61]={6,0,0,7,3,0,1,9,8,4,0,9,0,8,5,3,0,0,0,1,3,2,6,9,0,0,4,1,4,2,6,5,0,0,0,9,0,3,8,9,0,0,0,2,6,0,0,0,0,4,2,0,1,0,2,8,1,5,7,0,9,4,0,0,0,7,4,0,0,6,8,0,3,6,4,8,9,1,0,5,7}
SimplepuzzlePROB[62]={0,0,3,1,2,0,7,0,9,0,7,0,6,0,5,0,3,0,9,6,1,0,7,0,0,0,4,8,4,0,5,1,0,3,7,2,6,2,5,3,8,0,4,0,1,1,0,0,0,0,9,8,5,6,7,0,2,9,3,0,0,0,5,4,5,8,7,6,0,9,1,3,0,9,0,4,0,1,0,8,0}
SimplepuzzlePROB[63]={0,5,9,0,1,7,3,0,2,0,0,0,5,8,0,0,1,0,0,8,1,4,2,0,0,7,0,0,7,0,1,0,5,2,0,3,6,0,0,8,7,2,5,0,1,5,1,2,3,0,6,8,9,0,0,3,8,7,5,4,1,2,0,7,4,5,2,0,1,0,0,8,1,2,0,0,0,8,7,5,0}
SimplepuzzlePROB[64]={0,7,1,0,6,0,3,2,0,6,0,4,0,0,0,8,9,0,0,2,5,9,4,3,1,7,6,3,4,0,0,8,5,0,6,0,0,8,6,0,7,4,0,5,9,7,0,2,0,9,0,4,0,8,0,1,0,8,0,9,6,0,0,2,0,8,0,0,7,9,1,3,0,9,3,0,1,2,5,8,7}
SimplepuzzlePROB[65]={0,0,0,0,2,0,8,1,6,2,6,0,0,0,1,5,4,0,8,1,0,6,4,3,7,0,9,0,5,6,1,7,2,9,0,8,7,9,0,3,0,0,6,0,1,3,0,1,5,6,0,0,0,0,1,0,0,4,3,6,0,0,0,6,3,0,2,5,8,1,9,7,0,2,0,9,1,7,3,0,4}
SimplepuzzlePROB[66]={0,0,3,0,9,7,0,6,0,9,1,2,4,8,6,0,5,3,0,7,4,0,2,0,9,1,8,4,8,0,5,0,1,0,0,7,5,3,1,0,7,0,8,4,0,2,9,7,6,0,8,1,0,5,0,0,9,2,5,3,0,8,1,1,2,5,0,6,0,3,0,9,0,0,8,0,0,0,0,0,4}
SimplepuzzlePROB[67]={0,0,0,0,1,0,0,0,9,0,7,8,2,3,0,1,0,4,6,3,1,8,9,0,2,5,7,0,2,0,9,5,0,6,7,1,0,6,7,3,4,0,9,0,5,8,5,0,6,7,0,3,0,0,2,9,0,4,8,7,0,0,0,7,0,5,1,2,3,4,9,0,3,1,4,0,0,0,0,2,8}
SimplepuzzlePROB[68]={0,1,0,4,2,8,7,6,5,8,2,0,9,0,5,3,1,0,7,5,4,1,6,0,2,8,0,0,0,7,0,0,2,5,4,8,0,4,8,0,5,0,0,0,6,5,3,9,0,0,4,0,0,2,0,7,5,2,1,0,8,9,3,0,8,0,5,0,0,6,2,0,6,9,0,0,0,7,0,5,1}
SimplepuzzlePROB[69]={0,0,1,0,0,4,6,0,0,2,8,5,0,0,6,0,7,4,4,9,6,7,5,1,2,3,8,5,7,3,6,8,0,9,4,1,0,6,8,4,0,7,0,0,2,1,2,0,0,3,9,0,0,0,6,4,9,2,0,5,0,1,3,0,1,0,9,4,3,5,0,7,0,0,0,0,6,0,0,0,9}
SimplepuzzlePROB[70]={1,2,0,8,9,7,4,6,5,0,0,4,0,6,0,0,0,9,8,9,6,3,5,0,0,7,0,2,0,5,0,0,0,6,0,7,6,4,0,5,2,0,0,0,3,9,0,1,7,4,6,0,8,0,0,1,9,0,7,5,3,0,8,7,0,8,4,3,0,1,9,0,3,6,2,1,8,0,0,0,4}
SimplepuzzlePROB[71]={9,6,1,4,5,0,3,7,8,4,0,5,7,8,0,0,0,9,0,7,8,0,0,9,0,2,5,0,5,0,0,9,0,8,0,4,1,0,9,0,0,8,2,0,7,0,3,2,5,0,4,1,0,6,7,9,0,0,0,6,0,8,0,5,1,0,0,4,7,0,6,2,2,8,0,9,1,5,7,4,0}
SimplepuzzlePROB[72]={0,9,2,0,0,7,6,4,3,0,0,7,0,3,6,2,5,0,3,0,0,0,9,5,0,0,0,7,0,3,1,4,0,0,8,0,8,0,9,5,6,3,4,0,1,6,0,4,7,8,9,5,3,0,4,7,0,6,2,1,3,9,0,0,3,8,9,7,0,1,0,5,0,6,1,0,5,0,0,0,4}
SimplepuzzlePROB[73]={0,0,0,0,2,0,9,4,0,6,1,9,3,4,7,0,8,0,2,4,8,0,0,5,0,1,0,9,2,1,4,5,6,0,7,3,4,0,0,7,3,8,0,0,9,8,7,3,1,9,0,4,0,0,3,8,4,0,0,9,6,0,0,7,0,0,5,1,4,2,3,0,0,5,0,6,0,3,7,9,0}
SimplepuzzlePROB[74]={2,0,0,0,5,0,0,0,9,8,4,0,1,9,3,7,6,2,9,0,0,0,0,4,0,5,1,1,2,6,0,7,8,0,9,3,0,0,4,3,0,9,5,0,6,0,9,3,0,0,1,0,7,8,3,7,0,0,1,5,9,2,4,6,0,0,0,4,2,1,0,7,0,0,2,9,3,7,6,0,5}
SimplepuzzlePROB[75]={5,1,8,6,9,3,0,2,4,3,7,0,2,4,5,6,8,1,2,0,4,8,7,1,0,0,0,9,4,2,3,5,8,0,0,0,8,0,0,7,1,4,0,0,2,0,0,1,0,0,0,8,0,3,0,2,7,5,0,9,0,6,0,0,0,0,0,2,6,3,9,0,6,9,0,0,8,0,2,1,5}
SimplepuzzlePROB[76]={5,6,3,0,0,0,4,1,0,7,0,8,3,0,4,5,9,0,9,4,1,8,0,0,2,0,7,1,7,2,0,6,3,0,0,4,8,9,6,0,0,2,0,7,0,4,3,0,0,9,8,1,0,2,0,0,9,4,2,0,8,0,3,2,8,7,0,3,5,6,0,0,0,0,0,6,0,1,7,2,9}
SimplepuzzlePROB[77]={9,3,7,0,0,4,6,1,2,0,1,8,3,6,9,7,5,0,6,4,0,7,0,0,0,0,3,1,6,2,0,3,0,5,8,0,3,0,0,0,9,5,1,2,7,0,5,9,2,8,0,4,3,6,0,0,6,0,0,0,9,4,0,0,2,1,9,4,0,3,0,0,0,0,3,1,7,8,2,0,0}
SimplepuzzlePROB[78]={5,0,4,8,0,2,7,1,6,9,6,1,0,7,0,2,8,0,0,7,2,0,0,6,3,4,0,1,0,7,5,0,0,0,2,8,0,0,5,0,0,7,1,0,0,6,8,3,2,1,0,0,7,0,3,1,9,7,4,8,6,5,0,0,5,6,0,0,1,8,3,0,0,2,8,0,3,0,4,9,0}
SimplepuzzlePROB[79]={9,1,0,5,0,0,6,4,8,0,7,0,4,6,0,3,0,9,2,0,0,0,3,9,5,0,7,6,0,0,0,5,0,2,3,0,0,0,0,2,0,6,7,0,5,0,2,7,3,1,8,4,9,6,7,0,9,0,4,0,8,6,2,0,8,2,0,0,3,9,0,4,4,5,0,9,0,2,1,7,3}
SimplepuzzlePROB[80]={7,0,1,3,0,4,0,0,8,3,8,0,7,5,0,6,0,0,2,9,5,6,0,0,4,0,0,0,0,0,9,2,5,3,0,1,1,0,8,4,7,6,9,5,0,5,0,9,0,1,3,7,0,6,0,0,2,0,6,7,8,9,3,0,0,6,2,0,8,1,7,0,0,0,3,1,4,9,2,6,0}
SimplepuzzlePROB[81]={6,0,4,0,0,0,1,3,0,3,7,2,0,6,0,4,8,5,0,8,1,4,3,2,0,7,6,1,0,7,5,9,8,0,2,4,8,0,0,0,4,0,6,5,0,4,3,5,2,0,6,8,0,1,9,0,8,0,0,0,7,0,3,0,0,6,0,0,5,0,4,9,2,0,3,7,0,0,5,6,8}
SimplepuzzlePROB[82]={0,8,0,0,0,9,2,3,6,6,3,2,7,1,8,9,0,5,0,5,0,3,0,0,1,7,0,4,0,0,1,9,0,0,0,2,3,2,0,6,8,4,7,1,0,0,0,9,0,5,0,8,6,4,0,9,0,4,6,1,0,0,7,5,1,6,0,0,2,4,0,3,2,4,7,0,3,0,0,9,1}
SimplepuzzlePROB[83]={2,1,5,4,8,0,0,0,0,9,8,0,0,5,3,7,0,0,7,3,0,6,0,2,0,8,1,5,4,0,7,0,0,2,1,9,0,2,0,0,1,9,3,0,8,1,0,8,2,3,0,0,0,0,3,7,9,0,0,5,1,6,0,8,6,0,0,7,1,4,5,3,4,0,1,3,0,6,0,9,7}
SimplepuzzlePROB[84]={0,4,0,1,0,5,0,0,8,0,1,2,9,0,0,0,7,6,0,0,7,6,2,3,1,4,0,6,3,0,7,8,0,0,0,2,0,0,4,2,5,0,3,8,1,1,0,8,4,3,9,7,6,0,4,0,1,8,6,7,9,2,0,2,0,9,0,1,4,0,0,0,8,7,3,5,0,2,0,0,4}
SimplepuzzlePROB[85]={4,0,5,6,0,2,3,8,7,0,0,9,5,3,4,6,2,0,3,2,0,1,8,0,0,5,0,5,9,3,4,0,1,0,6,2,0,4,0,0,6,3,9,1,5,1,6,8,0,5,0,0,0,0,9,5,1,7,0,6,0,3,0,6,7,0,0,0,0,5,9,0,0,0,4,9,2,0,1,0,6}
SimplepuzzlePROB[86]={0,5,9,0,2,0,0,8,6,8,6,7,0,4,0,0,2,0,2,0,1,7,0,6,5,4,9,5,8,0,0,9,2,0,0,0,7,9,0,0,1,0,6,5,2,1,4,0,0,0,0,9,0,0,9,0,5,0,7,0,8,6,3,6,0,8,2,0,9,4,1,5,3,0,4,6,5,8,2,9,0}
SimplepuzzlePROB[87]={4,0,3,2,1,0,0,5,9,0,2,9,7,0,5,1,8,0,5,1,7,9,4,0,0,3,0,9,7,8,6,2,1,3,0,0,0,4,2,5,7,0,9,0,0,0,0,0,8,9,0,0,0,1,0,3,0,1,8,7,0,0,6,8,6,0,0,5,9,0,2,7,7,9,5,0,6,2,0,0,3}
SimplepuzzlePROB[88]={9,8,0,5,0,0,3,6,1,0,6,5,3,1,0,0,7,4,0,4,1,0,0,6,5,0,2,4,0,6,0,9,5,7,3,8,0,0,0,0,0,1,4,5,0,8,5,3,0,6,7,2,0,9,1,7,0,0,4,0,0,0,0,0,2,0,1,7,0,6,0,3,0,3,4,9,5,2,1,8,7}
SimplepuzzlePROB[89]={3,0,0,1,8,0,0,2,5,0,1,5,2,0,0,8,3,6,0,0,8,0,7,3,0,0,0,2,5,6,0,3,1,0,8,7,1,8,4,7,0,5,6,9,3,0,0,7,6,0,0,2,5,0,5,0,0,3,6,9,0,0,0,4,6,1,8,0,2,3,7,0,0,0,3,4,0,7,5,6,2}
SimplepuzzlePROB[90]={1,0,6,9,5,0,7,4,2,9,0,0,8,2,0,0,0,0,0,2,0,0,6,7,9,0,0,0,6,9,3,4,5,2,1,7,2,7,5,6,1,0,0,0,8,3,0,0,2,7,8,5,9,0,7,3,1,0,8,0,6,2,9,6,9,0,0,0,2,1,0,0,4,0,2,1,9,6,0,0,0}
SimplepuzzlePROB[91]={9,0,4,0,5,0,0,7,1,0,1,0,0,9,2,8,0,4,8,7,0,3,0,4,0,0,6,2,0,6,0,3,5,4,1,7,3,5,8,0,7,1,0,2,9,0,4,0,2,6,9,5,0,0,4,0,3,0,2,7,1,9,0,0,8,1,0,0,0,7,0,2,0,0,9,0,8,6,3,4,5}
SimplepuzzlePROB[92]={0,7,0,8,0,2,6,0,3,0,0,8,3,7,6,0,5,0,0,3,6,4,0,0,8,7,0,6,5,9,2,4,1,0,8,0,4,0,2,7,8,0,0,9,6,7,0,0,6,9,0,2,0,1,0,4,7,5,0,8,1,0,0,0,0,1,9,3,4,0,2,0,3,0,5,0,2,7,4,6,8}
SimplepuzzlePROB[93]={7,0,6,0,9,5,3,4,8,4,5,3,0,8,0,1,0,2,9,0,0,4,3,0,0,5,6,0,0,9,0,1,4,0,3,5,0,4,2,5,6,0,9,8,7,0,8,5,2,7,9,0,0,1,8,3,0,9,0,7,0,0,0,0,0,7,0,0,8,5,1,0,0,6,0,3,0,1,8,7,9}
SimplepuzzlePROB[94]={9,5,4,6,0,3,8,2,0,0,8,1,5,2,0,0,9,0,2,3,6,7,0,0,5,4,1,0,4,0,0,6,7,0,0,0,5,6,0,3,0,0,7,8,0,1,7,8,0,4,0,3,0,0,6,9,3,4,0,2,0,7,8,0,2,7,1,3,8,0,5,6,8,0,5,9,0,0,0,0,2}
SimplepuzzlePROB[95]={4,0,7,9,1,0,0,3,5,5,0,9,6,3,0,0,4,0,1,0,6,0,5,0,7,9,0,0,6,5,1,0,9,2,0,0,0,9,1,7,0,5,8,0,4,7,4,2,8,0,0,5,1,0,6,1,0,3,9,0,0,5,7,0,5,3,0,7,6,9,8,1,0,7,0,5,8,0,0,0,6}
SimplepuzzlePROB[96]={6,1,0,8,0,0,2,9,4,8,2,0,4,3,0,0,7,0,9,0,0,0,6,1,8,3,5,5,0,0,3,2,0,0,0,7,3,0,2,0,1,0,4,5,0,4,0,7,6,9,0,3,1,2,7,4,9,0,8,0,1,0,3,0,5,6,9,0,3,7,2,8,2,3,0,1,0,6,0,0,0}
SimplepuzzlePROB[97]={3,0,1,0,0,2,4,0,0,6,0,8,1,0,0,0,3,5,5,0,0,0,6,0,0,1,8,4,5,9,0,0,0,0,7,1,8,3,7,0,1,6,5,2,9,0,0,6,5,0,0,8,4,0,9,0,2,6,3,7,0,0,0,0,0,5,9,4,1,3,8,2,1,4,3,2,8,5,7,0,6}
SimplepuzzlePROB[98]={3,0,0,0,7,0,0,0,4,2,0,4,0,0,9,5,0,7,8,0,6,2,5,4,0,3,9,1,6,3,7,0,5,0,0,8,9,2,0,0,4,3,0,7,5,0,0,7,8,0,6,3,2,1,0,5,0,0,6,0,0,4,3,6,3,9,4,0,8,0,0,2,4,8,2,5,3,0,0,1,6}
SimplepuzzlePROB[99]={7,4,2,0,3,1,5,9,8,6,9,0,8,2,0,4,0,0,0,8,3,5,9,0,7,0,2,0,1,0,7,0,3,2,5,6,3,5,4,0,1,0,0,7,0,2,0,6,0,0,0,3,0,1,0,0,7,0,6,0,9,3,4,0,3,1,0,5,0,6,8,7,0,6,8,0,0,9,0,2,5}
SimplepuzzlePROB[100]={7,0,0,0,2,4,9,1,8,1,4,9,8,3,7,0,2,5,2,0,0,1,9,5,3,0,0,0,2,0,0,4,1,8,6,7,0,1,0,7,5,9,4,0,0,4,0,0,2,8,6,5,9,1,0,0,0,5,7,8,0,4,6,5,7,0,9,6,0,0,0,0,6,0,0,4,1,3,0,0,0}
SimplepuzzlePROB[101]={6,0,4,0,0,8,3,7,0,8,5,0,7,0,0,0,0,0,0,1,7,3,5,4,6,0,9,9,7,8,5,3,2,4,1,6,0,0,6,8,4,7,5,9,2,0,4,2,1,9,6,0,3,0,7,0,9,4,8,0,0,2,3,0,0,1,0,7,0,0,5,0,3,0,0,0,2,0,7,6,0}
SimplepuzzlePROB[102]={0,1,9,6,4,0,8,3,7,0,7,5,8,2,0,6,9,0,0,4,8,9,0,7,0,1,5,8,2,4,7,0,3,0,0,1,1,6,0,5,0,4,0,2,9,0,0,0,1,0,2,0,8,0,0,0,1,0,7,6,9,0,2,7,3,6,0,0,9,0,4,0,9,5,2,0,0,8,3,7,0}
SimplepuzzlePROB[103]={5,2,0,0,3,0,1,0,0,0,8,0,2,0,9,3,6,0,4,3,0,0,1,7,9,2,8,8,0,2,0,9,0,7,0,3,3,6,1,4,7,5,2,8,0,7,9,5,0,0,0,0,0,1,0,5,3,7,0,0,0,0,6,2,1,0,8,0,0,5,9,7,6,7,8,9,5,0,4,0,2}
SimplepuzzlePROB[104]={0,0,5,1,0,0,0,9,6,7,0,6,3,8,0,5,0,0,3,0,0,9,6,5,0,4,0,5,4,7,0,0,9,6,1,3,1,6,0,0,0,7,2,0,9,9,0,2,0,1,6,0,8,7,0,0,3,2,0,8,1,7,4,8,0,4,7,5,0,9,6,0,2,0,9,6,4,1,8,0,0}
SimplepuzzlePROB[105]={0,4,0,2,5,8,9,7,6,0,9,0,6,0,7,0,4,8,8,6,0,0,0,4,0,1,0,9,0,0,0,8,3,0,5,4,0,1,0,0,4,2,0,6,9,4,2,5,0,7,6,8,0,0,2,3,0,0,6,1,4,0,5,7,8,1,4,2,5,0,9,0,0,5,0,8,3,0,0,2,7}
SimplepuzzlePROB[106]={9,0,0,0,0,5,2,4,1,0,7,6,2,0,1,5,8,0,2,1,5,8,4,3,0,0,0,1,6,2,4,0,7,0,0,5,0,0,0,3,0,0,0,7,4,7,3,0,0,5,9,8,2,6,5,4,8,6,7,2,0,1,0,6,2,1,0,0,0,7,0,8,0,9,0,5,1,8,0,0,2}
SimplepuzzlePROB[107]={7,4,2,3,0,9,0,0,6,8,9,1,0,2,6,7,4,0,0,0,0,7,0,1,8,9,0,0,3,6,2,7,4,0,8,9,1,0,4,9,0,0,0,0,0,0,0,9,0,6,8,0,0,5,6,1,3,8,0,5,0,7,4,4,2,8,6,3,0,9,0,1,9,5,7,0,0,0,3,6,0}
SimplepuzzlePROB[108]={0,0,0,3,2,0,0,0,5,5,2,3,0,8,0,6,0,7,0,8,0,5,7,6,9,0,0,6,9,4,7,1,2,0,5,8,0,0,0,4,0,5,0,0,0,0,7,5,9,3,0,4,2,6,0,0,6,0,9,0,8,7,4,7,0,8,6,0,0,2,1,9,2,1,9,8,4,7,5,0,3}
SimplepuzzlePROB[109]={5,9,6,3,1,0,2,0,7,0,4,2,9,6,5,3,8,0,8,1,3,7,2,0,0,6,9,0,2,8,0,7,0,4,0,5,0,3,0,8,0,2,0,1,0,1,5,7,4,0,0,9,0,0,0,8,0,5,0,0,6,7,2,0,7,1,6,9,0,8,5,0,0,0,0,0,8,7,1,0,3}
SimplepuzzlePROB[110]={4,3,6,2,9,0,0,5,0,8,0,0,0,0,1,0,3,0,1,2,5,0,4,0,8,9,0,0,1,8,9,6,5,0,0,4,6,9,0,4,0,7,5,1,0,3,5,4,1,0,2,9,6,0,0,4,0,5,7,0,1,8,9,0,8,1,3,2,4,6,7,0,0,6,0,8,0,0,0,0,3}
SimplepuzzlePROB[111]={0,0,0,6,2,8,0,5,3,0,8,0,5,0,0,7,0,4,9,6,5,4,7,3,0,2,1,7,0,0,3,0,0,5,1,0,5,0,1,0,9,2,0,0,0,0,9,6,1,8,5,2,4,0,0,3,2,9,0,7,0,8,0,6,5,0,8,3,4,1,7,0,0,7,4,2,0,1,0,9,6}
SimplepuzzlePROB[112]={2,6,7,4,0,1,3,0,8,0,1,0,3,8,7,6,0,2,0,3,4,9,0,0,1,0,5,3,9,8,0,1,6,0,2,0,7,0,6,2,3,0,9,8,0,0,0,0,0,9,5,0,0,6,4,2,1,0,0,0,0,0,0,0,8,9,5,2,3,4,1,7,5,0,3,0,0,8,2,6,9}
SimplepuzzlePROB[113]={0,6,0,4,8,2,0,9,0,5,0,7,0,6,1,0,4,2,0,2,0,3,0,0,8,0,6,8,7,1,6,2,0,0,5,9,0,5,0,1,4,0,0,0,3,0,4,0,5,9,7,0,0,8,4,3,2,7,0,6,9,0,5,0,1,5,8,3,9,2,6,0,0,0,0,2,0,4,7,3,1}
SimplepuzzlePROB[114]={0,4,1,0,6,2,5,9,3,5,3,6,4,0,8,2,0,1,0,2,9,3,0,0,4,8,0,0,0,0,1,0,5,0,0,8,1,5,7,9,0,4,3,6,2,9,0,0,2,0,6,7,1,0,0,9,3,0,2,7,0,0,4,0,1,5,6,0,9,0,3,7,0,7,8,0,1,3,0,0,0}
SimplepuzzlePROB[115]={0,4,0,0,1,3,6,0,8,3,9,1,0,2,8,0,0,0,2,6,0,0,0,4,0,1,9,7,3,0,1,0,5,0,4,6,8,2,5,7,0,6,0,9,3,0,1,6,2,3,9,5,0,0,6,0,3,0,5,0,9,0,2,1,7,4,3,9,2,0,6,5,0,0,0,0,6,7,4,0,0}
SimplepuzzlePROB[116]={7,0,5,3,8,4,6,0,0,9,0,6,1,5,7,0,8,0,3,0,0,0,0,2,1,7,5,0,5,9,0,6,1,3,2,7,1,0,2,0,0,0,5,6,0,6,8,0,2,3,5,9,0,0,0,6,0,0,4,8,2,0,9,0,9,3,0,0,6,0,1,0,2,7,4,0,1,3,0,5,6}
SimplepuzzlePROB[117]={0,1,2,9,0,0,8,0,3,0,0,0,6,8,2,1,0,0,8,4,6,1,0,3,2,5,0,0,2,1,5,0,0,6,8,0,5,9,7,0,1,0,0,0,0,0,8,3,4,2,0,0,1,5,1,3,5,2,9,8,7,0,6,0,0,0,3,0,4,0,2,1,0,6,4,7,5,0,3,9,8}
SimplepuzzlePROB[118]={9,0,0,6,2,0,7,3,8,6,1,3,8,0,5,9,4,2,7,0,0,0,4,0,0,0,0,0,5,1,0,8,9,6,7,3,0,6,8,0,3,0,1,9,4,3,7,9,1,6,4,0,0,0,0,0,6,7,0,8,0,2,9,8,0,7,4,1,2,3,0,6,5,0,0,0,0,6,8,0,0}
SimplepuzzlePROB[119]={0,1,9,4,8,6,0,2,5,2,0,0,0,3,7,6,9,8,8,3,0,0,0,0,7,4,1,6,0,2,0,0,4,0,8,0,0,0,0,7,0,8,4,5,0,0,5,0,6,1,9,0,7,3,0,6,4,0,7,3,5,1,0,1,0,7,0,6,0,0,3,4,5,8,0,2,4,1,9,6,0}
SimplepuzzlePROB[120]={9,0,0,2,4,8,5,3,6,3,0,5,9,1,6,8,7,2,8,6,2,7,0,3,4,0,0,7,1,8,4,0,0,0,0,5,0,2,0,0,0,5,9,0,0,5,9,0,0,6,0,7,0,8,4,0,6,0,3,2,1,0,7,1,5,7,0,9,0,2,0,3,0,3,9,1,8,0,0,0,0}
SimplepuzzlePROB[121]={0,6,7,0,0,0,1,8,5,3,0,0,5,1,0,0,0,4,0,5,9,7,4,0,3,0,0,2,4,8,6,0,3,0,0,0,9,1,0,4,0,5,0,0,7,7,3,0,8,9,0,2,4,6,5,0,3,1,6,7,0,2,8,6,2,1,0,0,0,7,5,3,8,0,4,0,5,2,0,9,1}
SimplepuzzlePROB[122]={8,0,0,2,4,7,6,1,0,0,2,0,6,0,1,0,9,7,0,0,7,9,0,5,2,4,0,0,1,2,8,6,4,3,7,0,0,4,0,7,0,3,0,5,2,0,0,0,5,2,0,4,0,1,4,0,0,1,9,0,0,0,6,6,7,1,3,0,8,0,0,4,2,9,3,4,0,6,1,8,5}
SimplepuzzlePROB[123]={8,0,3,0,9,5,7,0,2,0,0,9,1,0,3,0,5,4,4,0,0,6,0,0,3,9,0,0,0,6,8,1,7,5,4,9,5,8,1,0,0,0,0,0,7,9,7,4,0,6,2,1,0,8,6,3,7,9,8,4,0,1,0,1,4,8,2,5,0,9,0,3,2,9,5,0,0,0,0,0,0}
SimplepuzzlePROB[124]={6,0,4,0,0,0,2,0,0,0,1,8,3,4,2,9,0,6,3,0,5,6,9,0,1,4,7,0,5,6,0,0,7,3,0,9,9,0,1,4,0,5,7,2,0,8,7,0,1,3,9,0,6,5,0,0,7,0,8,4,5,0,0,1,0,0,2,5,0,6,0,0,5,4,3,0,0,6,8,9,2}
SimplepuzzlePROB[125]={4,3,6,0,8,5,0,0,0,0,1,0,9,4,6,0,3,0,0,0,7,3,2,1,4,8,6,8,0,5,0,0,9,3,2,0,9,7,2,8,3,4,0,0,0,3,6,1,5,7,2,0,0,8,1,0,3,0,5,8,6,0,0,7,0,9,0,6,0,2,5,4,6,5,0,0,9,0,0,0,3}
SimplepuzzlePROB[126]={9,5,0,8,4,0,7,2,3,7,2,0,0,0,1,0,4,0,4,8,6,0,7,0,9,0,1,2,0,0,0,3,7,1,9,8,0,3,9,0,8,0,5,7,0,0,1,7,5,2,0,6,0,4,0,7,0,4,6,0,0,0,9,0,6,0,3,9,8,2,1,0,3,9,8,0,0,2,0,6,5}
SimplepuzzlePROB[127]={0,4,7,0,1,0,6,0,0,8,1,9,2,0,0,5,0,4,5,0,2,0,3,9,0,8,7,1,9,3,0,0,0,7,4,6,6,0,5,0,9,4,8,0,1,2,8,4,0,7,6,0,5,9,0,0,0,9,8,0,2,7,5,7,2,0,0,4,5,9,1,0,0,0,1,7,0,0,4,6,0}
SimplepuzzlePROB[128]={1,4,3,9,5,0,2,0,8,8,5,7,0,1,2,0,9,4,0,6,0,0,8,4,0,5,0,0,9,4,5,3,8,7,2,0,7,2,8,6,0,1,3,4,0,0,3,1,0,0,0,8,6,9,0,0,0,8,6,0,0,1,0,0,0,0,4,0,9,0,0,7,2,8,0,0,7,5,4,3,6}
SimplepuzzlePROB[129]={4,0,3,9,0,0,5,0,7,0,1,0,0,0,3,6,8,9,8,0,2,5,6,0,1,3,0,0,7,0,2,3,5,9,1,0,1,0,8,6,0,0,7,0,2,9,2,5,0,0,0,0,6,3,2,4,0,0,8,0,0,7,5,3,0,6,7,5,4,2,9,1,7,0,1,3,9,2,0,0,0}
SimplepuzzlePROB[130]={9,0,3,4,7,6,0,0,1,2,0,4,0,0,3,0,6,0,6,1,7,8,5,0,3,0,4,0,6,9,0,0,0,0,4,5,3,0,0,1,0,5,0,0,6,5,7,0,6,4,0,0,0,2,0,3,6,5,9,4,7,2,8,7,0,8,3,6,0,4,5,0,0,9,5,0,2,8,0,1,3}
SimplepuzzlePROB[131]={0,0,5,3,0,8,6,4,7,0,1,6,4,9,7,5,2,0,0,0,7,6,2,5,1,3,0,5,0,2,7,0,9,4,0,1,1,0,0,0,4,0,3,0,6,0,0,0,5,3,0,0,7,0,4,0,0,2,8,3,7,9,0,2,5,0,9,7,6,8,1,4,0,0,8,0,0,0,2,6,3}
SimplepuzzlePROB[132]={2,6,4,0,0,9,0,5,0,8,0,3,0,5,4,7,0,6,0,1,0,0,0,6,9,4,8,9,5,1,0,3,2,8,6,0,0,2,6,5,9,8,1,3,4,4,3,0,0,0,0,2,9,5,0,8,0,0,4,7,5,0,0,6,7,0,0,0,3,0,8,2,1,0,9,2,8,0,6,0,0}
SimplepuzzlePROB[133]={2,4,0,5,8,0,3,7,6,0,8,0,0,0,4,0,2,1,7,1,3,0,2,0,8,0,4,4,0,2,3,0,0,5,1,9,0,3,5,2,6,9,7,4,8,0,9,0,4,1,0,0,6,3,0,2,0,6,0,3,0,0,7,3,0,1,0,4,2,0,0,0,6,0,8,0,9,7,4,3,0}
SimplepuzzlePROB[134]={2,8,0,0,0,1,6,0,7,0,4,0,7,0,0,0,0,0,0,0,7,2,8,0,9,3,1,0,0,0,4,0,9,0,0,3,9,3,8,0,0,0,4,2,0,7,6,4,8,2,3,0,9,5,1,7,0,9,4,5,8,0,2,4,2,5,6,1,8,0,7,9,0,9,6,3,7,0,5,1,0}
SimplepuzzlePROB[135]={6,3,8,2,9,4,0,0,1,1,2,0,0,0,0,3,6,0,0,7,4,3,1,0,0,9,0,0,8,2,1,5,0,4,0,0,4,6,1,7,2,3,5,8,9,9,5,0,6,4,8,2,0,0,8,0,0,0,0,2,0,4,0,0,0,6,4,7,5,1,0,0,0,4,5,0,6,1,0,7,3}
SimplepuzzlePROB[136]={5,1,3,2,8,4,0,0,7,7,0,0,0,6,9,1,2,0,9,2,0,7,0,1,5,0,0,0,7,1,6,2,3,9,0,0,8,5,2,0,0,7,0,6,1,0,0,9,0,0,5,0,7,2,1,0,0,3,0,8,2,5,4,3,0,8,0,0,0,7,0,6,0,0,5,1,7,6,8,3,9}
SimplepuzzlePROB[137]={9,8,3,0,0,0,5,0,7,0,5,0,7,0,1,2,9,3,7,1,2,0,5,3,8,6,4,8,0,5,3,0,2,1,4,0,1,0,0,0,0,8,0,0,0,2,3,7,1,9,4,6,0,0,0,7,0,6,0,5,9,0,8,0,9,8,2,1,7,4,0,6,0,2,6,0,4,0,3,0,0}
SimplepuzzlePROB[138]={9,8,0,3,1,7,0,4,0,3,5,7,0,0,0,1,6,0,2,0,0,0,6,9,3,7,0,4,9,3,7,0,0,8,1,0,6,2,5,8,3,1,0,0,0,1,7,8,6,0,4,5,2,3,7,3,0,0,4,8,6,0,1,0,4,0,1,5,6,0,0,2,0,6,0,2,0,0,0,0,4}
SimplepuzzlePROB[139]={2,4,1,0,9,7,0,6,0,0,7,3,6,8,2,0,5,0,8,5,6,3,0,0,0,2,7,0,1,0,7,0,6,8,3,4,3,2,0,4,0,0,5,9,0,0,0,0,9,0,5,7,1,0,6,9,0,8,5,4,1,7,0,0,8,5,2,7,0,6,4,0,7,3,0,0,0,9,0,8,0}
SimplepuzzlePROB[140]={9,3,5,0,0,0,1,0,2,7,0,4,8,0,2,6,9,5,0,6,8,5,1,9,3,0,0,6,0,2,7,4,1,0,0,0,0,7,3,0,0,0,4,1,9,4,8,0,0,0,5,7,2,0,0,5,9,0,0,7,8,6,4,0,4,0,9,5,8,2,0,0,0,2,0,4,6,3,0,5,1}
SimplepuzzlePROB[141]={0,8,4,0,0,1,0,9,6,5,1,6,7,0,2,3,0,8,0,9,3,0,0,4,5,0,0,9,2,8,5,0,3,1,6,0,0,3,1,0,6,8,9,5,7,6,5,7,4,0,0,8,2,0,0,6,2,9,3,0,4,0,5,0,0,0,0,4,0,0,1,2,8,4,5,0,2,0,7,0,0}
SimplepuzzlePROB[142]={0,8,6,0,2,4,0,1,3,5,2,3,7,1,9,0,0,8,0,7,0,0,0,8,2,9,0,0,0,4,8,7,0,9,6,2,0,9,0,3,0,0,0,0,7,1,6,7,9,5,0,0,3,4,8,1,5,0,6,3,4,0,0,6,0,2,0,0,7,5,8,0,7,4,9,0,8,0,3,2,0}
SimplepuzzlePROB[143]={7,0,5,3,6,9,0,0,1,0,0,0,1,0,7,3,8,0,3,0,0,0,0,4,5,0,6,0,5,0,6,0,0,9,0,2,0,7,3,9,0,0,8,0,4,0,2,8,5,4,3,6,1,0,1,3,6,7,0,5,4,9,8,5,4,2,8,0,1,0,6,0,0,0,7,4,3,0,1,2,5}
SimplepuzzlePROB[144]={1,8,5,6,4,3,2,9,7,4,9,2,0,1,5,0,6,8,3,0,7,9,0,2,4,0,1,9,3,0,0,2,4,7,8,0,7,2,1,8,0,0,9,0,0,0,0,4,0,9,7,0,2,0,0,4,9,2,0,8,0,0,3,0,0,0,5,0,0,0,4,0,5,1,3,4,0,0,0,7,2}
EASYpuzzleSOL[1]={1,5,6,3,4,2,7,8,9,3,8,4,9,7,1,2,6,5,2,7,9,5,6,8,4,1,3,6,2,3,8,5,4,1,9,7,5,4,1,6,9,7,3,2,8,7,9,8,2,1,3,6,5,4,9,1,5,7,3,6,8,4,2,4,3,2,1,8,9,5,7,6,8,6,7,4,2,5,9,3,1}
EASYpuzzleSOL[2]={5,7,3,1,6,4,9,2,8,9,6,4,8,5,2,7,1,3,2,8,1,9,3,7,4,6,5,3,1,7,6,4,8,2,5,9,4,5,6,3,2,9,1,8,7,8,9,2,5,7,1,6,3,4,6,2,5,4,9,3,8,7,1,1,3,9,7,8,6,5,4,2,7,4,8,2,1,5,3,9,6}
EASYpuzzleSOL[3]={4,1,2,3,8,6,7,9,5,6,7,9,5,4,2,8,1,3,3,5,8,1,7,9,2,4,6,7,8,3,4,6,1,5,2,9,9,6,1,7,2,5,3,8,4,2,4,5,9,3,8,6,7,1,1,3,6,2,9,7,4,5,8,5,2,4,8,1,3,9,6,7,8,9,7,6,5,4,1,3,2}
EASYpuzzleSOL[4]={2,3,5,1,6,4,9,8,7,8,6,9,2,7,5,3,4,1,4,7,1,9,8,3,6,5,2,5,8,6,4,2,9,1,7,3,1,4,7,6,3,8,5,2,9,3,9,2,5,1,7,8,6,4,9,1,4,7,5,6,2,3,8,7,5,8,3,9,2,4,1,6,6,2,3,8,4,1,7,9,5}
EASYpuzzleSOL[5]={7,3,8,9,1,6,2,5,4,1,6,5,4,3,2,9,7,8,2,9,4,5,8,7,3,1,6,5,7,1,6,4,3,8,2,9,3,8,2,7,9,1,4,6,5,6,4,9,8,2,5,1,3,7,4,2,7,1,6,8,5,9,3,9,5,3,2,7,4,6,8,1,8,1,6,3,5,9,7,4,2}
EASYpuzzleSOL[6]={1,2,5,3,9,8,4,7,6,8,3,6,1,7,4,5,2,9,4,7,9,5,6,2,8,1,3,5,9,8,7,4,3,2,6,1,2,6,1,9,8,5,3,4,7,7,4,3,2,1,6,9,5,8,6,5,2,8,3,7,1,9,4,3,1,4,6,5,9,7,8,2,9,8,7,4,2,1,6,3,5}
EASYpuzzleSOL[7]={9,3,4,5,6,8,2,7,1,7,1,6,3,2,4,9,8,5,5,8,2,7,1,9,4,3,6,2,4,7,1,3,5,8,6,9,3,5,8,6,9,2,7,1,4,1,6,9,8,4,7,3,5,2,8,2,5,9,7,6,1,4,3,6,9,3,4,8,1,5,2,7,4,7,1,2,5,3,6,9,8}
EASYpuzzleSOL[8]={4,8,7,5,2,6,3,1,9,9,1,2,7,4,3,5,8,6,6,5,3,9,8,1,4,7,2,5,4,1,2,7,9,6,3,8,2,6,8,3,1,4,9,5,7,3,7,9,8,6,5,1,2,4,7,9,4,1,3,8,2,6,5,8,3,5,6,9,2,7,4,1,1,2,6,4,5,7,8,9,3}
EASYpuzzleSOL[9]={8,1,4,6,7,9,5,2,3,2,9,7,5,3,4,8,1,6,6,5,3,2,1,8,7,4,9,9,8,5,3,4,1,6,7,2,1,4,6,7,9,2,3,5,8,3,7,2,8,5,6,4,9,1,5,2,1,4,8,3,9,6,7,7,6,8,9,2,5,1,3,4,4,3,9,1,6,7,2,8,5}
EASYpuzzleSOL[10]={7,6,3,5,1,4,2,8,9,9,8,1,7,2,6,5,3,4,2,5,4,3,8,9,6,1,7,6,1,7,4,3,8,9,2,5,5,3,9,6,7,2,8,4,1,8,4,2,9,5,1,3,7,6,3,2,6,1,9,7,4,5,8,1,9,5,8,4,3,7,6,2,4,7,8,2,6,5,1,9,3}
EASYpuzzleSOL[11]={6,1,9,2,7,4,3,8,5,5,4,3,6,9,8,2,1,7,8,2,7,3,1,5,4,9,6,2,9,4,5,8,6,7,3,1,7,6,1,9,4,3,8,5,2,3,5,8,7,2,1,6,4,9,9,7,5,8,3,2,1,6,4,4,8,2,1,6,9,5,7,3,1,3,6,4,5,7,9,2,8}
EASYpuzzleSOL[12]={9,8,5,6,3,7,4,1,2,7,2,3,5,4,1,9,6,8,1,6,4,9,2,8,3,7,5,6,7,2,4,1,5,8,3,9,3,5,9,8,6,2,1,4,7,4,1,8,7,9,3,2,5,6,2,4,7,3,8,6,5,9,1,8,3,6,1,5,9,7,2,4,5,9,1,2,7,4,6,8,3}
EASYpuzzleSOL[13]={8,7,4,2,9,1,6,3,5,3,6,1,4,5,7,8,9,2,5,2,9,3,8,6,7,4,1,2,3,7,8,1,9,4,5,6,4,5,6,7,3,2,9,1,8,9,1,8,6,4,5,2,7,3,6,9,3,5,7,8,1,2,4,1,4,2,9,6,3,5,8,7,7,8,5,1,2,4,3,6,9}
EASYpuzzleSOL[14]={1,2,7,4,9,3,6,8,5,6,4,8,5,1,7,9,3,2,5,9,3,2,6,8,1,4,7,4,7,9,6,5,2,8,1,3,2,5,6,3,8,1,4,7,9,3,8,1,9,7,4,2,5,6,7,1,5,8,2,6,3,9,4,9,3,2,1,4,5,7,6,8,8,6,4,7,3,9,5,2,1}
EASYpuzzleSOL[15]={4,8,7,3,2,5,9,6,1,2,1,5,6,9,8,7,4,3,9,6,3,1,7,4,8,2,5,1,4,2,9,5,7,6,3,8,3,7,8,4,6,1,5,9,2,5,9,6,8,3,2,4,1,7,8,2,4,5,1,9,3,7,6,6,5,1,7,4,3,2,8,9,7,3,9,2,8,6,1,5,4}
EASYpuzzleSOL[16]={9,4,1,7,8,6,5,2,3,7,2,5,1,3,4,6,9,8,6,8,3,2,9,5,1,4,7,2,3,7,9,5,1,8,6,4,5,9,8,4,6,3,7,1,2,4,1,6,8,7,2,3,5,9,3,5,9,6,4,7,2,8,1,1,7,4,5,2,8,9,3,6,8,6,2,3,1,9,4,7,5}
EASYpuzzleSOL[17]={8,5,1,7,9,2,3,6,4,3,6,4,8,1,5,9,7,2,2,7,9,6,4,3,5,8,1,4,8,5,1,3,7,6,2,9,7,1,2,9,6,4,8,5,3,9,3,6,2,5,8,1,4,7,1,4,8,5,7,9,2,3,6,6,2,7,3,8,1,4,9,5,5,9,3,4,2,6,7,1,8}
EASYpuzzleSOL[18]={2,1,5,4,9,7,8,3,6,3,7,8,2,5,6,9,4,1,9,6,4,1,3,8,7,5,2,4,2,7,6,8,9,5,1,3,1,5,6,3,7,2,4,9,8,8,3,9,5,1,4,2,6,7,6,8,3,7,4,5,1,2,9,5,9,2,8,6,1,3,7,4,7,4,1,9,2,3,6,8,5}
EASYpuzzleSOL[19]={8,9,3,5,6,1,7,2,4,5,4,2,7,9,3,6,8,1,7,6,1,8,4,2,5,3,9,3,8,6,1,7,4,9,5,2,2,7,4,9,8,5,1,6,3,1,5,9,2,3,6,8,4,7,4,1,7,3,5,8,2,9,6,9,3,8,6,2,7,4,1,5,6,2,5,4,1,9,3,7,8}
EASYpuzzleSOL[20]={8,4,7,2,9,3,1,5,6,6,2,9,7,1,5,4,8,3,5,3,1,8,4,6,2,9,7,4,5,8,3,7,1,9,6,2,3,9,6,4,5,2,7,1,8,7,1,2,9,6,8,5,3,4,1,7,4,6,8,9,3,2,5,2,8,5,1,3,4,6,7,9,9,6,3,5,2,7,8,4,1}
EASYpuzzleSOL[21]={4,7,6,2,1,5,8,3,9,2,9,5,6,8,3,4,7,1,8,1,3,4,7,9,2,6,5,5,8,1,7,9,6,3,4,2,6,3,2,8,5,4,1,9,7,9,4,7,3,2,1,6,5,8,7,6,8,5,3,2,9,1,4,1,5,4,9,6,8,7,2,3,3,2,9,1,4,7,5,8,6}
EASYpuzzleSOL[22]={2,9,3,1,8,6,5,7,4,1,7,4,5,3,2,6,9,8,8,5,6,9,7,4,3,1,2,3,4,8,6,9,7,2,5,1,9,6,5,2,1,3,8,4,7,7,2,1,4,5,8,9,3,6,4,8,7,3,2,9,1,6,5,6,1,9,8,4,5,7,2,3,5,3,2,7,6,1,4,8,9}
EASYpuzzleSOL[23]={6,5,2,3,7,9,1,8,4,4,1,8,6,5,2,9,3,7,9,3,7,8,4,1,6,5,2,7,9,6,4,2,3,8,1,5,5,8,4,1,6,7,2,9,3,3,2,1,9,8,5,4,7,6,1,6,3,5,9,4,7,2,8,2,4,5,7,1,8,3,6,9,8,7,9,2,3,6,5,4,1}
EASYpuzzleSOL[24]={3,5,4,6,7,9,1,8,2,1,8,6,3,4,2,5,7,9,7,2,9,8,1,5,6,3,4,4,7,8,1,9,6,3,2,5,9,3,1,2,5,8,4,6,7,5,6,2,7,3,4,8,9,1,8,1,5,9,6,7,2,4,3,6,9,3,4,2,1,7,5,8,2,4,7,5,8,3,9,1,6}
EASYpuzzleSOL[25]={3,2,4,1,7,5,8,9,6,8,5,9,2,6,3,4,1,7,1,6,7,9,8,4,5,2,3,4,8,6,3,9,2,7,5,1,2,9,3,7,5,1,6,8,4,5,7,1,6,4,8,9,3,2,9,3,8,4,1,7,2,6,5,6,4,2,5,3,9,1,7,8,7,1,5,8,2,6,3,4,9}
EASYpuzzleSOL[26]={5,1,3,8,7,4,9,6,2,2,6,9,1,5,3,7,4,8,7,4,8,2,9,6,1,5,3,1,8,6,5,4,2,3,9,7,4,5,2,9,3,7,6,8,1,9,3,7,6,8,1,5,2,4,3,9,4,7,6,8,2,1,5,8,2,5,3,1,9,4,7,6,6,7,1,4,2,5,8,3,9}
EASYpuzzleSOL[27]={1,9,8,5,4,6,3,7,2,4,7,5,3,2,9,6,1,8,3,2,6,7,8,1,9,4,5,5,4,2,9,6,7,8,3,1,8,1,3,4,5,2,7,9,6,9,6,7,1,3,8,2,5,4,7,8,4,2,9,5,1,6,3,6,5,1,8,7,3,4,2,9,2,3,9,6,1,4,5,8,7}
EASYpuzzleSOL[28]={3,2,5,4,6,7,1,8,9,4,7,8,1,5,9,6,3,2,9,1,6,8,2,3,4,7,5,7,6,9,5,4,8,2,1,3,8,5,2,6,3,1,7,9,4,1,4,3,7,9,2,8,5,6,6,3,1,9,8,4,5,2,7,5,9,7,2,1,6,3,4,8,2,8,4,3,7,5,9,6,1}
EASYpuzzleSOL[29]={3,9,2,6,7,4,5,1,8,6,5,7,8,3,1,2,4,9,4,1,8,9,2,5,6,7,3,7,2,1,3,8,6,4,9,5,5,4,3,7,1,9,8,2,6,9,8,6,5,4,2,7,3,1,8,7,9,4,6,3,1,5,2,2,3,4,1,5,8,9,6,7,1,6,5,2,9,7,3,8,4}
EASYpuzzleSOL[30]={9,4,6,2,7,1,8,5,3,1,5,2,8,6,3,7,4,9,8,7,3,9,4,5,6,1,2,3,2,7,5,9,6,4,8,1,5,6,8,1,2,4,3,9,7,4,1,9,3,8,7,2,6,5,7,9,1,4,3,8,5,2,6,2,3,4,6,5,9,1,7,8,6,8,5,7,1,2,9,3,4}
EASYpuzzleSOL[31]={4,5,8,7,9,2,3,6,1,9,6,1,4,3,5,8,2,7,3,7,2,6,8,1,4,9,5,8,1,5,9,6,3,2,7,4,6,2,4,8,5,7,9,1,3,7,9,3,2,1,4,6,5,8,1,8,7,3,2,6,5,4,9,2,4,9,5,7,8,1,3,6,5,3,6,1,4,9,7,8,2}
EASYpuzzleSOL[32]={6,2,4,7,1,8,3,9,5,3,9,8,5,4,6,1,7,2,5,7,1,9,3,2,6,4,8,8,6,2,1,9,3,4,5,7,4,3,9,8,7,5,2,1,6,7,1,5,6,2,4,8,3,9,9,4,7,2,8,1,5,6,3,1,8,6,3,5,7,9,2,4,2,5,3,4,6,9,7,8,1}
EASYpuzzleSOL[33]={3,1,4,5,8,6,9,7,2,6,2,5,7,4,9,1,3,8,7,9,8,1,2,3,4,6,5,1,8,7,2,6,5,3,9,4,4,5,9,8,3,1,7,2,6,2,3,6,9,7,4,8,5,1,9,6,3,4,1,2,5,8,7,8,4,2,3,5,7,6,1,9,5,7,1,6,9,8,2,4,3}
EASYpuzzleSOL[34]={6,2,5,7,8,4,1,3,9,7,9,3,1,6,2,8,5,4,1,4,8,5,9,3,2,7,6,9,5,7,8,4,6,3,1,2,8,1,4,3,2,7,9,6,5,2,3,6,9,1,5,4,8,7,3,6,1,2,7,9,5,4,8,5,7,2,4,3,8,6,9,1,4,8,9,6,5,1,7,2,3}
EASYpuzzleSOL[35]={3,7,1,6,2,5,8,4,9,2,9,8,4,7,3,5,1,6,6,5,4,9,1,8,7,3,2,4,8,3,7,6,9,1,2,5,5,2,9,8,3,1,4,6,7,1,6,7,2,5,4,3,9,8,9,3,2,5,4,7,6,8,1,7,4,6,1,8,2,9,5,3,8,1,5,3,9,6,2,7,4}
EASYpuzzleSOL[36]={8,2,4,9,3,6,7,1,5,1,3,6,7,5,4,2,9,8,5,9,7,2,8,1,3,4,6,4,8,5,3,1,2,9,6,7,9,1,2,5,6,7,8,3,4,6,7,3,8,4,9,5,2,1,7,6,8,4,2,3,1,5,9,3,4,9,1,7,5,6,8,2,2,5,1,6,9,8,4,7,3}
EASYpuzzleSOL[37]={1,3,8,2,7,9,6,5,4,9,7,2,4,5,6,1,3,8,4,6,5,1,8,3,9,7,2,2,4,1,3,6,7,5,8,9,5,9,3,8,1,2,4,6,7,7,8,6,5,9,4,3,2,1,3,2,9,6,4,8,7,1,5,8,1,7,9,3,5,2,4,6,6,5,4,7,2,1,8,9,3}
EASYpuzzleSOL[38]={5,9,1,6,8,4,2,3,7,7,4,8,3,2,5,9,1,6,2,6,3,7,1,9,8,5,4,3,5,2,9,4,6,1,7,8,6,7,4,1,3,8,5,9,2,1,8,9,5,7,2,6,4,3,8,3,7,2,9,1,4,6,5,4,1,5,8,6,7,3,2,9,9,2,6,4,5,3,7,8,1}
EASYpuzzleSOL[39]={6,8,7,5,9,1,3,2,4,5,9,1,4,3,2,7,8,6,3,4,2,6,7,8,5,9,1,4,2,8,7,5,3,1,6,9,1,6,3,9,8,4,2,5,7,7,5,9,2,1,6,4,3,8,2,7,5,8,4,9,6,1,3,9,1,6,3,2,7,8,4,5,8,3,4,1,6,5,9,7,2}
EASYpuzzleSOL[40]={7,1,9,6,8,5,3,2,4,6,8,2,4,3,1,9,7,5,4,3,5,9,2,7,8,1,6,8,7,1,3,9,4,5,6,2,9,4,3,5,6,2,1,8,7,5,2,6,7,1,8,4,9,3,3,5,8,1,7,6,2,4,9,2,9,7,8,4,3,6,5,1,1,6,4,2,5,9,7,3,8}
EASYpuzzleSOL[41]={9,1,7,4,5,3,6,8,2,2,5,3,9,8,6,4,1,7,8,4,6,7,2,1,3,5,9,1,3,8,5,9,4,7,2,6,7,6,2,3,1,8,9,4,5,5,9,4,2,6,7,1,3,8,6,8,9,1,3,5,2,7,4,3,7,5,6,4,2,8,9,1,4,2,1,8,7,9,5,6,3}
EASYpuzzleSOL[42]={7,4,5,9,6,8,2,1,3,1,6,9,2,5,3,7,8,4,3,8,2,4,7,1,9,5,6,4,7,1,8,3,2,6,9,5,9,2,6,1,4,5,3,7,8,8,5,3,7,9,6,4,2,1,6,1,4,5,2,7,8,3,9,2,3,8,6,1,9,5,4,7,5,9,7,3,8,4,1,6,2}
EASYpuzzleSOL[43]={1,5,8,3,7,4,2,9,6,3,9,2,6,5,1,4,7,8,6,4,7,8,9,2,5,1,3,8,7,9,1,4,3,6,2,5,5,2,3,9,8,6,7,4,1,4,1,6,7,2,5,8,3,9,9,8,1,4,6,7,3,5,2,2,6,4,5,3,9,1,8,7,7,3,5,2,1,8,9,6,4}
EASYpuzzleSOL[44]={2,6,8,4,5,7,3,1,9,1,4,5,3,8,9,6,7,2,7,9,3,1,6,2,5,4,8,6,1,9,2,4,5,8,3,7,8,3,4,9,7,6,1,2,5,5,7,2,8,1,3,9,6,4,9,5,7,6,3,4,2,8,1,4,8,6,5,2,1,7,9,3,3,2,1,7,9,8,4,5,6}
EASYpuzzleSOL[45]={1,7,9,2,8,5,4,3,6,5,2,8,3,4,6,7,9,1,3,4,6,7,1,9,8,2,5,6,3,7,4,9,1,5,8,2,8,5,2,6,3,7,9,1,4,9,1,4,8,5,2,3,6,7,4,9,5,1,2,3,6,7,8,2,6,3,5,7,8,1,4,9,7,8,1,9,6,4,2,5,3}
EASYpuzzleSOL[46]={3,8,7,1,5,9,2,4,6,6,5,4,8,2,7,1,9,3,2,9,1,4,6,3,8,7,5,5,3,2,9,4,6,7,1,8,4,6,8,5,7,1,3,2,9,1,7,9,3,8,2,6,5,4,8,2,6,7,9,4,5,3,1,9,1,5,2,3,8,4,6,7,7,4,3,6,1,5,9,8,2}
EASYpuzzleSOL[47]={9,5,8,6,7,2,3,4,1,6,1,2,3,9,4,5,7,8,3,7,4,8,1,5,6,9,2,8,9,6,2,3,7,1,5,4,1,4,5,9,6,8,7,2,3,2,3,7,4,5,1,8,6,9,7,8,1,5,2,9,4,3,6,4,2,3,7,8,6,9,1,5,5,6,9,1,4,3,2,8,7}
EASYpuzzleSOL[48]={3,5,7,1,8,4,6,9,2,1,8,2,9,6,3,5,7,4,4,9,6,2,7,5,1,3,8,6,2,1,8,4,7,9,5,3,9,3,4,6,5,1,2,8,7,8,7,5,3,2,9,4,6,1,7,6,3,4,9,2,8,1,5,2,1,9,5,3,8,7,4,6,5,4,8,7,1,6,3,2,9}
EASYpuzzleSOL[49]={5,3,7,4,8,6,9,2,1,4,8,2,1,9,5,3,7,6,1,6,9,7,3,2,4,8,5,3,2,6,8,1,9,7,5,4,8,5,4,3,6,7,2,1,9,7,9,1,2,5,4,8,6,3,9,1,3,5,7,8,6,4,2,2,7,5,6,4,3,1,9,8,6,4,8,9,2,1,5,3,7}
EASYpuzzleSOL[50]={6,2,3,4,7,1,5,9,8,4,1,7,8,5,9,2,3,6,8,9,5,2,3,6,4,1,7,7,3,4,1,6,5,8,2,9,2,8,9,3,4,7,6,5,1,5,6,1,9,8,2,7,4,3,1,7,2,6,9,4,3,8,5,9,5,8,7,2,3,1,6,4,3,4,6,5,1,8,9,7,2}
EASYpuzzleSOL[51]={7,3,4,6,5,1,2,9,8,9,1,5,4,8,2,7,6,3,8,2,6,7,3,9,5,1,4,5,8,1,9,4,3,6,2,7,3,6,9,5,2,7,4,8,1,4,7,2,8,1,6,9,3,5,6,5,8,1,9,4,3,7,2,1,9,3,2,7,5,8,4,6,2,4,7,3,6,8,1,5,9}
EASYpuzzleSOL[52]={7,9,5,1,8,3,6,2,4,2,8,1,4,6,7,9,3,5,4,3,6,2,5,9,8,7,1,6,7,3,8,2,4,5,1,9,5,1,2,3,9,6,4,8,7,8,4,9,7,1,5,2,6,3,3,5,4,6,7,2,1,9,8,9,2,8,5,3,1,7,4,6,1,6,7,9,4,8,3,5,2}
EASYpuzzleSOL[53]={5,6,4,7,8,1,9,2,3,1,8,3,4,2,9,5,7,6,9,2,7,6,3,5,4,1,8,6,7,9,1,4,8,3,5,2,8,4,1,2,5,3,6,9,7,3,5,2,9,6,7,8,4,1,2,9,8,3,7,4,1,6,5,4,3,6,5,1,2,7,8,9,7,1,5,8,9,6,2,3,4}
EASYpuzzleSOL[54]={4,6,9,2,5,1,8,3,7,2,5,8,3,4,7,6,1,9,3,1,7,6,8,9,2,4,5,1,7,2,4,6,8,9,5,3,9,3,5,7,1,2,4,6,8,8,4,6,5,9,3,7,2,1,6,9,1,8,3,4,5,7,2,5,2,3,9,7,6,1,8,4,7,8,4,1,2,5,3,9,6}
EASYpuzzleSOL[55]={9,6,2,1,7,5,3,8,4,8,5,7,6,4,3,9,1,2,1,4,3,9,8,2,7,6,5,7,1,9,2,5,4,6,3,8,4,3,8,7,1,6,2,5,9,6,2,5,3,9,8,1,4,7,2,8,1,4,3,9,5,7,6,3,9,4,5,6,7,8,2,1,5,7,6,8,2,1,4,9,3}
EASYpuzzleSOL[56]={6,5,2,9,1,8,3,4,7,4,1,7,3,5,2,9,6,8,9,8,3,4,7,6,5,1,2,7,9,5,1,2,3,6,8,4,2,6,4,5,8,9,1,7,3,8,3,1,6,4,7,2,9,5,5,7,9,8,3,1,4,2,6,1,4,8,2,6,5,7,3,9,3,2,6,7,9,4,8,5,1}
EASYpuzzleSOL[57]={4,8,6,7,5,9,2,1,3,1,3,2,8,4,6,9,7,5,7,5,9,1,2,3,4,8,6,2,7,1,5,6,8,3,4,9,6,4,3,9,1,2,7,5,8,8,9,5,3,7,4,6,2,1,5,1,4,6,9,7,8,3,2,9,2,8,4,3,1,5,6,7,3,6,7,2,8,5,1,9,4}
EASYpuzzleSOL[58]={3,5,6,1,2,9,8,7,4,8,7,9,4,3,5,6,1,2,1,4,2,6,7,8,9,5,3,4,8,7,5,9,2,3,6,1,5,2,3,7,1,6,4,8,9,9,6,1,3,8,4,5,2,7,2,1,5,9,6,3,7,4,8,7,9,4,8,5,1,2,3,6,6,3,8,2,4,7,1,9,5}
EASYpuzzleSOL[59]={2,6,7,3,1,9,4,8,5,8,3,4,7,6,5,9,2,1,1,5,9,2,4,8,7,6,3,3,7,5,9,2,1,6,4,8,9,2,6,5,8,4,1,3,7,4,8,1,6,3,7,2,5,9,5,1,2,8,7,6,3,9,4,6,4,8,1,9,3,5,7,2,7,9,3,4,5,2,8,1,6}
EASYpuzzleSOL[60]={9,5,2,3,6,4,7,1,8,7,8,4,2,1,9,5,3,6,6,1,3,5,7,8,9,4,2,3,2,8,7,4,5,6,9,1,4,9,6,8,3,1,2,5,7,5,7,1,6,9,2,4,8,3,2,4,5,1,8,6,3,7,9,1,3,9,4,2,7,8,6,5,8,6,7,9,5,3,1,2,4}
EASYpuzzleSOL[61]={4,3,7,8,2,1,6,9,5,2,5,1,4,9,6,3,7,8,9,6,8,5,3,7,4,2,1,1,2,9,3,4,8,7,5,6,8,7,3,2,6,5,9,1,4,6,4,5,1,7,9,2,8,3,7,1,4,9,8,3,5,6,2,5,9,2,6,1,4,8,3,7,3,8,6,7,5,2,1,4,9}
EASYpuzzleSOL[62]={8,7,4,9,6,1,5,2,3,5,9,3,8,7,2,4,6,1,6,1,2,3,5,4,9,8,7,4,8,1,5,3,6,2,7,9,2,6,5,7,1,9,8,3,4,7,3,9,4,2,8,1,5,6,3,4,6,2,9,5,7,1,8,1,5,8,6,4,7,3,9,2,9,2,7,1,8,3,6,4,5}
EASYpuzzleSOL[63]={9,3,7,8,5,6,1,4,2,8,1,2,3,9,4,6,5,7,5,6,4,7,1,2,9,3,8,2,8,1,4,3,5,7,9,6,7,5,6,9,2,8,3,1,4,4,9,3,1,6,7,2,8,5,3,2,5,6,8,1,4,7,9,1,7,8,2,4,9,5,6,3,6,4,9,5,7,3,8,2,1}
EASYpuzzleSOL[64]={4,2,8,5,6,9,7,3,1,6,5,7,8,1,3,9,2,4,1,9,3,2,7,4,8,6,5,7,4,6,3,5,2,1,8,9,9,3,5,4,8,1,2,7,6,2,8,1,6,9,7,5,4,3,8,7,9,1,3,6,4,5,2,3,1,2,7,4,5,6,9,8,5,6,4,9,2,8,3,1,7}
EASYpuzzleSOL[65]={2,5,9,4,1,3,6,8,7,4,6,8,5,9,7,3,2,1,7,3,1,6,2,8,9,4,5,3,2,5,8,6,9,1,7,4,1,9,4,3,7,2,8,5,6,6,8,7,1,4,5,2,3,9,9,4,3,2,5,1,7,6,8,5,7,2,9,8,6,4,1,3,8,1,6,7,3,4,5,9,2}
EASYpuzzleSOL[66]={7,5,1,2,6,3,9,4,8,3,6,4,1,8,9,7,5,2,2,9,8,4,7,5,3,1,6,1,3,2,8,4,7,5,6,9,4,7,9,3,5,6,2,8,1,6,8,5,9,2,1,4,7,3,9,1,6,5,3,4,8,2,7,8,4,7,6,9,2,1,3,5,5,2,3,7,1,8,6,9,4}
EASYpuzzleSOL[67]={4,1,2,9,7,5,8,6,3,9,7,3,8,2,6,1,4,5,8,6,5,1,4,3,2,9,7,6,9,8,5,1,2,3,7,4,3,2,4,7,6,8,5,1,9,1,5,7,3,9,4,6,8,2,7,4,6,2,5,1,9,3,8,5,3,1,4,8,9,7,2,6,2,8,9,6,3,7,4,5,1}
EASYpuzzleSOL[68]={6,5,2,9,4,7,3,8,1,3,8,7,6,1,5,4,9,2,1,4,9,3,2,8,7,5,6,4,7,6,5,8,1,9,2,3,2,9,5,4,6,3,8,1,7,8,1,3,7,9,2,6,4,5,9,2,4,1,7,6,5,3,8,5,6,8,2,3,4,1,7,9,7,3,1,8,5,9,2,6,4}
EASYpuzzleSOL[69]={9,2,3,1,5,4,7,8,6,5,1,6,8,3,7,9,4,2,8,7,4,2,6,9,3,5,1,7,8,2,3,1,6,4,9,5,3,9,5,4,7,2,6,1,8,6,4,1,5,9,8,2,7,3,2,5,8,9,4,3,1,6,7,4,3,7,6,8,1,5,2,9,1,6,9,7,2,5,8,3,4}
EASYpuzzleSOL[70]={9,4,1,2,7,3,8,5,6,8,2,5,6,9,4,1,3,7,6,7,3,8,5,1,9,2,4,4,9,2,3,1,6,7,8,5,1,3,7,4,8,5,2,6,9,5,8,6,7,2,9,3,4,1,2,1,8,5,6,7,4,9,3,7,5,4,9,3,8,6,1,2,3,6,9,1,4,2,5,7,8}
EASYpuzzleSOL[71]={2,7,4,1,3,6,9,5,8,3,5,8,4,7,9,6,2,1,6,1,9,8,2,5,4,7,3,8,6,1,2,9,7,5,3,4,9,3,7,5,1,4,2,8,6,4,2,5,6,8,3,1,9,7,7,9,6,3,5,1,8,4,2,5,4,2,7,6,8,3,1,9,1,8,3,9,4,2,7,6,5}
EASYpuzzleSOL[72]={8,5,4,9,7,6,2,3,1,1,9,7,8,2,3,5,6,4,6,3,2,1,5,4,8,7,9,9,2,3,4,6,8,1,5,7,4,7,8,5,1,2,3,9,6,5,6,1,7,3,9,4,8,2,3,4,6,2,8,7,9,1,5,2,8,5,6,9,1,7,4,3,7,1,9,3,4,5,6,2,8}
EASYpuzzleSOL[73]={6,5,1,2,7,8,9,4,3,7,3,8,6,9,4,2,5,1,4,2,9,5,3,1,7,6,8,5,8,6,7,4,3,1,2,9,2,1,7,9,8,6,4,3,5,3,9,4,1,5,2,8,7,6,9,4,3,8,2,5,6,1,7,8,6,2,3,1,7,5,9,4,1,7,5,4,6,9,3,8,2}
EASYpuzzleSOL[74]={8,3,9,6,4,1,2,5,7,7,2,5,3,9,8,6,1,4,6,1,4,5,7,2,8,9,3,3,9,7,8,5,6,4,2,1,4,5,8,2,1,7,9,3,6,2,6,1,9,3,4,5,7,8,1,7,6,4,2,9,3,8,5,5,4,2,1,8,3,7,6,9,9,8,3,7,6,5,1,4,2}
EASYpuzzleSOL[75]={4,9,2,3,8,1,7,6,5,7,6,5,9,4,2,3,1,8,3,8,1,6,5,7,2,4,9,6,5,7,8,9,4,1,3,2,2,4,9,5,1,3,6,8,7,1,3,8,2,7,6,9,5,4,5,2,3,7,6,8,4,9,1,9,1,6,4,2,5,8,7,3,8,7,4,1,3,9,5,2,6}
EASYpuzzleSOL[76]={9,6,3,1,8,2,4,5,7,5,1,8,4,9,7,3,6,2,2,7,4,6,5,3,9,8,1,4,5,6,8,7,1,2,9,3,7,3,1,9,2,6,5,4,8,8,9,2,3,4,5,1,7,6,3,8,9,7,1,4,6,2,5,6,2,7,5,3,9,8,1,4,1,4,5,2,6,8,7,3,9}
EASYpuzzleSOL[77]={9,7,3,6,5,2,4,1,8,8,2,5,7,1,4,3,9,6,4,6,1,9,8,3,5,2,7,5,9,6,3,7,1,8,4,2,3,4,8,2,6,5,9,7,1,2,1,7,8,4,9,6,3,5,6,3,9,5,2,7,1,8,4,1,8,2,4,3,6,7,5,9,7,5,4,1,9,8,2,6,3}
EASYpuzzleSOL[78]={3,6,9,8,1,7,5,4,2,5,1,4,9,2,3,6,7,8,7,2,8,5,6,4,1,3,9,8,5,1,6,3,9,7,2,4,9,4,6,2,7,5,8,1,3,2,7,3,1,4,8,9,6,5,4,9,2,7,8,1,3,5,6,1,3,5,4,9,6,2,8,7,6,8,7,3,5,2,4,9,1}
EASYpuzzleSOL[79]={3,6,9,8,5,2,1,7,4,5,4,7,9,1,3,8,2,6,8,2,1,4,6,7,5,9,3,4,8,2,6,7,1,3,5,9,1,3,6,5,8,9,7,4,2,7,9,5,2,3,4,6,1,8,6,7,4,1,2,8,9,3,5,9,1,8,3,4,5,2,6,7,2,5,3,7,9,6,4,8,1}
EASYpuzzleSOL[80]={5,3,2,7,9,4,6,8,1,8,6,9,1,3,2,7,5,4,4,7,1,6,8,5,2,3,9,7,5,8,9,4,6,3,1,2,3,9,4,8,2,1,5,7,6,2,1,6,3,5,7,9,4,8,1,4,3,5,6,9,8,2,7,9,8,7,2,1,3,4,6,5,6,2,5,4,7,8,1,9,3}
EASYpuzzleSOL[81]={8,5,6,7,2,4,9,1,3,2,9,3,8,5,1,7,6,4,4,7,1,9,6,3,2,5,8,5,2,8,3,1,7,6,4,9,1,3,4,2,9,6,5,8,7,9,6,7,5,4,8,3,2,1,7,1,2,4,3,5,8,9,6,6,8,9,1,7,2,4,3,5,3,4,5,6,8,9,1,7,2}
EASYpuzzleSOL[82]={9,3,8,7,4,6,2,1,5,4,2,5,1,3,9,6,8,7,1,7,6,8,5,2,4,3,9,5,8,9,3,2,7,1,4,6,3,1,4,6,8,5,7,9,2,7,6,2,9,1,4,8,5,3,8,9,1,2,6,3,5,7,4,2,4,7,5,9,8,3,6,1,6,5,3,4,7,1,9,2,8}
EASYpuzzleSOL[83]={8,2,7,3,4,5,6,9,1,4,3,6,2,1,9,7,8,5,1,9,5,6,8,7,4,3,2,6,7,1,8,9,2,3,5,4,2,5,4,1,7,3,9,6,8,9,8,3,4,5,6,1,2,7,5,6,8,7,3,1,2,4,9,3,1,9,5,2,4,8,7,6,7,4,2,9,6,8,5,1,3}
EASYpuzzleSOL[84]={3,9,8,1,4,2,7,6,5,6,5,4,7,8,3,1,9,2,7,1,2,5,6,9,3,4,8,2,7,9,8,5,1,4,3,6,5,4,3,9,2,6,8,1,7,1,8,6,3,7,4,2,5,9,4,3,7,6,9,8,5,2,1,9,2,5,4,1,7,6,8,3,8,6,1,2,3,5,9,7,4}
EASYpuzzleSOL[85]={3,7,6,1,4,5,9,2,8,8,5,4,6,9,2,3,7,1,9,2,1,7,8,3,4,6,5,7,4,5,9,6,1,8,3,2,2,1,8,4,3,7,5,9,6,6,3,9,5,2,8,1,4,7,5,6,3,8,7,4,2,1,9,4,8,7,2,1,9,6,5,3,1,9,2,3,5,6,7,8,4}
EASYpuzzleSOL[86]={8,4,6,7,9,3,5,1,2,3,2,5,4,1,6,9,7,8,1,7,9,5,8,2,3,6,4,9,8,7,6,2,1,4,3,5,2,5,4,3,7,9,1,8,6,6,1,3,8,5,4,7,2,9,5,3,8,9,6,7,2,4,1,7,9,1,2,4,8,6,5,3,4,6,2,1,3,5,8,9,7}
EASYpuzzleSOL[87]={2,9,6,5,8,1,7,3,4,3,4,8,9,7,2,5,1,6,1,5,7,4,6,3,2,9,8,4,2,1,6,3,7,8,5,9,6,8,5,2,4,9,3,7,1,7,3,9,1,5,8,6,4,2,8,1,3,7,9,6,4,2,5,5,7,2,8,1,4,9,6,3,9,6,4,3,2,5,1,8,7}
EASYpuzzleSOL[88]={7,9,8,3,2,6,4,1,5,2,5,4,1,9,7,6,3,8,3,6,1,8,5,4,9,2,7,9,7,5,2,6,1,8,4,3,1,8,2,4,7,3,5,6,9,4,3,6,5,8,9,2,7,1,8,2,7,6,1,5,3,9,4,6,1,3,9,4,8,7,5,2,5,4,9,7,3,2,1,8,6}
EASYpuzzleSOL[89]={6,7,3,2,5,9,4,1,8,9,1,4,6,7,8,5,2,3,5,8,2,4,3,1,9,7,6,8,2,6,5,1,4,7,3,9,7,3,5,9,8,2,6,4,1,1,4,9,7,6,3,8,5,2,2,6,1,8,4,5,3,9,7,4,9,7,3,2,6,1,8,5,3,5,8,1,9,7,2,6,4}
EASYpuzzleSOL[90]={1,7,6,4,3,5,9,8,2,4,5,2,8,9,6,1,3,7,9,3,8,7,2,1,4,6,5,7,4,9,2,1,8,6,5,3,3,8,1,5,6,7,2,9,4,6,2,5,3,4,9,7,1,8,2,9,4,6,8,3,5,7,1,5,1,3,9,7,2,8,4,6,8,6,7,1,5,4,3,2,9}
EASYpuzzleSOL[91]={1,9,2,4,5,6,8,7,3,8,6,7,9,1,3,2,4,5,4,5,3,8,7,2,9,6,1,7,8,5,3,6,1,4,9,2,6,3,1,2,9,4,7,5,8,9,2,4,5,8,7,1,3,6,2,4,6,7,3,8,5,1,9,5,1,8,6,4,9,3,2,7,3,7,9,1,2,5,6,8,4}
EASYpuzzleSOL[92]={1,6,5,7,8,4,9,2,3,9,2,8,3,1,5,6,4,7,4,7,3,9,2,6,8,5,1,5,8,6,1,4,3,7,9,2,3,9,2,6,5,7,1,8,4,7,1,4,2,9,8,3,6,5,2,5,7,8,3,9,4,1,6,8,3,1,4,6,2,5,7,9,6,4,9,5,7,1,2,3,8}
EASYpuzzleSOL[93]={6,8,9,7,2,5,3,4,1,7,3,2,4,9,1,8,6,5,4,1,5,3,6,8,2,9,7,2,9,7,8,5,3,6,1,4,1,5,6,2,4,7,9,8,3,3,4,8,9,1,6,5,7,2,8,2,4,1,3,9,7,5,6,9,6,1,5,7,2,4,3,8,5,7,3,6,8,4,1,2,9}
EASYpuzzleSOL[94]={8,2,3,9,1,5,6,4,7,6,1,7,2,3,4,5,8,9,4,5,9,8,6,7,3,1,2,7,4,1,6,5,2,8,9,3,2,8,6,3,4,9,7,5,1,3,9,5,1,7,8,4,2,6,9,6,2,5,8,3,1,7,4,5,3,4,7,2,1,9,6,8,1,7,8,4,9,6,2,3,5}
EASYpuzzleSOL[95]={3,1,7,6,8,4,5,9,2,5,8,4,7,9,2,1,3,6,9,6,2,3,1,5,8,4,7,7,9,5,2,4,1,3,6,8,1,2,3,8,7,6,4,5,9,6,4,8,9,5,3,7,2,1,8,3,9,4,2,7,6,1,5,4,7,1,5,6,9,2,8,3,2,5,6,1,3,8,9,7,4}
EASYpuzzleSOL[96]={2,4,8,9,1,5,6,3,7,5,3,7,2,4,6,9,1,8,6,1,9,7,3,8,4,5,2,1,2,3,5,8,9,7,4,6,7,9,5,4,6,1,8,2,3,4,8,6,3,2,7,1,9,5,9,6,1,8,5,3,2,7,4,8,5,2,1,7,4,3,6,9,3,7,4,6,9,2,5,8,1}
EASYpuzzleSOL[97]={3,5,4,9,7,1,2,6,8,7,8,1,5,2,6,9,4,3,6,9,2,4,3,8,7,1,5,2,3,8,7,9,4,1,5,6,1,7,9,3,6,5,8,2,4,4,6,5,1,8,2,3,7,9,9,2,3,6,4,7,5,8,1,8,1,6,2,5,3,4,9,7,5,4,7,8,1,9,6,3,2}
EASYpuzzleSOL[98]={8,3,4,5,1,6,9,7,2,2,5,7,8,9,3,4,6,1,9,1,6,2,4,7,5,3,8,7,8,5,3,6,9,2,1,4,1,6,2,4,8,5,3,9,7,3,4,9,7,2,1,6,8,5,6,7,1,9,5,4,8,2,3,4,9,8,1,3,2,7,5,6,5,2,3,6,7,8,1,4,9}
EASYpuzzleSOL[99]={8,6,3,7,9,2,5,4,1,1,7,2,4,3,5,9,8,6,5,4,9,8,6,1,7,2,3,9,5,6,3,8,7,4,1,2,7,2,4,5,1,6,3,9,8,3,8,1,2,4,9,6,7,5,2,9,5,6,7,8,1,3,4,4,1,8,9,5,3,2,6,7,6,3,7,1,2,4,8,5,9}
EASYpuzzleSOL[100]={5,6,1,4,3,8,2,7,9,3,9,8,2,7,1,5,6,4,7,2,4,6,5,9,1,3,8,6,7,3,5,1,4,8,9,2,8,4,5,9,6,2,7,1,3,2,1,9,3,8,7,4,5,6,9,5,7,8,4,6,3,2,1,4,3,6,1,2,5,9,8,7,1,8,2,7,9,3,6,4,5}
EASYpuzzleSOL[101]={2,7,6,1,3,5,8,4,9,8,1,9,2,4,6,7,5,3,4,3,5,7,9,8,6,2,1,6,2,4,5,7,9,3,1,8,9,5,1,4,8,3,2,6,7,3,8,7,6,2,1,4,9,5,1,4,2,8,5,7,9,3,6,5,9,8,3,6,2,1,7,4,7,6,3,9,1,4,5,8,2}
EASYpuzzleSOL[102]={8,5,4,6,3,9,7,1,2,2,9,1,7,4,8,3,5,6,7,3,6,2,1,5,4,9,8,6,2,9,1,5,7,8,4,3,3,8,5,9,2,4,1,6,7,1,4,7,8,6,3,5,2,9,4,6,8,3,9,1,2,7,5,9,1,3,5,7,2,6,8,4,5,7,2,4,8,6,9,3,1}
EASYpuzzleSOL[103]={6,1,2,3,9,7,8,4,5,8,4,3,6,5,1,2,7,9,9,7,5,4,2,8,3,1,6,7,5,4,9,6,3,1,2,8,2,3,8,1,7,5,9,6,4,1,9,6,8,4,2,5,3,7,5,2,9,7,3,4,6,8,1,3,8,7,5,1,6,4,9,2,4,6,1,2,8,9,7,5,3}
EASYpuzzleSOL[104]={2,5,3,4,8,9,1,6,7,4,8,6,7,2,1,3,9,5,9,7,1,3,5,6,8,4,2,1,9,8,5,7,4,2,3,6,6,4,5,1,3,2,7,8,9,3,2,7,6,9,8,4,5,1,8,3,2,9,1,5,6,7,4,7,6,9,2,4,3,5,1,8,5,1,4,8,6,7,9,2,3}
EASYpuzzleSOL[105]={1,2,4,3,7,6,8,9,5,3,6,8,1,9,5,7,4,2,5,7,9,4,8,2,3,1,6,6,4,5,9,3,7,2,8,1,7,8,1,2,5,4,6,3,9,2,9,3,6,1,8,4,5,7,8,5,6,7,4,9,1,2,3,4,1,2,5,6,3,9,7,8,9,3,7,8,2,1,5,6,4}
EASYpuzzleSOL[106]={4,7,9,2,1,3,6,5,8,5,1,2,7,6,8,4,3,9,6,3,8,4,9,5,1,7,2,2,9,3,1,8,4,7,6,5,1,5,6,9,3,7,8,2,4,7,8,4,6,5,2,3,9,1,3,4,1,5,2,6,9,8,7,8,2,7,3,4,9,5,1,6,9,6,5,8,7,1,2,4,3}
EASYpuzzleSOL[107]={6,8,9,7,2,1,3,4,5,4,3,5,8,9,6,2,7,1,1,2,7,5,4,3,8,9,6,5,6,2,4,1,7,9,3,8,9,4,1,3,5,8,7,6,2,8,7,3,9,6,2,5,1,4,7,1,6,2,8,9,4,5,3,3,5,8,6,7,4,1,2,9,2,9,4,1,3,5,6,8,7}
EASYpuzzleSOL[108]={3,8,7,6,1,4,9,5,2,1,9,4,8,2,5,7,6,3,2,5,6,3,7,9,8,4,1,5,1,2,4,3,7,6,8,9,9,6,3,5,8,1,4,2,7,4,7,8,9,6,2,1,3,5,6,4,5,1,9,3,2,7,8,7,3,9,2,4,8,5,1,6,8,2,1,7,5,6,3,9,4}
EASYpuzzleSOL[109]={8,2,7,4,9,1,6,5,3,5,1,9,2,3,6,7,8,4,3,4,6,5,7,8,9,2,1,6,5,4,7,1,3,8,9,2,1,8,3,9,2,5,4,7,6,7,9,2,6,8,4,1,3,5,2,6,8,1,5,7,3,4,9,4,3,5,8,6,9,2,1,7,9,7,1,3,4,2,5,6,8}
EASYpuzzleSOL[110]={5,7,2,1,8,3,6,4,9,4,1,8,6,5,9,3,7,2,6,9,3,7,2,4,8,1,5,8,4,7,3,9,5,2,6,1,3,2,6,4,7,1,5,9,8,1,5,9,8,6,2,4,3,7,2,6,1,9,4,8,7,5,3,9,8,4,5,3,7,1,2,6,7,3,5,2,1,6,9,8,4}
EASYpuzzleSOL[111]={2,5,1,8,7,6,9,3,4,3,6,9,4,1,5,2,7,8,7,4,8,9,3,2,1,5,6,4,9,7,6,8,1,3,2,5,1,2,5,7,4,3,8,6,9,6,8,3,2,5,9,7,4,1,9,3,4,1,6,7,5,8,2,8,7,2,5,9,4,6,1,3,5,1,6,3,2,8,4,9,7}
EASYpuzzleSOL[112]={7,8,9,3,4,2,5,6,1,5,2,3,1,8,6,9,7,4,4,6,1,5,7,9,3,8,2,3,4,2,9,1,8,6,5,7,9,7,6,4,5,3,2,1,8,8,1,5,6,2,7,4,3,9,2,5,8,7,3,4,1,9,6,1,9,4,8,6,5,7,2,3,6,3,7,2,9,1,8,4,5}
EASYpuzzleSOL[113]={8,2,1,3,9,4,7,5,6,3,7,9,6,5,1,4,8,2,5,4,6,2,8,7,3,1,9,7,6,8,9,4,3,1,2,5,4,9,3,1,2,5,6,7,8,1,5,2,7,6,8,9,3,4,2,1,4,5,3,6,8,9,7,9,8,7,4,1,2,5,6,3,6,3,5,8,7,9,2,4,1}
EASYpuzzleSOL[114]={6,4,2,1,3,5,8,9,7,7,5,3,6,8,9,1,2,4,9,1,8,7,4,2,6,5,3,5,8,7,2,6,3,9,4,1,4,3,6,8,9,1,5,7,2,1,2,9,4,5,7,3,6,8,2,9,1,5,7,8,4,3,6,8,6,5,3,2,4,7,1,9,3,7,4,9,1,6,2,8,5}
EASYpuzzleSOL[115]={4,7,2,6,5,3,1,9,8,1,6,5,8,9,4,3,2,7,8,9,3,2,1,7,6,4,5,3,2,9,5,7,6,8,1,4,6,5,4,1,3,8,9,7,2,7,8,1,9,4,2,5,3,6,9,3,8,4,2,5,7,6,1,5,4,7,3,6,1,2,8,9,2,1,6,7,8,9,4,5,3}
EASYpuzzleSOL[116]={6,7,3,5,4,8,2,1,9,1,8,9,2,3,6,4,7,5,2,5,4,7,9,1,6,3,8,9,2,6,1,7,4,8,5,3,3,1,8,6,2,5,7,9,4,7,4,5,9,8,3,1,6,2,5,3,7,4,1,2,9,8,6,4,6,1,8,5,9,3,2,7,8,9,2,3,6,7,5,4,1}
EASYpuzzleSOL[117]={6,9,8,1,4,7,5,2,3,2,5,7,3,6,9,4,1,8,1,4,3,8,5,2,7,6,9,7,6,2,9,3,4,8,5,1,9,8,4,5,2,1,3,7,6,3,1,5,6,7,8,9,4,2,5,3,9,4,1,6,2,8,7,8,7,6,2,9,5,1,3,4,4,2,1,7,8,3,6,9,5}
EASYpuzzleSOL[118]={6,1,3,7,5,8,2,4,9,7,8,4,3,2,9,6,5,1,5,9,2,4,1,6,7,3,8,9,7,1,2,6,5,3,8,4,4,3,5,9,8,7,1,2,6,2,6,8,1,4,3,5,9,7,8,4,7,6,3,2,9,1,5,3,5,9,8,7,1,4,6,2,1,2,6,5,9,4,8,7,3}
EASYpuzzleSOL[119]={9,1,8,2,4,5,3,7,6,6,3,4,8,7,9,2,5,1,2,7,5,6,3,1,4,8,9,4,9,3,7,2,8,6,1,5,7,8,2,1,5,6,9,4,3,1,5,6,4,9,3,7,2,8,3,2,9,5,8,4,1,6,7,5,4,1,3,6,7,8,9,2,8,6,7,9,1,2,5,3,4}
EASYpuzzleSOL[120]={6,1,5,7,4,8,3,9,2,2,3,8,6,9,5,7,1,4,9,7,4,2,3,1,5,8,6,1,4,9,3,6,2,8,5,7,8,6,2,9,5,7,1,4,3,7,5,3,8,1,4,2,6,9,3,8,6,1,2,9,4,7,5,4,9,1,5,7,3,6,2,8,5,2,7,4,8,6,9,3,1}
EASYpuzzleSOL[121]={6,4,3,5,2,8,7,9,1,8,1,2,6,9,7,5,4,3,5,7,9,1,3,4,2,6,8,1,8,5,7,6,3,9,2,4,4,3,6,9,1,2,8,7,5,2,9,7,4,8,5,1,3,6,9,5,1,2,4,6,3,8,7,3,2,4,8,7,1,6,5,9,7,6,8,3,5,9,4,1,2}
EASYpuzzleSOL[122]={6,3,8,1,2,9,7,4,5,9,2,4,6,5,7,8,1,3,7,5,1,3,4,8,9,6,2,2,1,7,9,3,4,5,8,6,4,9,3,8,6,5,2,7,1,5,8,6,2,7,1,4,3,9,1,4,2,5,8,6,3,9,7,3,7,9,4,1,2,6,5,8,8,6,5,7,9,3,1,2,4}
EASYpuzzleSOL[123]={1,6,8,3,7,9,4,2,5,7,2,4,5,1,6,3,9,8,3,5,9,2,4,8,6,7,1,5,9,7,1,6,3,8,4,2,2,4,3,9,8,7,1,5,6,6,8,1,4,5,2,9,3,7,9,3,6,7,2,1,5,8,4,8,7,5,6,9,4,2,1,3,4,1,2,8,3,5,7,6,9}
EASYpuzzleSOL[124]={7,3,8,9,6,5,4,1,2,6,1,9,3,4,2,8,5,7,5,2,4,8,1,7,6,3,9,8,5,2,4,9,1,7,6,3,3,9,6,5,7,8,2,4,1,4,7,1,2,3,6,9,8,5,9,8,3,7,5,4,1,2,6,1,4,7,6,2,3,5,9,8,2,6,5,1,8,9,3,7,4}
EASYpuzzleSOL[125]={8,3,9,6,7,4,2,1,5,1,4,6,2,8,5,7,9,3,7,2,5,1,9,3,4,8,6,5,6,2,9,4,8,1,3,7,9,7,1,3,2,6,8,5,4,3,8,4,7,5,1,6,2,9,2,5,3,4,1,7,9,6,8,4,1,8,5,6,9,3,7,2,6,9,7,8,3,2,5,4,1}
EASYpuzzleSOL[126]={4,9,5,1,6,2,8,3,7,7,3,2,8,5,9,1,6,4,6,1,8,7,3,4,2,9,5,5,6,1,4,7,3,9,2,8,3,8,7,2,9,1,4,5,6,2,4,9,6,8,5,3,7,1,9,2,4,5,1,6,7,8,3,8,5,3,9,4,7,6,1,2,1,7,6,3,2,8,5,4,9}
EASYpuzzleSOL[127]={4,8,1,9,7,3,5,2,6,2,9,3,5,1,6,4,8,7,6,5,7,4,2,8,1,3,9,1,2,6,3,8,7,9,4,5,5,3,8,1,9,4,7,6,2,7,4,9,6,5,2,3,1,8,8,1,5,2,3,9,6,7,4,9,6,2,7,4,1,8,5,3,3,7,4,8,6,5,2,9,1}
EASYpuzzleSOL[128]={8,3,5,9,4,1,6,7,2,2,6,4,7,8,3,1,5,9,1,7,9,2,6,5,8,4,3,5,1,8,3,7,4,2,9,6,4,9,7,1,2,6,5,3,8,6,2,3,5,9,8,4,1,7,9,5,6,4,3,2,7,8,1,3,4,2,8,1,7,9,6,5,7,8,1,6,5,9,3,2,4}
EASYpuzzleSOL[129]={4,2,9,1,5,6,7,3,8,7,8,5,4,2,3,6,9,1,6,3,1,7,8,9,2,5,4,2,5,3,6,7,8,1,4,9,1,6,4,9,3,2,5,8,7,8,9,7,5,4,1,3,2,6,9,1,2,3,6,4,8,7,5,3,7,6,8,9,5,4,1,2,5,4,8,2,1,7,9,6,3}
EASYpuzzleSOL[130]={4,2,3,5,1,8,6,9,7,9,1,6,4,7,2,8,3,5,8,5,7,9,3,6,2,4,1,2,7,9,3,8,5,1,6,4,1,8,4,6,2,9,7,5,3,3,6,5,7,4,1,9,2,8,7,4,2,8,6,3,5,1,9,5,3,1,2,9,7,4,8,6,6,9,8,1,5,4,3,7,2}
EASYpuzzleSOL[131]={7,3,1,9,6,4,8,5,2,6,9,5,2,8,3,4,7,1,4,8,2,7,1,5,9,3,6,8,6,3,5,4,1,7,2,9,5,7,9,6,2,8,3,1,4,2,1,4,3,9,7,6,8,5,9,5,8,4,3,2,1,6,7,3,4,7,1,5,6,2,9,8,1,2,6,8,7,9,5,4,3}
EASYpuzzleSOL[132]={7,8,3,9,4,6,5,1,2,1,2,4,8,5,7,9,6,3,9,5,6,3,1,2,7,8,4,8,4,2,5,9,3,6,7,1,6,7,5,2,8,1,4,3,9,3,9,1,6,7,4,2,5,8,2,3,7,1,6,9,8,4,5,5,6,9,4,3,8,1,2,7,4,1,8,7,2,5,3,9,6}
EASYpuzzleSOL[133]={3,4,7,8,5,2,9,6,1,2,1,5,9,6,3,7,4,8,9,6,8,4,1,7,5,3,2,4,2,3,5,7,6,8,1,9,8,5,1,2,9,4,3,7,6,7,9,6,1,3,8,2,5,4,6,7,9,3,2,1,4,8,5,1,8,2,7,4,5,6,9,3,5,3,4,6,8,9,1,2,7}
EASYpuzzleSOL[134]={2,9,1,5,7,6,4,3,8,7,6,5,3,4,8,9,1,2,3,4,8,1,9,2,6,5,7,8,7,3,4,2,5,1,6,9,9,5,2,6,8,1,3,7,4,4,1,6,9,3,7,8,2,5,5,3,9,2,6,4,7,8,1,1,8,4,7,5,3,2,9,6,6,2,7,8,1,9,5,4,3}
EASYpuzzleSOL[135]={5,4,3,7,2,1,9,8,6,1,7,6,8,4,9,3,5,2,8,2,9,3,6,5,1,4,7,7,5,8,2,9,3,4,6,1,6,3,1,4,5,7,8,2,9,4,9,2,6,1,8,7,3,5,9,8,5,1,3,6,2,7,4,2,6,7,9,8,4,5,1,3,3,1,4,5,7,2,6,9,8}
EASYpuzzleSOL[136]={8,4,6,3,9,2,7,5,1,7,3,1,8,5,6,4,2,9,9,2,5,7,1,4,3,8,6,1,5,3,9,4,8,2,6,7,4,8,7,2,6,1,5,9,3,2,6,9,5,3,7,8,1,4,3,1,8,6,7,5,9,4,2,5,9,4,1,2,3,6,7,8,6,7,2,4,8,9,1,3,5}
EASYpuzzleSOL[137]={3,8,6,2,7,5,1,4,9,9,4,7,8,1,6,2,3,5,2,1,5,9,4,3,7,8,6,8,7,1,3,6,9,4,5,2,6,2,4,7,5,1,3,9,8,5,9,3,4,8,2,6,7,1,1,3,8,6,9,7,5,2,4,4,5,2,1,3,8,9,6,7,7,6,9,5,2,4,8,1,3}
EASYpuzzleSOL[138]={1,7,9,3,6,8,2,5,4,6,4,2,1,5,7,8,9,3,3,5,8,2,9,4,1,6,7,7,2,4,6,3,9,5,8,1,5,8,3,4,2,1,6,7,9,9,6,1,8,7,5,3,4,2,8,9,6,7,1,2,4,3,5,2,3,7,5,4,6,9,1,8,4,1,5,9,8,3,7,2,6}
EASYpuzzleSOL[139]={7,6,8,1,3,5,9,4,2,4,1,3,9,7,2,8,5,6,9,5,2,6,8,4,1,3,7,6,2,9,3,4,7,5,8,1,1,8,7,5,2,9,4,6,3,5,3,4,8,1,6,7,2,9,3,4,5,2,9,1,6,7,8,2,9,6,7,5,8,3,1,4,8,7,1,4,6,3,2,9,5}
EASYpuzzleSOL[140]={5,4,2,7,1,3,8,6,9,8,7,9,2,6,5,1,3,4,6,3,1,4,9,8,7,5,2,7,1,5,9,3,2,4,8,6,3,2,8,1,4,6,9,7,5,4,9,6,8,5,7,3,2,1,9,6,3,5,8,1,2,4,7,1,5,7,3,2,4,6,9,8,2,8,4,6,7,9,5,1,3}
EASYpuzzleSOL[141]={5,9,6,1,4,2,7,3,8,7,4,8,6,9,3,5,1,2,3,1,2,5,7,8,9,6,4,8,5,4,2,3,9,6,7,1,9,6,7,4,1,5,2,8,3,1,2,3,8,6,7,4,9,5,4,8,1,7,5,6,3,2,9,6,3,5,9,2,1,8,4,7,2,7,9,3,8,4,1,5,6}
EASYpuzzleSOL[142]={6,7,9,8,4,2,3,5,1,8,4,2,3,1,5,7,6,9,1,3,5,9,7,6,8,4,2,2,1,3,7,6,8,5,9,4,9,5,7,4,3,1,2,8,6,4,8,6,2,5,9,1,7,3,7,2,1,5,9,4,6,3,8,3,6,4,1,8,7,9,2,5,5,9,8,6,2,3,4,1,7}
EASYpuzzleSOL[143]={1,8,7,3,2,5,9,6,4,9,2,5,6,1,4,8,7,3,6,4,3,9,8,7,1,5,2,7,6,8,1,4,3,2,9,5,3,1,4,2,5,9,7,8,6,5,9,2,7,6,8,3,4,1,8,3,6,5,9,1,4,2,7,4,5,1,8,7,2,6,3,9,2,7,9,4,3,6,5,1,8}
EASYpuzzleSOL[144]={8,9,1,4,6,5,7,2,3,5,7,3,9,2,8,6,4,1,4,6,2,7,1,3,9,5,8,9,1,6,8,5,2,4,3,7,3,2,5,1,4,7,8,6,9,7,8,4,3,9,6,2,1,5,1,4,7,2,3,9,5,8,6,2,5,9,6,8,1,3,7,4,6,3,8,5,7,4,1,9,2}
EASYpuzzleSOL[145]={2,7,9,6,5,1,4,3,8,6,8,4,2,7,3,1,9,5,3,5,1,4,9,8,7,6,2,9,3,7,1,2,4,8,5,6,4,2,5,9,8,6,3,1,7,1,6,8,5,3,7,9,2,4,7,9,6,3,4,5,2,8,1,8,1,2,7,6,9,5,4,3,5,4,3,8,1,2,6,7,9}
EASYpuzzleSOL[146]={1,4,2,9,5,8,3,6,7,5,3,7,2,6,4,8,9,1,8,9,6,3,1,7,2,4,5,3,8,1,4,7,6,9,5,2,6,5,4,8,2,9,1,7,3,7,2,9,5,3,1,6,8,4,4,6,5,1,9,2,7,3,8,2,7,8,6,4,3,5,1,9,9,1,3,7,8,5,4,2,6}
EASYpuzzleSOL[147]={7,6,9,1,2,8,5,4,3,1,2,4,5,3,9,8,7,6,3,5,8,4,7,6,9,2,1,4,1,3,6,5,7,2,8,9,2,8,5,3,9,4,1,6,7,6,9,7,8,1,2,3,5,4,9,7,1,2,6,5,4,3,8,5,4,6,9,8,3,7,1,2,8,3,2,7,4,1,6,9,5}
EASYpuzzleSOL[148]={3,1,4,7,5,8,6,9,2,9,6,5,3,2,4,1,7,8,2,7,8,1,6,9,5,3,4,7,8,6,4,3,5,2,1,9,1,5,3,2,9,7,8,4,6,4,9,2,6,8,1,3,5,7,8,2,1,9,7,3,4,6,5,6,4,9,5,1,2,7,8,3,5,3,7,8,4,6,9,2,1}
EASYpuzzleSOL[149]={8,2,1,4,6,3,5,7,9,4,5,3,7,8,9,6,1,2,6,7,9,2,5,1,3,8,4,1,8,2,5,3,6,4,9,7,9,4,6,1,7,8,2,5,3,5,3,7,9,4,2,1,6,8,3,9,4,6,1,7,8,2,5,2,6,5,8,9,4,7,3,1,7,1,8,3,2,5,9,4,6}
EASYpuzzleSOL[150]={6,4,8,3,5,2,7,9,1,7,2,5,1,6,9,3,4,8,3,1,9,8,4,7,6,2,5,8,9,7,4,2,3,1,5,6,1,5,4,6,9,8,2,3,7,2,3,6,5,7,1,4,8,9,9,8,3,2,1,6,5,7,4,5,7,1,9,3,4,8,6,2,4,6,2,7,8,5,9,1,3}
EASYpuzzleSOL[151]={7,9,8,5,2,1,4,6,3,5,4,2,9,6,3,7,8,1,6,1,3,7,4,8,2,5,9,2,3,7,6,8,5,9,1,4,4,8,6,2,1,9,3,7,5,1,5,9,4,3,7,8,2,6,9,2,5,3,7,6,1,4,8,3,7,1,8,5,4,6,9,2,8,6,4,1,9,2,5,3,7}
EASYpuzzleSOL[152]={7,1,2,8,4,9,6,3,5,9,4,8,3,6,5,2,1,7,5,6,3,2,1,7,4,9,8,1,5,7,6,8,2,3,4,9,2,9,4,5,7,3,8,6,1,8,3,6,1,9,4,5,7,2,3,7,9,4,2,8,1,5,6,6,2,5,9,3,1,7,8,4,4,8,1,7,5,6,9,2,3}
EASYpuzzleSOL[153]={9,5,7,2,6,8,3,1,4,2,4,3,1,7,5,8,6,9,6,8,1,4,9,3,2,7,5,3,7,4,6,8,1,9,5,2,5,1,2,3,4,9,7,8,6,8,6,9,7,5,2,4,3,1,4,9,5,8,1,7,6,2,3,1,2,8,9,3,6,5,4,7,7,3,6,5,2,4,1,9,8}
EASYpuzzleSOL[154]={7,5,2,4,9,8,6,3,1,4,9,8,1,6,3,7,2,5,3,1,6,2,7,5,4,8,9,6,8,1,3,5,2,9,4,7,2,7,9,6,8,4,5,1,3,5,3,4,9,1,7,8,6,2,1,6,7,8,2,9,3,5,4,9,2,3,5,4,6,1,7,8,8,4,5,7,3,1,2,9,6}
EASYpuzzleSOL[155]={3,9,2,7,5,4,6,1,8,5,1,8,3,9,6,7,2,4,4,6,7,1,8,2,5,9,3,6,3,4,2,1,9,8,7,5,2,7,9,5,6,8,3,4,1,1,8,5,4,3,7,2,6,9,7,2,3,9,4,5,1,8,6,9,5,6,8,7,1,4,3,2,8,4,1,6,2,3,9,5,7}
EASYpuzzleSOL[156]={7,8,6,5,9,4,2,3,1,2,4,3,1,8,6,5,9,7,5,9,1,3,2,7,4,8,6,6,5,4,9,1,8,3,7,2,1,7,2,6,3,5,8,4,9,9,3,8,7,4,2,6,1,5,8,1,5,2,7,3,9,6,4,3,2,7,4,6,9,1,5,8,4,6,9,8,5,1,7,2,3}
EASYpuzzleSOL[157]={3,6,7,8,1,2,4,9,5,5,4,9,6,7,3,1,8,2,2,8,1,4,5,9,3,6,7,9,5,8,2,3,7,6,1,4,7,3,2,1,4,6,8,5,9,6,1,4,9,8,5,2,7,3,1,2,6,7,9,4,5,3,8,8,9,3,5,2,1,7,4,6,4,7,5,3,6,8,9,2,1}
EASYpuzzleSOL[158]={8,3,4,5,9,7,6,2,1,6,2,1,4,3,8,5,7,9,7,9,5,2,1,6,8,4,3,5,8,7,9,2,4,3,1,6,2,6,3,1,8,5,4,9,7,1,4,9,6,7,3,2,8,5,9,5,2,3,4,1,7,6,8,3,1,8,7,6,2,9,5,4,4,7,6,8,5,9,1,3,2}
EASYpuzzleSOL[159]={4,2,9,6,5,8,7,3,1,7,3,1,9,2,4,6,5,8,6,8,5,3,1,7,2,4,9,2,1,6,5,7,9,4,8,3,3,9,7,8,4,2,5,1,6,5,4,8,1,6,3,9,7,2,8,7,3,4,9,6,1,2,5,1,6,4,2,3,5,8,9,7,9,5,2,7,8,1,3,6,4}
EASYpuzzleSOL[160]={4,8,1,2,9,5,3,6,7,3,2,6,8,7,1,5,9,4,7,9,5,3,6,4,8,2,1,2,1,3,6,8,7,4,5,9,6,4,9,5,2,3,1,7,8,5,7,8,1,4,9,2,3,6,8,5,7,4,3,6,9,1,2,9,3,2,7,1,8,6,4,5,1,6,4,9,5,2,7,8,3}
EASYpuzzleSOL[161]={7,3,5,6,1,2,4,9,8,4,9,8,7,3,5,1,2,6,1,2,6,4,8,9,5,7,3,2,6,4,8,5,7,9,3,1,5,8,7,3,9,1,6,4,2,3,1,9,2,6,4,7,8,5,8,7,3,5,4,6,2,1,9,9,5,2,1,7,8,3,6,4,6,4,1,9,2,3,8,5,7}
EASYpuzzleSOL[162]={2,6,1,8,4,7,9,3,5,5,7,3,1,9,2,8,6,4,9,4,8,5,3,6,7,2,1,1,2,9,4,7,3,5,8,6,3,5,7,6,1,8,2,4,9,6,8,4,2,5,9,3,1,7,4,3,2,9,6,5,1,7,8,8,1,5,7,2,4,6,9,3,7,9,6,3,8,1,4,5,2}
EASYpuzzleSOL[163]={5,2,3,6,1,8,9,7,4,7,9,6,4,3,2,8,5,1,8,4,1,7,9,5,6,2,3,9,3,8,5,7,4,1,6,2,1,6,2,9,8,3,7,4,5,4,7,5,2,6,1,3,8,9,2,1,7,8,4,9,5,3,6,3,8,4,1,5,6,2,9,7,6,5,9,3,2,7,4,1,8}
EASYpuzzleSOL[164]={9,1,8,2,7,5,4,3,6,4,7,5,6,8,3,2,1,9,3,6,2,9,4,1,5,7,8,5,8,9,1,3,4,6,2,7,6,3,7,5,2,9,8,4,1,1,2,4,8,6,7,9,5,3,7,9,3,4,5,6,1,8,2,2,5,6,3,1,8,7,9,4,8,4,1,7,9,2,3,6,5}
EASYpuzzleSOL[165]={5,8,6,2,9,7,3,4,1,9,3,1,4,6,8,5,7,2,2,7,4,3,5,1,6,9,8,4,1,5,6,8,9,7,2,3,8,6,2,7,1,3,9,5,4,3,9,7,5,2,4,8,1,6,1,5,9,8,3,2,4,6,7,7,2,3,9,4,6,1,8,5,6,4,8,1,7,5,2,3,9}
EASYpuzzleSOL[166]={8,6,5,1,4,3,2,7,9,4,7,3,9,5,2,6,1,8,9,2,1,8,6,7,4,3,5,3,9,2,7,8,1,5,4,6,5,8,7,4,3,6,1,9,2,6,1,4,5,2,9,7,8,3,7,5,8,2,9,4,3,6,1,1,3,9,6,7,5,8,2,4,2,4,6,3,1,8,9,5,7}
EASYpuzzleSOL[167]={5,3,2,8,9,6,4,1,7,6,4,7,1,5,3,9,8,2,8,9,1,2,4,7,3,6,5,3,8,5,4,7,9,1,2,6,1,6,4,5,2,8,7,9,3,7,2,9,3,6,1,5,4,8,9,7,8,6,1,5,2,3,4,2,1,3,7,8,4,6,5,9,4,5,6,9,3,2,8,7,1}
EASYpuzzleSOL[168]={2,1,8,9,6,3,5,7,4,9,4,5,8,2,7,1,6,3,6,3,7,1,4,5,2,9,8,1,8,4,5,3,9,6,2,7,5,2,3,6,7,4,9,8,1,7,6,9,2,8,1,4,3,5,8,7,2,4,1,6,3,5,9,3,5,1,7,9,2,8,4,6,4,9,6,3,5,8,7,1,2}
EASYpuzzleSOL[169]={7,8,2,1,6,3,9,5,4,4,9,6,8,5,2,1,7,3,3,5,1,4,7,9,2,8,6,5,2,4,9,8,7,3,6,1,6,1,8,3,4,5,7,2,9,9,7,3,2,1,6,5,4,8,2,4,9,7,3,8,6,1,5,8,6,7,5,9,1,4,3,2,1,3,5,6,2,4,8,9,7}
EASYpuzzleSOL[170]={2,7,3,8,9,1,5,4,6,8,6,4,5,2,7,9,1,3,5,9,1,3,6,4,8,7,2,7,8,6,9,1,5,3,2,4,4,1,5,7,3,2,6,8,9,3,2,9,4,8,6,1,5,7,9,4,2,1,5,3,7,6,8,6,5,8,2,7,9,4,3,1,1,3,7,6,4,8,2,9,5}
EASYpuzzleSOL[171]={5,8,6,2,7,9,4,3,1,9,3,2,5,4,1,6,7,8,7,1,4,8,3,6,2,5,9,4,7,9,3,6,8,1,2,5,1,2,5,4,9,7,3,8,6,8,6,3,1,2,5,9,4,7,3,5,7,6,1,4,8,9,2,6,4,8,9,5,2,7,1,3,2,9,1,7,8,3,5,6,4}
EASYpuzzleSOL[172]={3,2,8,1,4,7,5,6,9,5,7,9,3,6,2,8,1,4,1,4,6,5,8,9,2,7,3,6,9,5,2,7,1,3,4,8,2,1,7,8,3,4,9,5,6,8,3,4,6,9,5,1,2,7,7,5,3,4,2,8,6,9,1,4,6,2,9,1,3,7,8,5,9,8,1,7,5,6,4,3,2}
EASYpuzzleSOL[173]={7,2,6,8,3,5,1,9,4,8,5,9,4,1,7,6,2,3,4,1,3,9,2,6,5,7,8,3,6,4,1,7,9,2,8,5,9,8,2,6,5,4,7,3,1,1,7,5,2,8,3,9,4,6,5,3,1,7,9,8,4,6,2,6,9,8,5,4,2,3,1,7,2,4,7,3,6,1,8,5,9}
EASYpuzzleSOL[174]={3,2,4,6,7,5,8,9,1,1,9,5,4,3,8,2,6,7,6,8,7,9,2,1,5,3,4,2,5,6,7,1,3,9,4,8,8,4,1,5,9,2,3,7,6,7,3,9,8,4,6,1,2,5,4,1,3,2,8,7,6,5,9,5,7,2,1,6,9,4,8,3,9,6,8,3,5,4,7,1,2}
EASYpuzzleSOL[175]={1,7,5,6,9,3,4,8,2,9,2,3,4,5,8,1,6,7,4,6,8,2,1,7,3,9,5,5,8,6,9,2,4,7,1,3,2,9,4,3,7,1,8,5,6,3,1,7,8,6,5,2,4,9,8,5,2,7,4,9,6,3,1,7,4,1,5,3,6,9,2,8,6,3,9,1,8,2,5,7,4}
EASYpuzzleSOL[176]={5,1,8,3,9,4,2,6,7,4,6,2,7,5,1,9,8,3,7,3,9,6,2,8,5,4,1,3,9,4,5,1,6,7,2,8,8,5,6,9,7,2,3,1,4,1,2,7,4,8,3,6,9,5,9,7,1,8,6,5,4,3,2,2,4,5,1,3,9,8,7,6,6,8,3,2,4,7,1,5,9}
EASYpuzzleSOL[177]={1,8,3,5,4,7,6,2,9,9,6,4,3,1,2,8,7,5,7,2,5,8,6,9,3,4,1,4,1,8,6,2,5,9,3,7,3,9,2,4,7,8,5,1,6,5,7,6,1,9,3,4,8,2,6,3,9,7,8,1,2,5,4,8,4,7,2,5,6,1,9,3,2,5,1,9,3,4,7,6,8}
EASYpuzzleSOL[178]={1,3,7,4,2,8,6,5,9,2,5,6,1,9,3,8,4,7,9,4,8,7,5,6,2,1,3,8,9,1,6,3,4,7,2,5,4,7,2,5,1,9,3,8,6,5,6,3,8,7,2,1,9,4,3,8,5,9,6,1,4,7,2,6,1,9,2,4,7,5,3,8,7,2,4,3,8,5,9,6,1}
EASYpuzzleSOL[179]={4,3,1,6,7,2,5,8,9,8,9,7,5,3,4,1,6,2,6,5,2,9,1,8,7,3,4,5,4,3,1,2,6,9,7,8,9,7,8,3,4,5,6,2,1,1,2,6,8,9,7,4,5,3,7,1,5,4,8,3,2,9,6,2,8,4,7,6,9,3,1,5,3,6,9,2,5,1,8,4,7}
EASYpuzzleSOL[180]={7,5,1,4,8,9,6,2,3,4,6,8,3,7,2,9,5,1,9,2,3,5,6,1,4,8,7,1,9,6,2,4,7,5,3,8,3,7,5,9,1,8,2,4,6,8,4,2,6,3,5,7,1,9,2,1,7,8,5,6,3,9,4,5,8,4,7,9,3,1,6,2,6,3,9,1,2,4,8,7,5}
EASYpuzzlePROB[1]={1,0,6,3,4,0,7,0,9,3,0,4,0,7,0,0,6,5,2,0,0,5,0,8,0,0,0,6,2,0,0,5,0,1,0,0,0,0,0,0,9,7,3,0,0,7,0,0,2,1,3,6,0,0,9,1,0,0,0,6,0,4,2,0,3,0,0,8,9,0,7,6,0,6,7,0,2,0,9,0,1}
EASYpuzzlePROB[2]={0,7,3,0,6,4,9,0,0,0,0,4,8,0,2,0,1,0,2,0,0,9,0,0,0,6,5,3,0,7,6,0,8,0,0,0,4,5,6,0,2,0,0,0,0,0,9,0,5,7,0,0,0,0,6,2,0,4,0,3,8,7,0,1,3,9,0,8,0,5,0,2,0,4,0,0,1,5,0,9,6}
EASYpuzzlePROB[3]={4,0,2,3,0,6,0,9,5,0,0,0,5,4,2,0,0,0,3,0,0,0,0,0,0,0,6,7,8,3,4,6,0,0,2,9,0,6,0,7,0,0,3,0,0,0,4,5,0,3,8,0,7,1,0,3,0,2,0,0,4,0,8,5,0,0,0,1,3,9,6,0,0,9,0,0,5,4,1,0,2}
EASYpuzzlePROB[4]={2,3,0,1,0,0,9,0,7,8,6,0,0,7,0,0,4,1,4,7,0,0,8,3,0,5,2,0,8,6,4,0,0,0,7,0,1,0,0,6,0,8,0,0,9,0,9,2,0,0,7,0,0,4,9,1,0,0,0,0,2,3,0,0,0,0,3,0,2,4,0,6,6,0,0,8,0,1,7,9,0}
EASYpuzzlePROB[5]={7,0,8,9,0,0,2,5,4,1,0,0,4,3,0,9,7,0,2,9,0,5,0,7,0,0,0,5,0,1,0,0,0,8,0,9,3,0,2,0,0,1,4,6,0,0,0,0,8,2,5,1,0,7,4,2,0,0,6,8,0,0,0,0,0,0,0,7,0,0,8,1,0,0,6,3,5,9,0,4,0}
EASYpuzzlePROB[6]={1,0,5,3,9,0,0,0,0,8,3,6,1,0,0,0,0,0,0,0,0,0,6,2,8,1,3,5,0,0,0,4,0,2,6,0,2,6,1,9,8,5,0,0,0,0,4,3,0,0,6,0,0,8,6,5,2,8,0,0,1,9,4,0,0,0,0,5,9,7,0,0,0,0,7,0,2,0,0,3,5}
EASYpuzzlePROB[7]={9,3,0,0,0,0,0,0,1,0,0,0,3,2,4,0,0,5,0,8,0,7,1,9,4,3,0,2,0,7,0,0,5,8,6,9,3,0,0,0,9,0,0,0,0,1,6,9,0,0,7,3,0,0,8,2,0,0,7,6,1,4,3,0,9,0,4,0,0,0,2,0,0,7,0,2,5,3,0,9,0}
EASYpuzzlePROB[8]={0,8,7,5,2,6,3,0,9,9,0,2,0,4,0,0,8,0,6,5,3,0,0,1,0,7,2,5,4,1,0,7,9,6,3,8,0,6,8,0,0,0,9,0,0,0,0,0,0,0,0,0,0,4,0,9,4,1,3,0,0,6,0,0,0,5,0,0,2,0,4,1,0,0,0,0,0,7,8,0,3}
EASYpuzzlePROB[9]={0,0,0,0,7,9,5,0,3,0,0,7,5,3,0,8,1,0,6,0,3,0,1,8,0,4,9,0,8,5,0,0,1,0,7,2,0,4,6,0,0,0,3,0,0,3,0,0,0,5,6,0,9,1,0,0,1,4,0,0,9,6,0,0,6,0,0,2,5,0,3,0,0,0,0,1,6,7,0,8,5}
EASYpuzzlePROB[10]={0,0,0,5,0,0,0,8,9,9,8,1,7,0,0,0,0,0,2,0,0,3,8,0,0,1,0,6,0,7,0,0,0,9,0,5,0,3,9,6,7,0,8,4,0,8,4,0,0,0,1,0,7,6,3,0,6,1,9,0,0,5,8,1,0,0,8,0,0,7,0,2,0,7,0,0,6,0,1,9,3}
EASYpuzzlePROB[11]={6,1,9,0,0,4,3,8,0,5,0,0,0,0,0,2,0,7,8,2,7,3,0,5,0,0,0,0,9,0,0,8,6,7,0,1,0,6,0,9,4,3,0,0,0,3,0,8,7,0,1,6,0,0,0,0,5,8,3,0,1,6,0,4,8,2,0,0,0,0,0,0,0,0,0,0,5,7,9,2,8}
EASYpuzzlePROB[12]={9,8,0,0,0,0,0,0,2,7,0,0,0,4,1,0,6,0,1,6,0,9,0,0,0,7,0,0,7,0,4,0,5,0,3,9,0,5,0,0,0,0,0,4,7,4,1,8,7,0,0,2,0,6,0,4,0,3,8,6,5,9,0,0,0,0,0,5,9,0,2,4,0,0,1,2,7,4,6,8,0}
EASYpuzzlePROB[13]={0,7,0,2,9,0,0,0,0,3,6,0,0,0,0,8,0,0,0,2,9,0,8,0,7,0,0,0,3,7,0,0,9,4,5,6,4,0,6,7,3,0,9,1,0,9,1,0,0,4,5,2,0,0,6,9,0,5,7,8,1,0,4,0,0,2,9,0,3,0,0,7,7,8,0,0,0,0,3,0,0}
EASYpuzzlePROB[14]={1,0,0,0,9,0,6,0,5,0,4,8,5,0,7,9,3,0,5,9,3,2,0,0,0,0,0,4,0,9,0,5,0,0,0,3,0,0,0,3,8,1,0,7,0,3,0,1,9,0,4,2,0,0,7,0,5,0,2,0,0,9,0,9,0,0,1,0,5,0,6,8,8,0,4,0,3,0,5,0,1}
EASYpuzzlePROB[15]={0,8,0,3,2,5,9,0,1,2,1,0,0,0,8,7,0,3,0,0,3,0,0,0,8,0,0,1,4,0,9,5,7,0,0,0,3,0,8,0,0,1,5,9,2,0,9,0,0,3,0,4,0,0,0,0,4,5,0,9,0,0,6,6,5,0,0,4,0,0,8,0,7,3,0,2,8,0,1,5,0}
EASYpuzzlePROB[16]={0,0,0,0,0,6,5,2,0,7,0,5,1,0,0,6,0,0,6,8,0,0,9,5,1,4,7,0,3,0,0,5,0,8,6,4,5,9,0,0,0,0,7,0,0,0,0,6,0,7,2,0,5,9,3,5,0,0,0,0,0,8,1,0,7,4,5,2,0,9,0,6,8,0,2,0,0,0,4,7,0}
EASYpuzzlePROB[17]={0,5,0,7,9,0,0,0,0,3,0,0,0,1,0,9,7,2,2,0,0,6,0,0,0,8,0,0,0,0,1,3,0,6,0,9,7,1,2,9,6,0,0,0,3,9,0,0,2,5,8,1,0,7,1,4,8,5,0,0,2,3,0,0,0,7,3,0,1,0,0,0,0,9,0,0,0,6,7,1,8}
EASYpuzzlePROB[18]={2,1,0,4,9,0,8,0,6,3,7,0,0,5,6,0,4,1,9,6,4,0,3,0,7,5,0,0,2,7,6,0,9,5,1,0,0,5,0,0,0,0,4,9,0,0,0,9,5,1,0,0,0,0,6,0,3,0,0,5,1,2,0,5,9,2,0,0,0,0,7,4,0,0,0,0,0,0,0,8,0}
EASYpuzzlePROB[19]={0,0,0,0,6,1,0,2,0,0,4,0,7,9,3,6,0,1,0,0,0,0,4,0,0,3,9,0,8,0,1,0,0,9,5,2,2,7,4,9,8,5,0,0,0,0,5,9,0,0,0,8,4,0,0,1,0,3,0,0,2,9,6,0,3,0,0,2,0,0,0,5,6,0,5,4,0,9,3,0,8}
EASYpuzzlePROB[20]={8,4,0,2,9,3,0,5,6,6,0,9,7,1,0,0,0,3,0,0,1,8,4,0,2,9,7,4,0,8,0,7,1,9,0,0,3,0,6,0,0,0,0,1,8,0,1,2,0,0,8,5,0,0,0,7,0,0,0,0,3,2,5,2,8,0,0,0,0,6,0,0,0,6,0,0,0,0,0,4,1}
EASYpuzzlePROB[21]={4,7,0,2,1,5,0,3,0,2,0,0,6,8,0,4,7,1,8,0,0,0,0,9,2,0,5,0,8,0,7,0,0,0,0,2,6,3,2,8,5,4,0,0,7,0,0,7,3,2,0,6,0,0,7,6,0,0,3,2,9,0,0,1,0,0,9,0,8,0,0,3,0,2,0,1,0,0,0,0,0}
EASYpuzzlePROB[22]={2,9,0,0,8,0,0,0,0,1,0,4,5,3,2,0,9,8,0,5,0,0,0,0,0,0,2,0,0,8,0,9,7,2,5,1,0,0,0,0,1,3,8,0,7,7,2,1,0,0,8,9,0,6,4,0,0,3,0,0,0,6,5,0,0,9,8,4,0,0,2,0,5,3,0,7,6,0,0,8,0}
EASYpuzzlePROB[23]={0,5,0,3,0,9,0,0,4,4,1,8,6,5,0,0,3,0,0,0,7,8,0,0,0,0,0,0,9,0,4,2,3,8,0,5,0,0,0,0,6,7,0,9,3,3,2,1,0,0,0,4,0,6,0,0,3,0,9,4,7,0,0,0,4,0,7,1,8,3,6,0,8,0,9,0,0,0,5,0,1}
EASYpuzzlePROB[24]={0,0,4,0,0,0,1,0,2,0,8,6,0,4,0,0,7,0,0,0,9,0,1,0,0,3,0,0,7,8,0,0,6,0,0,0,0,0,1,2,0,0,4,6,7,5,6,2,7,3,4,8,0,0,8,0,0,9,0,7,2,4,3,6,0,3,0,2,1,0,5,0,2,4,7,5,0,0,0,0,6}
EASYpuzzlePROB[25]={3,0,0,1,0,0,0,0,0,0,0,9,2,0,3,4,0,7,0,6,7,0,0,0,0,2,3,4,8,0,0,0,2,7,0,0,2,0,0,7,5,0,6,0,4,5,0,1,6,4,8,9,3,0,9,3,8,0,0,7,2,6,5,0,0,0,0,0,9,0,0,8,0,1,5,0,0,0,3,4,9}
EASYpuzzlePROB[26]={5,0,3,0,7,0,9,6,0,0,0,9,1,0,0,0,4,8,7,0,0,0,0,6,0,5,0,1,8,6,5,4,0,0,0,0,4,0,2,9,0,0,0,0,0,9,3,0,6,0,1,5,2,0,0,0,4,7,0,8,0,1,0,0,2,5,3,0,0,4,7,0,0,7,1,0,2,5,0,3,9}
EASYpuzzlePROB[27]={1,0,8,5,4,0,0,0,0,0,0,5,3,2,9,6,0,0,0,2,6,0,0,0,9,4,5,5,0,2,0,6,7,0,0,1,8,0,3,0,0,0,7,9,0,9,6,7,0,0,0,2,5,0,7,8,4,0,0,0,1,0,3,6,5,0,8,7,0,4,0,9,0,0,9,0,0,0,0,0,7}
EASYpuzzlePROB[28]={3,2,5,0,6,0,0,8,9,4,0,0,1,5,0,6,0,0,9,0,6,0,2,3,4,7,0,7,0,0,0,0,8,0,0,3,8,0,0,6,3,0,0,0,0,1,4,3,7,0,0,0,0,0,0,0,0,9,0,4,0,0,7,0,9,7,2,0,6,0,4,8,2,0,4,3,7,5,0,6,0}
EASYpuzzlePROB[29]={3,9,2,6,0,4,0,1,0,6,5,7,8,0,0,0,0,9,0,1,8,0,0,5,0,0,0,0,0,0,0,0,6,0,0,5,5,4,0,7,1,9,0,2,6,9,0,6,0,0,0,7,3,0,8,7,0,0,6,0,0,0,0,2,0,4,1,5,8,9,0,0,1,6,0,0,9,7,0,8,0}
EASYpuzzlePROB[30]={0,0,0,2,7,0,8,0,0,0,5,0,0,6,0,0,0,9,0,7,3,0,4,0,0,1,2,0,0,0,0,9,6,4,8,1,5,6,8,0,2,0,0,0,0,0,1,9,3,8,7,0,0,5,7,0,1,4,3,0,5,0,0,2,3,4,0,0,9,0,0,8,6,8,0,0,0,0,9,3,4}
EASYpuzzlePROB[31]={4,0,0,0,9,2,3,0,0,0,0,1,4,3,0,0,0,7,3,7,2,0,8,0,0,9,0,8,0,0,0,0,0,0,0,4,6,2,4,0,0,7,9,0,3,0,9,0,0,1,4,0,0,0,0,8,7,3,0,0,5,0,9,0,4,9,5,0,8,1,0,6,5,3,6,1,4,0,7,0,0}
EASYpuzzlePROB[32]={6,0,4,7,1,0,0,0,5,3,9,8,0,4,6,0,7,0,5,0,0,9,0,0,6,0,8,0,0,2,0,9,3,4,0,7,0,0,9,8,0,5,0,1,0,7,0,5,6,0,4,8,3,9,0,4,0,0,0,1,0,0,3,1,0,0,0,5,7,9,0,0,0,5,0,4,0,0,0,8,0}
EASYpuzzlePROB[33]={3,0,0,0,0,0,0,0,0,6,0,5,7,4,9,1,0,0,7,9,8,0,0,0,4,6,5,0,0,7,0,6,5,3,0,4,4,0,9,8,0,1,7,0,0,2,3,0,0,7,0,8,5,1,0,6,3,4,0,0,0,8,7,0,4,0,3,5,0,0,1,9,5,0,0,0,0,8,0,0,0}
EASYpuzzlePROB[34]={6,2,5,7,0,0,1,0,9,7,0,0,0,0,0,8,5,0,0,0,0,0,9,0,2,0,0,9,5,0,0,4,6,3,1,0,8,1,4,3,2,7,0,6,0,2,0,6,0,0,0,4,0,7,3,0,1,0,0,0,5,0,8,0,7,0,4,3,0,6,9,1,0,0,0,6,5,0,7,0,0}
EASYpuzzlePROB[35]={3,7,0,0,2,5,0,0,9,2,0,8,0,7,0,5,1,0,0,0,0,9,1,0,0,3,0,4,0,0,7,0,9,0,0,0,5,0,9,8,3,1,4,0,0,1,0,7,2,0,0,3,0,0,0,3,0,5,0,0,6,8,1,7,4,0,0,8,2,9,5,0,0,1,0,0,0,0,2,7,4}
EASYpuzzlePROB[36]={8,0,0,0,0,0,0,1,5,1,3,0,0,5,0,2,0,8,5,9,7,2,0,0,3,4,6,0,8,0,0,0,2,9,0,7,0,1,0,5,6,7,8,0,4,0,7,3,0,0,9,5,0,1,0,0,0,4,2,3,0,5,9,0,0,0,0,0,0,0,8,2,0,0,1,6,9,0,0,7,0}
EASYpuzzlePROB[37]={0,3,8,2,0,9,6,0,4,0,7,0,0,5,0,1,0,8,4,6,5,0,8,0,0,0,2,2,0,0,3,0,7,0,0,9,5,0,0,8,1,0,4,0,0,0,8,6,5,0,0,0,0,1,3,2,0,6,0,0,7,1,5,8,1,0,0,0,5,0,0,0,6,0,0,0,2,1,8,9,0}
EASYpuzzlePROB[38]={5,0,0,6,0,0,0,3,7,7,4,8,0,2,0,0,0,6,0,0,0,0,0,0,0,5,4,3,5,2,0,4,6,1,7,8,6,0,0,0,0,8,5,0,0,0,8,0,0,0,2,6,0,0,0,3,0,2,9,0,4,6,0,4,1,5,8,0,0,0,2,0,9,2,6,4,0,3,0,8,0}
EASYpuzzlePROB[39]={6,8,7,5,0,0,0,2,4,5,9,0,0,0,2,7,0,0,0,0,0,6,7,8,0,9,0,4,2,0,0,0,3,1,0,0,1,0,3,9,8,0,2,5,7,0,0,0,2,0,6,4,0,0,2,7,5,0,0,0,0,1,3,0,0,0,0,2,7,8,0,5,8,0,4,0,0,0,9,0,2}
EASYpuzzlePROB[40]={0,1,9,6,8,5,0,0,0,0,0,0,0,0,0,0,7,0,4,0,0,9,0,7,0,0,6,0,7,0,3,9,4,0,6,0,9,4,3,5,0,2,1,0,0,0,0,6,0,1,0,0,9,3,3,0,8,0,7,6,0,0,9,2,9,7,8,4,0,0,5,1,1,0,0,0,5,0,7,0,8}
EASYpuzzlePROB[41]={9,0,7,0,0,0,0,8,0,0,5,0,0,8,6,0,0,7,0,4,6,7,2,1,3,0,9,1,0,8,5,9,4,0,0,6,0,0,2,0,0,0,9,4,0,5,9,0,2,6,0,1,0,0,0,8,9,0,3,0,2,7,0,0,7,0,0,4,0,0,0,0,4,0,1,8,7,9,0,0,3}
EASYpuzzlePROB[42]={0,4,5,9,0,8,0,1,0,1,6,0,0,0,3,0,0,0,0,8,0,0,7,1,0,5,0,4,7,1,8,0,0,0,9,5,9,2,6,1,4,5,0,0,8,8,0,3,0,0,0,0,0,1,6,0,0,5,2,7,0,0,0,2,3,0,0,1,0,0,4,0,0,9,0,0,8,4,1,0,2}
EASYpuzzlePROB[43]={0,0,8,0,7,4,2,9,0,0,0,2,6,0,0,0,7,0,6,4,7,0,0,2,0,0,0,8,0,9,0,0,3,0,0,0,0,2,3,9,8,6,7,4,1,0,1,6,7,2,5,0,3,0,0,0,0,0,0,0,3,0,0,2,6,4,5,0,0,0,0,0,7,3,0,2,1,8,9,0,4}
EASYpuzzlePROB[44]={2,6,0,4,5,0,0,0,0,1,0,0,0,8,0,6,7,2,7,0,0,0,0,0,0,4,8,0,0,0,2,0,0,0,0,0,8,0,0,9,0,6,0,2,0,0,7,0,8,1,3,9,6,4,9,0,7,0,0,4,2,8,1,0,8,6,5,0,1,0,0,3,3,2,1,7,0,8,4,0,0}
EASYpuzzlePROB[45]={0,0,9,2,8,0,4,3,6,5,2,8,3,0,6,7,0,0,3,0,0,0,0,9,0,0,5,0,0,0,0,9,0,0,8,0,0,0,0,6,3,0,9,1,0,0,1,0,8,5,0,3,0,0,4,0,5,0,0,3,0,7,8,2,0,3,0,7,8,0,4,9,7,0,1,9,6,0,0,5,0}
EASYpuzzlePROB[46]={3,8,7,0,0,0,2,0,0,6,5,0,0,2,7,0,0,0,0,9,0,0,6,0,0,0,5,0,3,0,0,0,0,7,0,0,0,6,0,5,7,0,3,2,9,0,0,9,0,8,0,0,0,0,8,2,0,0,9,4,0,3,1,9,1,5,0,3,8,0,6,7,7,4,0,6,1,5,0,8,2}
EASYpuzzlePROB[47]={9,0,0,6,7,0,3,4,1,6,1,0,0,9,0,5,0,0,0,7,0,8,0,5,6,9,2,8,9,0,0,0,7,1,5,0,0,4,5,0,0,0,0,2,3,0,0,0,4,0,0,0,6,0,0,8,0,0,0,9,4,0,0,4,0,0,7,0,0,0,1,0,5,6,9,1,0,3,2,8,7}
EASYpuzzlePROB[48]={3,5,7,0,0,4,0,9,0,0,0,2,9,6,3,0,0,4,0,0,6,0,0,5,1,3,0,6,0,0,0,0,0,0,5,3,0,0,4,6,0,0,2,0,7,8,7,0,0,0,9,0,0,1,7,0,0,4,0,2,8,1,0,0,1,9,5,0,0,0,0,6,5,0,0,7,1,6,3,2,9}
EASYpuzzlePROB[49]={5,0,0,4,0,0,9,2,1,4,8,2,1,0,5,3,0,0,1,0,9,0,0,0,4,0,0,3,2,6,8,0,0,0,0,0,8,0,4,0,6,7,2,0,9,7,0,1,0,0,0,0,6,0,9,0,3,0,0,8,0,4,0,0,7,0,0,0,0,1,9,8,6,4,0,0,0,1,5,3,7}
EASYpuzzlePROB[50]={6,2,3,0,7,0,0,9,0,4,0,7,0,5,9,0,0,6,0,0,0,2,0,0,0,1,7,0,3,0,0,0,5,8,2,0,0,0,0,0,4,0,6,5,1,0,6,1,0,0,0,7,0,0,0,0,2,6,0,0,0,8,0,9,5,8,7,0,3,0,6,4,0,4,6,5,1,8,9,0,2}
EASYpuzzlePROB[51]={7,3,4,6,5,1,0,9,8,0,0,5,0,0,0,7,0,3,0,2,6,7,3,0,5,1,4,0,0,0,0,4,3,0,2,7,0,6,9,0,2,0,0,0,0,0,0,0,0,0,0,0,3,5,6,5,8,0,9,4,3,0,0,1,9,0,0,0,5,8,0,6,2,0,7,0,0,0,1,0,0}
EASYpuzzlePROB[52]={0,0,5,1,8,0,0,2,0,2,8,0,4,0,0,0,3,5,0,3,6,2,5,9,0,7,0,0,7,0,0,0,0,0,0,9,5,1,2,3,0,0,4,8,0,8,4,0,7,1,0,0,0,0,3,0,4,0,0,2,0,9,0,9,2,8,0,3,0,7,4,0,0,6,0,0,4,0,3,5,0}
EASYpuzzlePROB[53]={5,0,4,0,8,0,9,2,0,0,0,3,0,2,9,0,7,6,0,2,7,6,3,0,4,0,0,0,0,9,0,0,8,3,5,2,0,0,0,2,5,0,6,9,0,3,5,0,0,0,0,0,4,1,0,0,0,3,7,4,0,0,0,0,0,0,0,1,0,7,8,9,7,1,5,8,0,6,0,3,0}
EASYpuzzlePROB[54]={4,0,0,2,5,0,0,0,7,0,0,0,0,0,7,0,1,0,3,1,0,0,8,0,2,0,5,0,7,0,4,6,8,9,0,0,0,0,5,7,0,2,4,0,8,8,4,0,0,9,3,0,2,1,0,9,0,0,3,4,0,0,0,5,2,3,0,0,6,1,8,4,0,0,4,0,2,0,3,0,6}
EASYpuzzlePROB[55]={9,6,2,1,0,0,3,8,0,0,0,7,0,0,3,9,1,0,0,4,3,9,0,0,7,6,5,7,0,0,0,0,4,6,0,0,4,0,8,7,0,6,0,0,0,6,0,0,3,9,0,0,4,0,0,8,0,4,0,0,0,0,6,3,0,0,5,6,7,0,2,0,5,7,6,0,2,0,0,9,3}
EASYpuzzlePROB[56]={0,0,2,9,1,0,0,4,0,4,0,7,3,0,2,0,6,8,0,8,0,4,0,6,5,1,0,7,0,0,1,0,0,0,0,4,2,6,0,5,0,0,1,0,0,8,3,1,0,4,0,2,0,5,0,7,9,8,3,0,0,2,0,0,4,8,0,6,5,7,0,0,0,0,6,0,0,4,0,0,1}
EASYpuzzlePROB[57]={0,0,0,0,0,0,0,0,0,1,3,0,0,4,6,9,7,0,7,5,9,1,2,0,4,8,0,0,0,0,5,0,8,3,4,0,0,4,3,0,0,0,7,5,8,0,0,0,3,0,4,0,2,1,5,0,4,0,9,7,0,3,0,9,0,8,0,3,1,0,6,7,0,0,7,0,0,5,0,9,4}
EASYpuzzlePROB[58]={0,0,6,1,2,0,0,7,4,0,7,0,4,0,0,0,1,0,0,4,2,0,0,8,0,5,3,0,0,0,0,0,0,0,0,1,5,2,0,7,1,0,4,0,0,0,6,1,0,8,4,5,0,7,2,0,0,9,6,0,0,4,8,0,9,4,0,5,1,2,0,0,0,0,8,0,4,7,1,9,5}
EASYpuzzlePROB[59]={2,0,0,0,1,0,0,8,0,8,0,4,0,6,5,9,0,0,1,0,0,2,0,0,0,6,3,3,7,0,0,0,1,6,0,8,9,2,6,0,0,0,0,0,7,4,0,1,6,0,7,2,5,0,0,0,0,8,0,0,0,9,4,6,4,8,1,9,3,5,7,0,7,0,0,4,5,0,0,0,0}
EASYpuzzlePROB[60]={0,5,2,0,0,4,7,0,8,0,0,0,2,1,0,5,0,6,6,1,0,0,7,0,9,0,2,3,0,8,0,0,0,0,9,1,4,9,6,8,3,0,0,5,0,0,0,1,0,0,0,4,8,0,0,0,5,0,8,6,3,7,9,0,3,9,4,2,0,0,6,0,8,0,0,9,0,0,0,0,4}
EASYpuzzlePROB[61]={0,3,0,0,2,1,6,9,0,2,0,0,0,0,0,0,0,0,0,6,8,0,3,7,4,0,1,1,0,0,3,4,0,7,0,0,8,7,3,2,6,5,9,1,0,6,4,0,0,7,9,2,8,0,7,1,4,9,0,0,5,0,0,0,9,0,0,1,4,0,0,0,3,0,0,0,0,0,1,0,9}
EASYpuzzlePROB[62]={8,7,0,9,0,0,5,0,0,0,0,0,0,7,0,0,0,1,6,1,0,3,0,4,0,8,0,0,8,1,5,0,6,2,7,9,0,0,5,7,0,0,0,3,0,0,0,9,4,0,8,1,5,0,0,4,6,2,9,0,7,1,0,0,0,8,0,0,7,0,9,2,9,2,0,0,8,3,0,4,0}
EASYpuzzlePROB[63]={0,3,0,8,0,6,1,0,0,8,0,0,0,0,0,0,5,7,5,0,4,7,1,0,0,0,0,0,0,1,0,3,5,7,9,0,7,0,6,9,0,8,3,0,4,0,0,3,1,6,7,2,8,5,3,0,0,6,8,1,4,0,9,1,0,0,0,0,0,5,0,3,6,0,9,0,0,0,8,0,0}
EASYpuzzlePROB[64]={0,0,8,5,6,9,0,3,1,6,5,0,0,1,3,0,0,0,0,9,0,2,0,4,8,6,5,7,0,0,3,0,0,1,0,0,9,3,5,4,0,0,0,0,6,2,0,0,6,9,7,0,4,0,0,7,9,1,0,0,0,0,0,0,0,2,0,0,5,6,9,8,0,6,0,9,0,8,0,0,7}
EASYpuzzlePROB[65]={2,0,0,4,0,0,6,8,7,0,6,0,0,9,0,0,0,1,7,3,0,6,0,0,9,0,0,3,0,0,8,6,0,1,7,0,1,0,4,0,7,2,8,0,0,6,0,0,1,4,5,2,3,0,9,0,3,0,0,1,0,6,0,0,0,2,0,8,0,0,1,0,8,0,6,7,3,4,5,0,0}
EASYpuzzlePROB[66]={0,0,1,0,0,0,9,4,8,3,0,4,1,8,9,7,5,2,2,9,8,0,0,5,0,0,0,1,3,2,0,0,7,5,0,0,0,0,9,3,0,0,2,8,1,0,8,5,9,2,0,0,7,0,9,1,6,0,3,4,0,0,0,0,0,7,0,9,0,0,0,0,0,2,0,0,0,0,6,0,4}
EASYpuzzlePROB[67]={0,0,2,9,7,5,0,6,0,0,7,0,0,2,0,0,4,5,0,0,5,1,0,3,2,0,7,6,0,8,5,0,0,0,7,4,0,0,4,7,0,0,0,1,9,1,5,0,0,9,0,0,0,0,7,4,0,0,0,1,9,3,0,5,3,1,4,8,0,7,0,6,2,0,9,0,0,0,0,5,0}
EASYpuzzlePROB[68]={0,0,2,0,4,7,3,8,0,3,8,0,0,1,0,0,9,2,1,0,9,0,2,0,0,0,6,0,0,6,0,8,1,0,2,3,0,9,0,4,0,0,0,0,0,8,0,3,7,9,2,0,4,0,0,0,4,1,0,6,5,3,8,5,0,0,2,3,0,0,7,0,7,0,0,8,0,9,0,6,0}
EASYpuzzlePROB[69]={9,0,0,0,0,4,0,8,6,5,1,6,0,3,7,0,4,0,8,7,0,2,6,9,3,0,0,7,0,0,0,0,6,0,9,0,0,0,5,0,7,2,6,1,0,6,0,1,5,9,8,0,0,0,2,5,0,0,0,0,1,0,0,4,3,0,6,0,0,0,2,9,1,0,0,7,0,5,0,0,4}
EASYpuzzlePROB[70]={9,4,0,2,7,0,8,5,6,8,2,5,0,9,0,1,3,0,6,7,0,0,5,1,0,2,0,0,0,0,0,1,0,7,0,5,1,3,0,4,0,5,0,6,0,5,0,6,0,0,0,0,0,0,0,1,0,0,6,0,0,0,3,7,5,4,0,0,8,6,1,2,3,0,9,0,4,0,0,0,0}
EASYpuzzlePROB[71]={2,7,0,1,3,0,9,5,8,3,0,8,4,0,0,6,0,1,0,1,9,0,2,5,4,7,3,0,6,0,2,0,0,0,0,0,9,3,7,0,0,0,0,8,0,0,0,5,6,0,0,0,9,7,0,0,0,0,0,1,8,4,2,5,4,2,0,0,0,3,0,0,0,0,0,9,4,2,0,0,5}
EASYpuzzlePROB[72]={8,5,0,0,0,6,0,0,0,0,9,7,0,0,0,5,6,4,6,0,0,1,0,0,8,7,0,0,2,0,0,6,0,1,5,7,0,0,8,0,0,0,0,9,6,5,6,0,7,0,0,0,8,0,3,4,0,2,0,7,9,0,5,2,8,5,6,9,1,0,0,0,7,1,0,0,4,0,0,2,8}
EASYpuzzlePROB[73]={0,0,1,2,0,8,9,4,3,7,3,0,6,0,4,0,0,0,0,0,0,5,0,1,0,0,8,5,0,6,0,4,3,0,2,9,2,1,0,9,0,6,0,3,0,3,0,0,1,0,0,8,7,6,9,4,3,8,0,0,6,1,0,8,0,0,0,0,0,5,0,4,0,0,5,0,6,0,3,0,0}
EASYpuzzlePROB[74]={8,3,0,0,4,1,0,5,7,0,0,0,3,0,8,0,1,0,0,0,0,5,0,2,8,0,0,0,9,0,8,5,6,4,0,0,0,0,8,2,0,0,9,3,0,2,6,1,0,3,0,5,7,0,1,0,6,4,2,9,0,0,0,0,0,2,0,0,3,0,0,9,9,0,3,7,0,0,1,4,2}
EASYpuzzlePROB[75]={4,0,2,3,0,1,7,6,5,7,0,5,9,0,0,0,1,0,3,8,0,6,5,0,2,0,9,0,5,0,0,0,0,1,3,0,2,4,9,0,0,0,0,8,7,1,0,0,0,7,6,0,0,4,0,2,3,7,0,8,4,0,0,0,1,0,0,2,5,0,0,0,0,0,0,0,3,9,5,0,6}
EASYpuzzlePROB[76]={9,6,0,0,0,0,4,0,0,0,1,8,4,0,7,3,0,2,2,7,0,6,0,0,9,0,0,4,5,6,0,7,0,0,9,3,7,3,1,0,0,0,0,0,8,0,0,2,3,4,0,1,7,6,0,8,9,7,0,0,0,2,0,6,2,0,0,0,0,8,1,0,0,4,5,0,0,8,7,0,0}
EASYpuzzlePROB[77]={9,7,3,0,5,0,4,0,8,0,2,0,7,1,0,0,9,6,0,6,0,0,0,3,5,0,0,5,0,0,3,7,1,0,4,2,3,4,0,0,6,0,9,7,0,0,1,7,0,0,9,0,3,0,6,0,9,5,0,7,1,0,0,0,8,2,0,0,0,7,5,9,0,0,0,0,9,8,0,0,0}
EASYpuzzlePROB[78]={0,0,9,0,1,7,5,4,2,0,0,0,9,0,0,0,0,8,7,0,8,0,0,0,0,3,9,8,5,0,6,3,0,0,2,0,0,4,0,0,0,5,8,0,3,0,7,3,1,0,8,9,0,0,4,9,2,7,8,0,0,5,0,0,3,0,0,9,0,0,8,7,0,8,0,3,5,2,0,0,1}
EASYpuzzlePROB[79]={3,0,9,0,5,2,1,7,0,5,4,0,9,0,0,8,0,6,8,0,1,4,0,7,0,0,3,4,8,0,0,7,1,0,5,9,0,0,0,0,0,0,0,4,2,0,0,5,2,0,4,6,0,0,0,0,4,1,2,8,0,0,0,9,1,0,3,0,5,0,0,0,0,0,3,7,0,6,4,0,1}
EASYpuzzlePROB[80]={0,3,2,0,0,4,0,8,0,0,6,0,1,0,2,0,5,0,4,0,0,0,0,0,2,3,0,0,5,0,0,4,0,3,1,2,3,9,4,8,2,0,0,7,0,2,0,0,0,0,0,9,0,0,1,0,0,5,0,9,8,0,7,0,8,7,2,0,3,4,6,5,6,2,0,4,0,0,1,0,3}
EASYpuzzlePROB[81]={0,5,0,7,2,4,0,1,3,2,0,3,0,0,0,0,0,4,0,7,1,0,6,3,0,5,8,5,2,0,0,1,7,0,0,0,1,3,4,0,0,6,0,0,7,9,0,0,5,0,8,3,2,1,7,1,2,0,3,0,8,0,0,6,0,9,1,7,0,0,0,0,3,0,0,6,0,0,0,0,0}
EASYpuzzlePROB[82]={0,3,8,0,4,6,0,1,0,0,0,5,1,3,9,6,0,7,1,7,0,8,0,0,0,0,9,5,0,0,3,0,7,1,0,6,0,0,0,0,0,5,0,9,2,0,0,2,0,0,4,8,5,3,0,9,0,2,6,0,0,0,4,0,0,7,5,9,0,0,6,0,0,5,3,0,0,1,0,2,8}
EASYpuzzlePROB[83]={0,2,0,0,4,5,6,0,1,0,3,6,2,1,9,0,8,5,0,9,5,0,0,7,4,0,2,0,7,0,0,9,0,0,0,4,2,5,4,0,0,0,0,0,8,9,0,0,4,0,6,1,2,0,0,0,0,0,0,0,2,4,9,3,1,9,5,2,0,0,0,0,0,4,0,0,6,8,5,0,0}
EASYpuzzlePROB[84]={3,0,0,1,0,0,7,6,5,6,5,0,0,8,0,0,9,0,7,0,0,5,6,9,0,4,0,2,0,0,0,5,0,4,0,0,0,0,3,9,2,6,0,1,7,1,0,6,0,7,4,2,5,0,0,3,7,6,0,0,5,0,1,0,2,0,4,1,0,0,8,0,0,0,0,2,0,0,0,7,4}
EASYpuzzlePROB[85]={3,0,6,1,0,5,9,2,8,8,0,0,0,9,0,0,7,1,0,0,1,0,0,3,0,6,5,0,4,0,0,0,0,0,0,2,2,1,8,4,0,7,5,0,6,0,3,9,5,2,8,0,0,0,0,6,0,8,7,0,2,0,0,4,0,0,0,1,0,6,0,0,0,0,2,3,0,6,0,8,4}
EASYpuzzlePROB[86]={8,4,6,0,0,0,5,1,2,0,0,0,0,0,6,0,0,8,0,7,0,0,8,0,3,0,0,0,0,0,0,0,0,0,3,5,0,5,0,3,7,9,0,0,6,0,1,3,8,0,4,7,0,9,0,3,0,9,0,7,2,4,1,7,9,0,2,0,8,6,5,0,0,6,0,1,3,5,0,9,0}
EASYpuzzlePROB[87]={2,0,0,5,8,0,7,0,4,3,4,0,0,7,0,0,1,6,1,5,0,0,6,3,2,9,0,0,2,0,0,0,7,8,0,9,0,8,0,2,4,0,0,7,0,0,0,9,1,0,8,6,4,0,0,1,0,0,9,0,4,2,0,5,7,2,0,1,4,0,0,3,0,0,4,0,0,5,0,0,0}
EASYpuzzlePROB[88]={7,0,8,0,0,6,0,1,5,0,0,4,1,0,7,6,3,8,0,6,1,0,0,4,9,2,7,9,7,0,0,6,1,0,0,3,0,8,2,4,7,3,0,0,0,4,0,0,5,8,0,0,7,0,0,2,0,0,0,5,0,0,0,6,1,0,9,0,0,0,0,2,0,0,9,7,3,0,1,0,0}
EASYpuzzlePROB[89]={0,0,3,0,5,0,0,1,8,9,1,4,0,7,0,5,2,0,5,0,2,0,0,0,0,7,6,0,2,0,5,0,0,7,3,0,7,0,5,0,0,0,6,0,1,0,0,9,7,6,0,0,5,0,0,6,0,0,4,5,3,0,0,0,9,7,3,2,6,1,0,0,0,5,8,0,0,0,2,6,4}
EASYpuzzlePROB[90]={0,7,0,0,3,5,0,0,0,4,5,0,8,9,6,1,0,7,9,3,8,7,2,0,4,6,0,0,4,0,0,0,8,0,5,3,0,8,0,0,0,0,0,0,0,0,2,0,0,4,9,7,0,0,2,9,0,0,8,3,0,7,1,5,0,3,9,0,2,0,0,0,0,6,7,0,5,0,0,2,9}
EASYpuzzlePROB[91]={1,9,2,4,0,0,8,0,3,0,0,7,9,1,0,2,4,5,0,5,3,0,0,2,9,0,0,0,0,5,3,0,1,0,0,0,0,3,1,2,0,4,7,5,0,0,0,4,0,0,0,1,3,0,2,4,0,7,3,0,0,0,0,5,0,8,6,0,9,0,0,0,3,7,9,0,0,5,6,0,0}
EASYpuzzlePROB[92]={1,0,5,7,8,0,0,2,0,0,2,0,3,0,0,6,0,7,0,7,0,9,0,6,0,5,1,5,0,6,1,4,0,0,0,2,3,9,0,0,5,7,0,8,4,0,1,4,2,0,0,0,0,0,2,0,7,8,3,0,0,0,0,0,0,1,0,0,2,0,0,9,0,4,9,5,0,1,0,3,8}
EASYpuzzlePROB[93]={6,0,0,0,0,5,3,0,1,7,0,2,4,0,1,0,0,0,4,0,0,3,6,0,0,9,7,0,9,0,8,0,0,6,1,0,1,5,0,2,4,7,9,0,0,3,0,8,0,1,6,5,0,2,0,0,0,0,3,9,0,5,0,0,0,1,5,7,0,4,3,0,0,0,0,6,8,4,0,2,0}
EASYpuzzlePROB[94]={0,0,0,9,1,0,0,4,0,6,1,0,0,0,0,5,0,0,4,5,9,0,0,7,3,1,2,7,4,1,0,5,0,0,9,3,0,8,0,0,4,0,0,0,1,0,0,0,1,7,8,4,2,6,9,0,2,0,0,3,0,0,0,5,3,4,0,2,0,9,6,0,0,0,8,4,0,6,2,0,0}
EASYpuzzlePROB[95]={3,0,7,0,8,4,0,0,2,5,8,0,0,0,2,1,0,0,9,6,0,0,1,0,0,0,0,7,9,5,0,4,0,3,0,8,0,2,0,8,7,6,0,0,0,6,0,8,9,5,0,7,0,1,0,3,9,0,2,7,6,0,5,0,0,1,5,6,9,0,0,3,0,0,0,0,0,0,9,7,0}
EASYpuzzlePROB[96]={2,4,0,0,0,0,6,0,0,0,0,7,2,4,6,0,1,8,6,0,0,7,3,8,0,5,0,0,0,3,0,8,0,0,4,6,7,0,5,0,6,1,0,2,0,4,0,0,3,0,7,1,9,5,0,0,1,8,5,0,2,7,0,8,0,2,0,0,4,0,0,0,3,7,0,0,9,0,5,0,0}
EASYpuzzlePROB[97]={3,0,0,9,7,1,2,0,0,7,0,0,5,0,6,0,0,3,6,0,2,4,0,8,0,0,0,0,3,0,0,9,0,1,5,0,0,7,9,3,0,0,8,0,4,0,6,0,0,8,0,3,7,0,9,0,3,6,0,7,5,0,0,8,0,0,2,5,3,0,0,0,0,4,7,8,0,0,6,3,2}
EASYpuzzlePROB[98]={0,0,4,5,1,6,0,0,0,0,0,7,8,9,3,4,6,0,9,0,0,2,0,0,5,3,8,7,8,0,3,0,0,2,0,4,1,0,0,0,0,0,3,9,0,0,4,0,7,2,1,0,0,0,0,7,1,0,5,4,8,2,0,4,9,0,1,3,0,0,0,0,0,2,3,0,0,0,1,0,9}
EASYpuzzlePROB[99]={0,0,3,7,0,2,5,0,0,1,0,2,0,0,0,9,8,6,5,0,0,8,6,1,0,2,3,0,5,0,0,0,7,4,1,0,7,2,0,5,0,0,0,9,8,0,0,0,2,4,0,6,7,0,0,9,0,0,0,0,1,0,0,4,1,8,9,5,3,2,0,7,0,0,0,1,0,4,0,5,0}
EASYpuzzlePROB[100]={0,6,1,0,3,8,0,7,9,0,9,8,0,7,0,5,0,0,7,0,4,0,0,9,1,0,0,6,0,0,0,1,4,8,0,2,8,0,0,0,0,0,0,1,3,0,1,9,0,8,0,0,0,6,9,5,7,8,0,0,0,0,1,0,0,0,1,0,5,0,8,0,1,0,2,7,9,0,6,4,5}
EASYpuzzlePROB[101]={0,7,0,1,3,5,8,0,9,0,0,0,2,0,0,7,5,0,4,3,0,0,9,0,0,2,0,6,2,0,5,7,0,3,1,8,9,0,1,4,0,3,2,0,0,0,0,0,6,0,1,0,9,0,0,4,0,8,0,0,0,3,6,0,9,8,0,0,0,1,7,0,7,0,3,9,0,4,5,0,0}
EASYpuzzlePROB[102]={0,5,0,6,0,9,0,1,2,2,0,1,0,4,0,3,0,6,0,3,0,0,0,0,4,9,0,6,2,9,1,5,7,8,0,0,0,8,0,0,0,0,0,6,0,0,4,7,8,0,0,5,2,9,0,0,0,3,9,0,0,7,5,9,1,3,0,7,0,0,0,4,0,0,2,0,8,0,0,3,1}
EASYpuzzlePROB[103]={6,1,2,3,0,7,0,0,0,0,4,3,6,0,1,0,0,9,0,0,5,4,0,8,0,1,6,7,0,0,9,6,0,1,2,8,0,0,0,1,0,0,0,0,4,1,0,0,0,4,2,0,0,7,5,2,0,7,3,0,0,8,0,3,0,7,0,0,0,4,0,0,4,6,0,0,8,9,0,5,3}
EASYpuzzlePROB[104]={2,5,3,0,0,0,1,6,7,0,8,6,7,2,0,0,9,0,9,0,0,3,5,0,8,0,2,0,0,8,5,0,4,0,0,6,0,4,0,1,0,2,0,8,0,3,0,0,0,9,8,4,0,1,0,0,2,0,0,5,0,0,0,0,6,0,2,0,0,0,1,8,0,1,4,8,6,7,9,0,0}
EASYpuzzlePROB[105]={0,2,0,0,7,0,0,0,5,0,6,8,0,0,5,7,4,0,0,7,0,4,0,0,3,1,6,6,0,5,0,0,7,2,8,1,7,0,1,0,5,4,6,3,9,2,0,0,0,1,0,0,0,7,8,0,0,7,0,0,1,0,0,0,0,2,5,0,0,9,0,0,9,0,7,8,0,0,5,6,4}
EASYpuzzlePROB[106]={4,0,9,2,1,0,6,0,0,0,0,2,0,0,8,4,3,0,6,3,0,4,9,0,0,0,2,0,0,3,0,0,4,7,6,5,1,5,6,0,3,7,0,0,0,0,8,4,6,0,2,0,9,0,0,0,1,0,0,6,9,8,7,0,0,0,3,0,0,5,0,0,9,0,0,8,0,1,0,4,3}
EASYpuzzlePROB[107]={6,0,9,7,2,0,3,4,0,0,0,0,8,0,6,2,0,0,1,0,7,5,4,3,8,0,0,5,0,0,0,1,7,9,0,8,0,4,0,0,0,0,0,6,2,0,7,0,9,6,0,5,1,4,0,0,0,0,0,9,4,0,3,0,5,0,6,0,4,0,2,0,2,9,0,1,0,5,0,0,7}
EASYpuzzlePROB[108]={3,8,7,0,0,4,9,5,2,1,0,0,0,0,5,0,6,0,0,0,6,3,0,0,8,0,0,0,0,2,0,0,0,6,0,9,9,6,3,0,0,1,0,0,7,4,0,8,0,6,2,1,3,5,0,4,0,0,0,3,0,7,0,0,0,0,2,0,8,0,1,6,0,2,1,0,5,6,3,9,0}
EASYpuzzlePROB[109]={0,2,0,4,9,1,0,0,0,5,1,0,2,3,0,7,8,0,0,0,0,5,0,0,0,2,1,6,5,4,0,1,0,0,0,2,0,8,0,9,2,5,4,7,0,7,0,2,0,0,0,0,0,0,2,0,8,1,5,7,0,0,0,0,3,0,0,6,9,2,1,7,9,7,1,0,0,0,5,0,0}
EASYpuzzlePROB[110]={5,0,2,0,0,0,6,4,0,0,1,8,6,0,0,3,7,2,0,9,3,0,2,4,0,1,5,8,0,7,3,0,5,0,0,1,3,0,6,0,7,1,0,0,0,1,0,0,8,0,2,0,0,7,2,0,0,0,4,8,0,0,0,9,0,0,0,3,0,0,2,6,7,3,5,0,1,0,9,0,0}
EASYpuzzlePROB[111]={0,5,0,0,7,6,0,0,4,3,6,0,0,1,0,2,0,0,0,0,8,0,0,2,1,5,0,0,9,7,6,0,0,0,0,0,1,0,0,7,4,0,8,0,0,6,0,0,0,5,0,7,4,1,9,3,4,0,0,7,5,0,2,8,0,2,5,9,4,6,1,0,0,0,0,3,0,8,4,0,7}
EASYpuzzlePROB[112]={0,8,0,0,4,2,5,6,1,0,2,0,1,8,6,9,0,0,4,6,1,0,7,0,0,0,0,0,0,0,9,1,8,6,0,0,0,7,0,4,5,0,2,0,8,8,0,5,0,2,0,0,3,0,2,0,8,0,3,4,0,0,6,0,9,4,0,0,0,0,2,0,0,3,7,0,9,1,0,0,5}
EASYpuzzlePROB[113]={0,0,0,0,0,4,7,0,6,3,7,9,0,0,0,4,0,2,0,0,0,2,8,0,3,1,9,7,0,8,9,4,3,0,0,5,4,9,0,0,2,5,0,0,0,0,0,2,0,0,0,9,3,4,2,1,4,5,3,0,0,9,0,0,0,7,4,0,0,0,0,3,0,0,5,0,7,9,2,0,1}
EASYpuzzlePROB[114]={0,4,0,0,3,5,8,0,0,0,5,3,0,8,9,0,2,4,0,0,8,0,0,2,6,5,0,5,0,7,0,6,0,0,4,1,4,0,0,0,0,0,0,7,2,0,2,9,4,5,0,3,6,0,0,0,1,0,0,8,0,3,0,0,6,0,3,0,4,0,1,9,0,0,4,9,1,0,0,8,5}
EASYpuzzlePROB[115]={4,0,2,0,5,0,0,9,0,0,6,0,0,0,0,3,0,7,8,9,3,2,1,0,0,4,5,3,2,0,5,7,0,0,1,0,0,5,0,0,0,0,9,7,2,7,0,0,9,4,0,0,3,6,9,0,8,0,2,5,0,6,1,0,0,7,0,0,1,2,8,0,0,0,6,0,8,9,0,0,0}
EASYpuzzlePROB[116]={0,0,3,0,0,8,2,1,0,0,8,9,0,3,0,4,0,0,2,5,4,7,0,1,0,3,0,9,0,6,0,0,4,8,5,3,0,1,0,6,2,0,7,0,4,7,0,5,9,0,0,0,0,0,0,0,7,4,1,0,9,8,0,4,6,1,0,5,0,0,0,7,0,9,0,3,0,0,5,0,0}
EASYpuzzlePROB[117]={0,9,0,1,0,7,5,2,0,2,5,7,0,6,0,4,0,8,0,0,0,8,5,0,0,0,0,0,6,2,9,3,4,8,0,1,9,8,4,5,0,1,0,7,0,0,0,0,6,7,0,0,4,2,0,0,0,4,1,0,0,8,7,8,7,0,2,0,0,1,3,0,4,0,0,0,0,0,0,0,5}
EASYpuzzlePROB[118]={6,0,3,7,5,0,0,0,9,0,8,4,3,2,0,0,0,1,5,0,2,0,1,0,7,0,0,9,7,0,2,6,0,3,0,0,4,3,0,0,8,0,0,0,0,0,0,0,1,0,0,5,9,7,0,0,0,0,0,2,9,1,0,3,5,0,0,7,0,4,6,2,0,2,0,5,9,4,8,0,3}
EASYpuzzlePROB[119]={0,0,8,2,0,5,3,0,6,0,0,0,8,7,0,2,5,0,0,0,0,0,3,0,4,0,9,0,9,3,7,2,8,0,1,0,7,0,0,1,5,6,9,0,0,0,0,6,4,0,0,7,2,8,3,2,9,0,8,4,0,0,0,0,0,1,0,6,7,0,0,2,0,0,7,9,1,0,5,0,0}
EASYpuzzlePROB[120]={6,1,0,7,4,0,0,9,0,0,3,0,6,9,0,0,1,0,0,0,0,0,0,1,5,0,6,0,4,9,3,0,0,0,0,7,8,0,0,0,5,0,1,4,3,7,0,0,8,1,0,2,6,9,3,8,6,0,2,0,4,0,5,0,9,1,0,0,3,6,0,8,0,0,0,4,0,0,9,0,1}
EASYpuzzlePROB[121]={6,4,3,5,2,8,0,9,1,0,0,2,6,0,7,0,0,3,0,7,9,1,3,4,0,6,0,0,8,5,7,0,0,0,0,4,0,0,0,9,0,0,8,0,5,0,9,0,0,0,5,1,3,6,0,5,0,0,0,0,3,0,0,0,2,4,0,7,1,0,5,9,0,0,0,0,0,9,4,0,2}
EASYpuzzlePROB[122]={6,0,8,1,0,0,0,4,5,9,0,4,6,0,7,8,1,3,0,5,0,3,0,0,9,0,2,0,0,7,9,3,0,0,0,0,4,9,0,8,6,5,0,0,0,0,0,0,0,7,0,4,0,9,1,4,0,0,0,0,0,9,0,3,7,0,4,1,2,0,5,0,0,6,0,0,9,0,1,2,4}
EASYpuzzlePROB[123]={0,6,0,3,7,0,0,2,5,7,0,4,5,0,6,3,9,8,3,0,0,0,4,8,0,7,0,0,0,7,1,6,3,0,0,0,2,0,0,9,0,0,1,5,6,0,0,1,0,0,0,9,0,0,0,0,6,0,0,1,0,8,4,8,7,0,0,0,4,2,0,3,0,1,2,8,3,0,0,0,9}
EASYpuzzlePROB[124]={7,0,8,0,0,0,0,1,2,0,1,9,3,4,0,0,5,0,0,0,0,0,1,0,0,3,9,0,5,0,4,9,1,0,6,3,3,0,0,0,7,8,2,4,1,4,0,1,0,0,0,0,8,5,0,8,0,7,5,4,0,0,0,1,0,7,6,0,3,0,0,0,2,0,5,0,0,9,3,0,4}
EASYpuzzlePROB[125]={0,3,0,6,0,0,0,1,0,1,4,6,0,8,0,7,0,3,0,0,5,0,9,0,4,8,6,0,6,2,9,4,8,0,3,0,0,7,0,0,2,6,0,5,0,0,8,0,0,0,0,6,0,9,0,0,0,0,1,0,0,0,8,4,0,0,5,6,9,3,7,2,0,9,7,0,0,2,0,4,1}
EASYpuzzlePROB[126]={0,0,5,1,6,0,8,3,7,7,3,0,8,5,9,0,0,4,0,0,0,7,0,4,0,9,5,0,0,1,0,7,0,0,2,8,3,8,7,0,9,0,4,0,0,2,4,9,0,0,0,3,0,1,9,0,4,5,1,0,7,0,0,0,0,0,0,0,0,0,1,2,0,7,0,0,0,8,5,0,9}
EASYpuzzlePROB[127]={0,8,0,0,7,0,5,0,6,2,9,3,5,0,6,0,0,7,0,0,7,4,0,8,0,3,9,1,2,0,0,0,7,9,0,0,5,0,8,1,0,0,7,6,0,0,4,0,6,0,0,3,0,0,0,1,0,0,0,9,0,0,4,9,6,2,0,4,0,0,5,0,3,7,0,8,0,5,2,9,0}
EASYpuzzlePROB[128]={0,3,5,0,0,1,0,7,0,0,6,0,7,0,3,0,0,9,1,0,9,2,0,0,0,0,0,5,0,0,0,0,0,2,0,0,4,9,7,0,0,6,0,0,0,6,0,0,5,9,8,4,1,0,9,5,6,4,3,0,7,8,0,3,0,0,8,1,0,9,6,0,7,8,0,0,5,9,0,2,4}
EASYpuzzlePROB[129]={0,2,0,1,0,0,7,0,8,0,8,0,0,0,0,0,9,0,0,3,1,7,0,0,0,5,4,2,0,0,0,7,0,1,0,0,1,0,4,0,0,2,5,0,7,8,9,0,0,4,0,3,2,0,9,0,0,3,0,4,0,7,5,3,7,6,8,0,5,0,1,0,0,4,8,0,0,7,9,6,3}
EASYpuzzlePROB[130]={0,0,0,5,1,8,6,9,7,9,0,0,0,7,2,0,0,5,8,0,7,0,0,0,2,0,0,2,7,0,3,0,0,1,6,4,0,0,4,6,0,0,7,5,3,3,6,0,0,4,1,0,0,0,0,4,2,0,0,3,0,1,0,0,0,1,0,9,0,0,8,0,0,9,0,0,5,4,3,7,2}
EASYpuzzlePROB[131]={0,0,0,9,6,4,0,0,2,0,9,0,0,8,0,0,0,1,0,0,2,7,1,0,9,0,0,8,0,3,0,4,0,7,0,9,5,0,9,6,2,0,0,1,0,0,1,0,3,9,7,0,8,5,0,5,8,0,0,2,0,0,7,3,4,0,0,5,6,2,0,0,1,0,6,8,0,0,0,4,3}
EASYpuzzlePROB[132]={0,8,0,9,4,0,5,1,0,1,2,4,0,5,0,0,0,0,9,0,0,0,1,0,7,8,4,0,4,0,0,0,3,6,7,0,0,0,5,2,0,1,4,0,0,3,9,1,0,0,0,0,0,8,2,0,7,1,0,9,8,0,0,5,0,9,0,3,0,1,0,7,4,0,8,7,0,0,3,0,6}
EASYpuzzlePROB[133]={0,4,7,0,5,0,0,0,0,2,1,0,9,0,0,7,0,8,9,6,0,4,0,0,5,3,2,4,2,0,0,0,6,0,1,9,0,5,1,0,9,4,0,7,6,0,0,0,0,3,0,0,5,4,6,7,9,3,2,0,0,0,0,1,8,0,0,4,5,6,0,0,5,0,4,0,0,0,0,2,0}
EASYpuzzlePROB[134]={0,9,0,5,0,0,0,3,0,7,6,0,3,0,8,0,0,2,0,0,8,1,0,2,6,0,7,8,7,3,4,2,5,1,0,0,0,0,0,6,8,0,0,0,4,4,0,6,0,0,0,0,2,0,0,3,9,0,6,0,7,0,0,0,8,4,7,5,0,2,0,0,0,2,0,8,1,9,0,4,3}
EASYpuzzlePROB[135]={5,4,0,7,2,1,0,0,6,1,0,6,0,4,9,0,0,0,8,2,0,0,6,5,0,0,0,7,5,8,0,0,3,0,6,1,0,0,0,4,5,0,0,2,9,0,9,0,0,0,0,0,3,5,9,0,5,1,0,0,0,7,0,2,6,7,9,8,0,5,0,0,3,0,0,0,7,0,6,0,8}
EASYpuzzlePROB[136]={8,0,0,3,9,0,7,5,0,7,0,1,0,5,0,4,0,0,9,0,5,0,0,0,0,0,6,1,0,3,0,0,0,0,6,0,0,8,0,0,6,0,5,9,3,0,0,9,5,0,7,8,0,0,3,1,0,6,7,0,9,0,2,5,0,4,1,2,3,0,7,0,0,0,0,4,0,9,1,3,5}
EASYpuzzlePROB[137]={3,0,0,2,7,0,1,4,9,0,0,0,8,0,6,0,0,0,2,0,5,9,0,0,0,8,0,0,7,0,0,0,9,0,5,2,0,2,4,0,0,1,3,0,0,0,0,3,0,8,2,0,7,1,0,3,8,6,9,0,0,0,0,4,5,0,0,0,8,9,6,7,7,6,0,5,2,4,0,0,3}
EASYpuzzlePROB[138]={0,0,0,3,0,0,2,0,4,6,0,2,1,0,7,0,9,3,0,5,0,2,9,4,0,6,7,7,2,0,0,3,9,0,8,1,0,0,0,4,0,0,0,0,9,9,0,1,0,7,5,0,4,2,8,9,0,7,1,2,0,0,5,0,0,0,5,4,6,0,0,0,4,1,0,0,0,0,0,0,6}
EASYpuzzlePROB[139]={0,6,8,1,3,0,0,4,2,4,0,0,0,0,0,0,0,6,9,5,0,0,0,4,1,3,0,0,0,9,0,4,0,5,0,0,1,0,7,5,0,0,4,0,3,5,3,0,0,1,6,7,0,0,0,4,5,0,9,1,6,0,8,0,0,6,7,5,8,0,1,4,8,0,1,0,0,0,0,0,5}
EASYpuzzlePROB[140]={0,4,0,0,1,3,0,0,0,0,7,9,2,0,0,1,3,0,0,0,0,4,0,8,7,0,0,7,0,0,9,0,0,0,8,6,0,2,0,1,4,6,0,0,0,4,0,0,8,0,0,3,2,1,0,6,3,5,8,0,0,4,7,1,0,0,3,2,4,0,9,8,2,8,4,0,0,9,5,0,0}
EASYpuzzlePROB[141]={0,9,0,1,0,2,0,3,8,7,4,8,0,9,3,0,0,0,0,1,0,0,0,8,0,0,4,0,5,4,0,0,0,6,0,0,9,0,0,0,1,5,2,0,0,1,0,3,0,6,7,4,9,5,0,0,1,7,0,6,3,2,0,6,0,0,9,0,1,8,0,0,2,0,9,3,8,0,1,0,0}
EASYpuzzlePROB[142]={6,7,9,8,4,2,0,0,0,0,0,2,0,1,5,7,6,0,1,0,5,9,7,0,8,4,0,2,0,0,7,0,8,5,9,0,9,5,7,0,0,0,2,8,0,0,8,6,0,0,0,1,7,0,0,2,0,5,0,0,0,0,0,0,6,4,1,8,0,0,0,0,0,0,8,6,0,0,4,1,0}
EASYpuzzlePROB[143]={1,8,7,0,0,0,0,6,4,9,2,0,6,1,0,8,7,3,0,0,3,0,0,0,0,0,2,7,0,8,1,4,3,0,0,0,3,1,4,0,5,0,0,0,0,0,0,2,0,0,8,0,4,1,8,0,6,0,0,1,0,2,0,4,5,1,8,0,0,6,3,0,0,7,9,4,3,0,0,0,0}
EASYpuzzlePROB[144]={8,0,1,4,0,5,0,2,3,0,7,0,0,2,0,6,4,0,0,0,2,0,1,3,0,5,8,0,1,0,8,0,2,0,0,7,3,2,0,1,0,0,0,6,9,7,8,0,0,0,6,2,0,5,0,0,0,0,3,0,5,0,6,0,5,9,6,0,0,0,7,4,6,0,0,0,7,4,1,0,0}
EASYpuzzlePROB[145]={2,0,9,6,5,1,0,0,8,0,0,4,0,7,0,1,0,5,0,5,1,0,9,8,0,6,0,9,0,0,0,0,0,8,5,6,4,2,0,9,0,0,0,0,7,1,0,0,0,0,0,9,0,4,7,0,6,3,4,5,2,0,0,8,0,0,0,6,9,5,4,0,5,0,0,8,0,2,0,0,9}
EASYpuzzlePROB[146]={0,4,2,0,0,8,0,0,7,5,0,7,2,0,4,0,9,0,8,0,0,3,1,0,2,4,5,0,8,0,0,0,0,0,0,0,6,5,0,8,0,0,0,7,3,7,0,0,5,3,0,6,8,4,0,0,5,1,9,0,0,3,0,2,7,0,0,0,0,5,1,9,0,1,0,0,8,5,0,2,6}
EASYpuzzlePROB[147]={0,6,9,0,0,0,0,0,3,1,0,0,5,3,0,0,7,0,0,5,8,4,7,6,0,2,0,4,1,3,6,0,0,2,8,9,2,8,0,3,9,4,0,0,0,0,0,0,0,1,0,0,0,0,9,0,0,2,0,5,4,0,0,0,4,6,9,8,3,0,1,0,0,0,2,0,0,1,6,9,5}
EASYpuzzlePROB[148]={0,1,4,0,5,8,6,0,2,0,0,5,3,2,0,1,0,0,2,0,0,0,6,0,0,0,4,0,8,6,4,0,5,0,0,0,1,5,3,2,0,7,0,4,6,0,0,0,6,0,1,0,0,0,8,0,0,0,7,3,4,6,5,0,4,9,5,1,0,0,0,0,0,3,0,8,4,0,9,2,0}
EASYpuzzlePROB[149]={8,2,0,4,6,0,0,0,9,0,5,3,7,8,9,0,0,2,6,7,0,0,0,0,3,8,4,0,8,2,5,0,6,4,0,7,9,4,0,1,7,0,0,0,3,5,3,0,0,4,2,1,6,0,0,9,0,0,0,0,8,2,0,2,0,0,0,9,0,0,0,0,7,1,0,0,0,0,0,4,0}
EASYpuzzlePROB[150]={0,4,8,0,0,0,0,0,0,7,2,0,1,6,0,0,4,0,3,0,9,0,4,7,0,0,0,8,9,7,0,0,0,0,5,6,0,5,4,0,0,8,2,3,0,0,3,6,5,7,0,4,0,0,9,0,0,0,0,6,5,7,4,0,7,0,9,3,0,8,6,0,4,0,2,0,0,5,9,1,0}
EASYpuzzlePROB[151]={0,0,8,5,0,0,4,0,0,0,4,2,9,6,3,0,8,1,6,1,3,7,0,0,2,0,0,0,0,7,0,0,5,0,0,4,0,8,6,2,1,0,0,0,5,1,5,0,4,3,0,0,2,6,9,2,0,0,0,6,0,0,8,0,7,0,0,5,0,6,9,0,0,0,0,1,9,0,0,3,7}
EASYpuzzlePROB[152]={7,1,2,0,0,9,0,3,0,0,4,8,3,6,0,2,1,7,0,0,0,0,0,7,0,9,0,1,5,0,6,8,0,0,4,9,0,0,4,5,0,0,8,6,1,0,0,0,1,9,0,0,0,0,0,7,0,0,0,8,1,0,6,6,2,0,9,3,1,7,0,0,4,8,0,0,5,0,0,0,3}
EASYpuzzlePROB[153]={9,0,7,2,6,0,3,0,0,0,4,0,1,0,0,8,6,0,0,8,1,0,0,3,0,7,5,0,7,4,0,8,1,0,5,0,0,0,0,3,4,0,7,0,0,0,6,0,0,0,0,4,3,1,4,0,5,8,0,0,0,2,0,1,0,8,0,3,6,0,4,7,0,0,6,5,2,0,1,0,8}
EASYpuzzlePROB[154]={7,0,2,4,9,0,0,3,1,4,0,8,0,6,0,7,0,0,3,1,0,2,7,5,4,0,9,0,0,0,0,0,2,0,0,0,2,0,9,0,0,4,5,0,3,5,0,4,9,0,0,8,6,0,1,0,7,8,0,0,0,5,0,9,0,0,0,4,6,0,7,8,0,0,0,7,3,1,0,0,6}
EASYpuzzlePROB[155]={0,9,2,7,0,0,6,0,8,0,1,0,3,0,0,7,0,4,0,6,0,1,0,0,0,9,0,6,0,4,0,1,9,0,7,5,2,7,9,0,0,0,3,4,0,0,0,5,4,0,7,0,6,0,7,0,0,9,4,5,1,8,6,0,0,6,8,0,0,0,0,0,8,4,0,0,2,3,0,0,7}
EASYpuzzlePROB[156]={0,8,6,5,9,4,0,0,1,2,0,0,0,0,6,0,9,7,0,9,1,0,2,0,0,0,0,0,0,0,0,1,8,0,0,2,1,7,2,6,0,0,0,4,9,0,3,8,7,0,0,0,1,5,0,1,0,2,7,3,9,6,0,0,0,0,4,0,0,0,0,8,4,6,9,8,0,1,0,2,0}
EASYpuzzlePROB[157]={3,6,7,0,0,0,4,9,0,5,4,9,0,7,3,1,0,0,2,8,0,0,0,0,3,0,0,9,5,8,0,0,0,6,0,0,0,0,0,1,4,6,0,0,0,0,0,4,9,0,5,0,0,3,1,0,6,7,0,4,0,3,8,0,0,3,0,2,1,7,4,6,4,7,0,3,0,0,9,0,0}
EASYpuzzlePROB[158]={8,3,4,5,9,0,0,0,0,6,2,1,0,3,8,5,7,9,7,0,0,2,1,6,8,4,3,0,8,0,0,0,4,3,0,6,0,6,0,1,8,0,0,0,0,0,4,0,0,7,3,0,0,5,0,5,2,0,0,0,0,0,8,3,0,0,0,6,0,0,0,4,4,7,0,0,0,9,1,0,0}
EASYpuzzlePROB[159]={0,2,9,0,5,0,7,0,1,7,0,0,9,0,0,0,5,0,6,8,5,3,1,0,2,4,0,2,1,6,0,0,0,0,0,3,0,0,0,8,4,0,5,1,0,5,4,0,0,0,3,0,0,0,0,7,3,0,9,0,1,2,5,1,6,0,0,0,5,0,9,0,0,5,2,7,8,0,3,0,0}
EASYpuzzlePROB[160]={4,8,0,2,0,0,3,0,7,0,2,0,0,7,0,5,9,4,0,0,5,3,6,0,8,0,0,2,1,0,6,8,0,4,0,0,0,0,0,5,2,0,0,7,0,0,7,0,0,0,9,2,0,6,0,5,0,0,3,6,0,0,2,9,0,2,7,1,8,6,0,5,0,0,4,9,0,0,7,8,0}
EASYpuzzlePROB[161]={7,3,0,0,0,0,0,0,8,4,9,0,0,0,0,0,0,6,1,0,0,4,8,9,0,7,3,2,6,4,0,0,0,9,3,0,0,8,7,3,9,0,6,0,2,3,1,9,0,0,0,7,8,5,0,0,0,0,0,6,0,1,9,0,0,2,1,7,8,3,6,0,0,4,0,0,2,3,0,0,0}
EASYpuzzlePROB[162]={2,6,1,8,4,7,0,0,0,0,0,0,1,9,0,0,0,4,9,0,0,0,3,6,0,2,1,0,0,9,0,7,3,0,8,0,0,0,0,6,0,0,0,4,0,0,8,0,0,5,9,0,1,7,0,3,2,0,0,5,1,0,8,8,0,0,0,0,4,6,9,3,7,0,6,3,0,1,0,5,2}
EASYpuzzlePROB[163]={5,0,0,0,0,0,0,7,0,0,0,6,4,0,0,8,5,0,0,4,0,0,0,5,0,0,3,9,3,8,0,0,4,1,6,0,0,0,0,9,8,0,7,0,5,4,7,5,2,0,1,3,0,9,2,0,7,0,0,0,5,0,6,0,0,0,1,5,6,2,0,7,0,0,0,3,2,7,4,1,8}
EASYpuzzlePROB[164]={9,0,8,0,0,5,0,0,6,0,0,0,6,0,3,0,0,0,0,6,2,0,4,1,5,7,0,5,0,9,1,3,0,0,2,7,6,3,0,0,0,0,0,4,1,0,2,0,8,0,7,0,0,0,7,0,3,4,5,6,0,0,2,2,5,6,0,1,0,0,0,4,0,0,0,7,9,0,3,6,5}
EASYpuzzlePROB[165]={0,0,0,2,9,7,0,4,0,0,3,1,4,6,0,5,7,0,0,0,4,3,5,1,0,0,8,4,1,5,0,0,9,0,2,0,0,6,0,0,1,0,0,5,4,0,9,0,5,2,4,0,1,6,1,5,0,0,3,2,4,0,7,0,2,0,9,0,0,0,0,0,6,0,0,0,0,5,0,0,9}
EASYpuzzlePROB[166]={0,0,5,0,0,3,2,0,9,4,0,3,0,0,2,6,0,0,9,2,1,8,0,0,4,0,0,0,0,0,7,0,0,0,4,6,0,8,7,4,3,0,1,0,2,6,0,4,0,0,9,0,8,0,7,5,8,2,9,4,3,0,0,0,3,0,0,0,0,0,0,4,2,0,6,3,0,8,0,5,7}
EASYpuzzlePROB[167]={0,3,0,0,0,6,4,1,7,0,0,7,1,5,3,0,0,0,0,0,1,0,0,0,3,0,5,3,8,0,4,7,9,1,2,6,1,0,0,0,2,8,7,0,3,0,0,9,0,6,0,0,4,8,0,7,0,6,1,5,0,0,4,0,1,0,0,8,0,0,5,0,4,0,6,0,3,0,0,7,0}
EASYpuzzlePROB[168]={0,1,0,9,6,0,5,7,4,0,4,0,8,0,7,1,0,0,0,3,7,1,4,5,2,9,8,1,0,4,0,0,0,0,2,0,5,0,0,0,7,4,0,8,1,0,6,9,0,8,1,0,3,0,0,7,0,0,0,0,0,5,0,3,0,0,0,0,2,0,4,6,4,0,0,3,5,8,0,0,0}
EASYpuzzlePROB[169]={0,0,0,1,0,3,0,5,0,4,0,6,0,0,0,1,7,3,3,0,0,4,7,9,2,0,6,5,2,0,0,0,0,3,0,0,0,0,8,0,0,5,7,0,9,0,0,0,0,1,6,5,4,0,0,4,9,7,0,0,0,1,0,8,6,0,0,9,0,4,0,2,1,3,5,6,2,0,0,9,7}
EASYpuzzlePROB[170]={0,0,0,0,9,1,0,0,0,0,6,4,0,0,7,9,0,3,0,9,1,0,6,4,0,0,2,0,0,6,9,1,5,0,2,0,4,1,5,0,0,0,0,0,0,3,0,9,4,0,0,1,5,7,9,0,2,0,5,3,0,0,0,0,0,8,2,0,9,0,0,1,1,3,7,6,0,8,0,9,5}
EASYpuzzlePROB[171]={5,0,0,0,7,0,0,0,1,9,3,2,5,4,1,0,7,8,0,0,4,8,3,6,2,0,9,0,7,0,3,6,0,1,0,5,1,0,0,4,0,0,0,0,0,8,0,3,0,0,5,0,4,7,0,0,0,0,1,0,0,9,0,6,4,0,9,0,0,0,0,3,2,0,0,7,8,3,5,0,4}
EASYpuzzlePROB[172]={0,2,8,1,0,7,0,6,0,5,0,9,0,6,2,8,0,0,1,4,0,0,0,9,0,7,3,0,9,0,0,0,1,0,4,8,0,0,7,0,3,0,9,0,0,0,0,4,6,0,5,0,2,0,7,5,3,4,0,8,6,9,1,0,0,2,0,1,3,0,0,5,0,0,0,0,0,6,4,0,2}
EASYpuzzlePROB[173]={0,2,6,8,3,5,0,0,0,0,0,9,4,1,0,6,2,0,0,0,0,9,2,6,5,7,0,3,0,0,1,7,9,0,8,5,9,8,0,0,5,0,7,0,1,0,7,0,2,8,3,9,4,6,0,0,1,7,0,0,4,0,2,0,9,0,0,0,0,0,0,7,2,0,7,0,0,0,0,0,0}
EASYpuzzlePROB[174]={0,0,4,6,0,0,8,9,1,1,0,0,4,3,0,0,0,7,6,8,7,0,2,0,5,0,4,2,0,0,0,0,3,9,0,8,8,4,0,5,9,0,0,7,6,7,0,0,8,4,0,0,0,5,0,0,3,0,8,7,6,5,9,5,7,0,0,0,9,0,0,0,0,6,0,0,0,4,0,0,2}
EASYpuzzlePROB[175]={0,7,0,0,0,3,4,8,2,9,0,3,0,0,8,1,6,0,0,0,8,2,1,7,3,9,5,5,8,0,0,2,0,7,0,0,2,0,4,3,0,0,0,5,0,3,1,7,8,6,0,0,0,0,0,0,0,7,4,0,6,3,1,0,4,0,5,0,0,0,0,0,6,0,9,0,8,0,0,0,4}
EASYpuzzlePROB[176]={0,0,8,0,0,4,0,6,7,0,0,0,7,5,1,9,0,3,0,3,9,0,0,0,5,4,0,0,0,4,0,0,0,7,2,8,0,5,6,9,0,0,3,0,0,0,2,0,4,8,0,0,9,0,0,0,0,0,6,0,4,3,2,2,4,0,1,0,9,0,0,0,6,8,3,2,4,7,1,5,0}
EASYpuzzlePROB[177]={1,8,0,5,4,7,0,0,9,9,6,0,3,0,0,0,7,0,0,2,0,8,6,0,0,4,1,0,0,0,6,0,5,0,0,0,3,0,0,4,7,0,5,1,6,5,7,6,1,0,3,0,8,0,0,0,0,0,8,1,0,5,4,8,0,7,0,0,0,0,9,3,2,0,1,0,0,0,0,6,8}
EASYpuzzlePROB[178]={1,3,0,0,0,8,0,0,9,2,0,0,1,0,3,8,4,0,0,4,0,7,5,0,0,1,0,8,0,1,6,0,4,0,0,0,4,7,2,0,1,9,3,0,6,5,6,0,0,7,2,1,9,4,0,8,0,9,0,0,4,0,0,0,0,9,0,4,7,0,0,8,0,0,0,3,8,0,0,6,0}
EASYpuzzlePROB[179]={4,0,1,0,7,2,0,8,9,8,0,0,5,3,4,0,0,2,6,5,0,0,0,0,0,0,4,0,0,3,0,2,6,9,7,8,9,0,8,0,4,5,0,0,1,0,0,0,8,0,7,0,5,0,0,0,5,4,8,0,2,0,6,0,8,4,0,0,0,0,0,0,0,6,9,2,0,0,8,4,7}
EASYpuzzlePROB[180]={7,5,1,0,0,0,6,0,0,0,6,8,0,0,2,9,0,0,9,2,0,0,6,1,4,8,0,0,0,0,2,4,7,0,3,8,0,7,5,0,0,0,2,4,6,0,4,2,0,3,0,0,0,9,2,1,0,0,5,6,0,0,0,5,8,4,7,0,0,0,0,2,0,3,0,1,0,4,0,0,5}
medpuzzleSOL[1]={2,5,1,4,9,7,6,8,3,9,4,3,5,6,8,7,1,2,8,6,7,3,1,2,5,4,9,5,9,4,6,8,3,1,2,7,7,1,8,9,2,5,4,3,6,3,2,6,1,7,4,8,9,5,4,3,9,7,5,1,2,6,8,1,8,5,2,3,6,9,7,4,6,7,2,8,4,9,3,5,1}
medpuzzleSOL[2]={3,9,6,5,2,7,4,1,8,2,5,7,1,4,8,3,6,9,1,4,8,6,9,3,2,5,7,4,2,3,9,1,5,8,7,6,5,8,9,7,3,6,1,2,4,6,7,1,2,8,4,5,9,3,8,1,2,3,7,9,6,4,5,9,6,4,8,5,2,7,3,1,7,3,5,4,6,1,9,8,2}
medpuzzleSOL[3]={8,9,2,4,1,7,5,6,3,4,1,3,5,6,9,7,2,8,7,6,5,8,2,3,1,4,9,2,8,6,3,7,5,4,9,1,1,3,7,9,4,6,2,8,5,5,4,9,1,8,2,6,3,7,6,5,8,7,3,4,9,1,2,3,7,4,2,9,1,8,5,6,9,2,1,6,5,8,3,7,4}
medpuzzleSOL[4]={4,2,8,5,7,3,1,6,9,5,3,9,6,2,1,4,8,7,7,6,1,8,4,9,3,5,2,2,9,3,4,6,5,7,1,8,1,4,5,7,3,8,2,9,6,8,7,6,1,9,2,5,3,4,9,5,7,3,8,4,6,2,1,3,8,4,2,1,6,9,7,5,6,1,2,9,5,7,8,4,3}
medpuzzleSOL[5]={5,6,8,9,2,3,7,1,4,2,9,1,5,4,7,8,3,6,7,3,4,1,8,6,2,5,9,9,4,7,8,3,5,1,6,2,1,8,5,6,7,2,4,9,3,6,2,3,4,1,9,5,7,8,8,7,9,2,6,1,3,4,5,4,1,6,3,5,8,9,2,7,3,5,2,7,9,4,6,8,1}
medpuzzleSOL[6]={5,3,6,7,4,8,1,9,2,1,2,7,3,5,9,8,6,4,9,4,8,6,1,2,5,7,3,4,8,5,1,9,3,6,2,7,7,1,9,4,2,6,3,5,8,3,6,2,8,7,5,9,4,1,8,7,1,9,6,4,2,3,5,2,9,3,5,8,7,4,1,6,6,5,4,2,3,1,7,8,9}
medpuzzleSOL[7]={4,1,3,7,9,2,5,8,6,5,8,6,4,1,3,9,7,2,7,2,9,6,5,8,1,4,3,3,6,2,8,7,9,4,5,1,1,4,7,3,2,5,8,6,9,9,5,8,1,6,4,2,3,7,8,7,1,2,4,6,3,9,5,6,9,4,5,3,1,7,2,8,2,3,5,9,8,7,6,1,4}
medpuzzleSOL[8]={1,8,5,6,7,9,3,4,2,2,4,3,5,8,1,9,7,6,9,7,6,3,2,4,1,8,5,5,9,4,1,6,7,8,2,3,6,1,2,4,3,8,5,9,7,7,3,8,9,5,2,6,1,4,3,2,1,8,4,5,7,6,9,4,5,9,7,1,6,2,3,8,8,6,7,2,9,3,4,5,1}
medpuzzleSOL[9]={5,2,9,6,8,7,3,1,4,1,3,4,5,9,2,8,6,7,8,7,6,1,3,4,5,2,9,6,5,2,7,4,8,9,3,1,7,9,8,3,1,5,6,4,2,3,4,1,2,6,9,7,5,8,9,6,7,4,2,3,1,8,5,4,1,5,8,7,6,2,9,3,2,8,3,9,5,1,4,7,6}
medpuzzleSOL[10]={8,9,3,7,6,1,2,5,4,2,1,7,9,4,5,6,8,3,4,5,6,8,3,2,7,1,9,7,8,9,3,5,6,4,2,1,3,2,5,4,1,7,9,6,8,1,6,4,2,8,9,3,7,5,6,4,1,5,2,3,8,9,7,9,3,2,1,7,8,5,4,6,5,7,8,6,9,4,1,3,2}
medpuzzleSOL[11]={6,2,5,8,7,9,4,1,3,8,3,1,4,6,2,7,9,5,4,9,7,3,5,1,2,8,6,9,8,6,1,2,3,5,4,7,1,7,2,6,4,5,9,3,8,5,4,3,7,9,8,1,6,2,3,1,4,5,8,7,6,2,9,2,5,8,9,1,6,3,7,4,7,6,9,2,3,4,8,5,1}
medpuzzleSOL[12]={5,3,2,4,1,6,8,9,7,8,4,1,7,5,9,6,3,2,6,9,7,8,3,2,1,5,4,2,1,9,3,6,8,7,4,5,7,5,3,9,4,1,2,8,6,4,8,6,2,7,5,9,1,3,1,6,4,5,9,7,3,2,8,9,2,5,6,8,3,4,7,1,3,7,8,1,2,4,5,6,9}
medpuzzleSOL[13]={7,1,9,2,6,8,4,5,3,3,4,6,9,5,1,8,7,2,5,2,8,3,7,4,9,6,1,6,3,1,5,4,9,2,8,7,9,5,2,7,8,3,1,4,6,8,7,4,1,2,6,5,3,9,2,8,7,6,9,5,3,1,4,4,9,3,8,1,7,6,2,5,1,6,5,4,3,2,7,9,8}
medpuzzleSOL[14]={4,8,2,1,3,5,6,9,7,3,9,1,7,4,6,2,8,5,7,6,5,2,9,8,1,4,3,6,2,9,5,8,4,3,7,1,5,4,8,3,1,7,9,6,2,1,3,7,9,6,2,4,5,8,9,5,3,6,7,1,8,2,4,2,1,4,8,5,9,7,3,6,8,7,6,4,2,3,5,1,9}
medpuzzleSOL[15]={4,2,7,1,6,5,9,8,3,9,8,3,7,4,2,6,5,1,5,1,6,3,8,9,7,2,4,1,5,8,4,9,7,3,6,2,6,4,9,2,3,1,8,7,5,3,7,2,6,5,8,4,1,9,8,3,4,5,2,6,1,9,7,2,9,1,8,7,3,5,4,6,7,6,5,9,1,4,2,3,8}
medpuzzleSOL[16]={5,6,8,9,7,4,2,3,1,2,1,3,8,5,6,9,4,7,9,7,4,1,3,2,5,8,6,6,5,9,4,8,3,1,7,2,3,4,1,7,2,9,8,6,5,8,2,7,5,6,1,3,9,4,1,8,5,3,4,7,6,2,9,7,3,2,6,9,5,4,1,8,4,9,6,2,1,8,7,5,3}
medpuzzleSOL[17]={7,6,2,9,1,4,3,5,8,4,1,9,8,5,3,2,6,7,8,5,3,6,7,2,1,9,4,5,8,4,1,9,6,7,2,3,6,9,1,2,3,7,4,8,5,3,2,7,5,4,8,6,1,9,1,3,5,7,2,9,8,4,6,2,7,8,4,6,5,9,3,1,9,4,6,3,8,1,5,7,2}
medpuzzleSOL[18]={5,7,6,4,1,2,3,8,9,3,1,2,6,9,8,5,7,4,9,8,4,3,5,7,1,2,6,2,6,1,8,4,5,9,3,7,7,4,9,2,3,6,8,5,1,8,5,3,1,7,9,4,6,2,1,9,5,7,2,3,6,4,8,6,3,7,9,8,4,2,1,5,4,2,8,5,6,1,7,9,3}
medpuzzleSOL[19]={7,4,9,8,1,5,3,6,2,2,8,1,7,6,3,5,9,4,3,5,6,4,9,2,1,8,7,9,2,4,1,5,6,8,7,3,6,7,5,3,8,4,2,1,9,1,3,8,9,2,7,6,4,5,8,1,3,2,4,9,7,5,6,4,6,2,5,7,1,9,3,8,5,9,7,6,3,8,4,2,1}
medpuzzleSOL[20]={1,5,9,3,4,7,6,2,8,7,8,6,5,1,2,9,3,4,4,2,3,6,9,8,1,7,5,9,3,2,8,5,1,7,4,6,8,6,4,2,7,9,3,5,1,5,1,7,4,6,3,8,9,2,3,9,5,1,2,6,4,8,7,2,7,1,9,8,4,5,6,3,6,4,8,7,3,5,2,1,9}
medpuzzleSOL[21]={3,7,1,6,9,2,4,5,8,5,9,2,4,8,7,1,3,6,4,6,8,3,5,1,7,9,2,8,4,7,5,6,9,2,1,3,2,3,5,1,7,8,6,4,9,9,1,6,2,4,3,8,7,5,7,5,3,8,2,4,9,6,1,6,2,4,9,1,5,3,8,7,1,8,9,7,3,6,5,2,4}
medpuzzleSOL[22]={8,5,9,3,6,1,7,4,2,6,2,3,7,5,4,9,1,8,7,1,4,2,8,9,5,6,3,1,3,5,8,4,6,2,9,7,4,8,2,9,7,5,1,3,6,9,6,7,1,3,2,8,5,4,5,7,8,4,1,3,6,2,9,2,4,1,6,9,7,3,8,5,3,9,6,5,2,8,4,7,1}
medpuzzleSOL[23]={8,2,3,9,6,7,4,1,5,4,6,1,2,5,3,7,8,9,9,5,7,8,4,1,3,6,2,2,4,9,7,1,5,6,3,8,6,1,8,4,3,9,2,5,7,7,3,5,6,8,2,1,9,4,3,9,6,5,7,4,8,2,1,1,7,2,3,9,8,5,4,6,5,8,4,1,2,6,9,7,3}
medpuzzleSOL[24]={4,2,9,3,7,8,5,1,6,8,1,5,2,4,6,9,3,7,7,6,3,5,9,1,2,4,8,5,8,4,1,3,7,6,2,9,6,9,1,8,2,4,3,7,5,2,3,7,6,5,9,4,8,1,1,4,2,9,8,5,7,6,3,3,5,8,7,6,2,1,9,4,9,7,6,4,1,3,8,5,2}
medpuzzleSOL[25]={4,3,6,2,5,9,1,8,7,7,8,1,3,4,6,2,5,9,9,2,5,7,1,8,4,6,3,8,7,2,6,3,5,9,4,1,5,1,3,8,9,4,6,7,2,6,9,4,1,2,7,8,3,5,3,5,9,4,6,1,7,2,8,1,6,8,5,7,2,3,9,4,2,4,7,9,8,3,5,1,6}
medpuzzleSOL[26]={9,1,4,7,8,2,3,5,6,6,2,5,4,3,9,1,7,8,8,7,3,5,6,1,4,2,9,3,9,8,1,4,5,7,6,2,2,6,7,8,9,3,5,4,1,5,4,1,6,2,7,9,8,3,4,3,9,2,7,6,8,1,5,7,5,6,9,1,8,2,3,4,1,8,2,3,5,4,6,9,7}
medpuzzleSOL[27]={5,4,3,7,8,1,9,6,2,9,6,1,2,5,3,7,8,4,8,7,2,9,4,6,1,3,5,4,3,9,8,2,5,6,1,7,1,5,6,3,7,4,8,2,9,7,2,8,1,6,9,5,4,3,2,1,4,6,9,7,3,5,8,6,9,5,4,3,8,2,7,1,3,8,7,5,1,2,4,9,6}
medpuzzleSOL[28]={4,2,3,6,8,9,7,5,1,6,5,8,1,7,3,4,2,9,1,9,7,2,4,5,3,8,6,5,8,1,4,9,2,6,7,3,2,7,9,8,3,6,5,1,4,3,4,6,7,5,1,2,9,8,9,6,5,3,2,8,1,4,7,7,3,2,9,1,4,8,6,5,8,1,4,5,6,7,9,3,2}
medpuzzleSOL[29]={4,3,9,8,1,6,2,7,5,1,6,5,7,9,2,8,3,4,7,8,2,5,3,4,6,9,1,5,2,6,3,7,9,1,4,8,9,4,7,2,8,1,5,6,3,3,1,8,6,4,5,7,2,9,6,7,3,9,5,8,4,1,2,2,5,4,1,6,3,9,8,7,8,9,1,4,2,7,3,5,6}
medpuzzleSOL[30]={7,4,9,2,8,1,6,3,5,8,2,6,3,5,7,9,1,4,1,3,5,9,4,6,7,2,8,9,6,3,4,7,5,1,8,2,2,5,8,1,3,9,4,7,6,4,1,7,8,6,2,3,5,9,3,8,2,6,1,4,5,9,7,6,7,1,5,9,8,2,4,3,5,9,4,7,2,3,8,6,1}
medpuzzleSOL[31]={7,8,9,6,4,3,1,5,2,4,5,3,1,2,8,7,6,9,6,1,2,7,5,9,4,8,3,5,6,1,9,7,2,3,4,8,3,9,4,5,8,1,2,7,6,2,7,8,3,6,4,9,1,5,1,2,5,4,9,6,8,3,7,8,3,7,2,1,5,6,9,4,9,4,6,8,3,7,5,2,1}
medpuzzleSOL[32]={4,9,1,2,6,8,5,3,7,3,5,2,1,7,4,9,6,8,8,7,6,9,5,3,1,2,4,1,8,3,6,2,9,7,4,5,5,6,4,7,3,1,2,8,9,9,2,7,8,4,5,3,1,6,7,1,8,4,9,2,6,5,3,6,4,5,3,1,7,8,9,2,2,3,9,5,8,6,4,7,1}
medpuzzleSOL[33]={8,9,2,6,1,7,4,5,3,5,6,7,4,8,3,1,9,2,4,3,1,9,5,2,7,8,6,1,7,3,5,2,4,9,6,8,6,8,9,3,7,1,2,4,5,2,4,5,8,9,6,3,7,1,9,1,4,2,6,8,5,3,7,7,5,6,1,3,9,8,2,4,3,2,8,7,4,5,6,1,9}
medpuzzleSOL[34]={5,8,6,4,7,9,3,2,1,4,3,7,5,1,2,9,6,8,9,2,1,8,3,6,4,7,5,2,4,9,6,5,7,1,8,3,8,6,3,2,4,1,7,5,9,7,1,5,3,9,8,2,4,6,6,9,8,1,2,4,5,3,7,3,7,2,9,8,5,6,1,4,1,5,4,7,6,3,8,9,2}
medpuzzleSOL[35]={7,3,4,2,8,9,1,5,6,5,9,1,6,7,4,3,8,2,2,6,8,3,5,1,7,9,4,9,1,5,4,2,7,6,3,8,8,4,3,1,6,5,2,7,9,6,7,2,9,3,8,4,1,5,3,8,9,7,4,2,5,6,1,1,2,6,5,9,3,8,4,7,4,5,7,8,1,6,9,2,3}
medpuzzleSOL[36]={8,9,1,5,6,2,4,7,3,4,5,7,3,9,1,6,2,8,6,3,2,8,4,7,9,1,5,5,1,8,4,2,3,7,9,6,3,7,4,9,1,6,5,8,2,9,2,6,7,8,5,1,3,4,1,4,9,2,5,8,3,6,7,7,8,5,6,3,9,2,4,1,2,6,3,1,7,4,8,5,9}
medpuzzleSOL[37]={2,7,3,4,1,6,9,8,5,9,4,1,8,7,5,3,6,2,6,5,8,3,2,9,4,7,1,4,8,6,9,5,1,2,3,7,7,1,9,2,3,4,6,5,8,5,3,2,6,8,7,1,9,4,1,6,7,5,9,2,8,4,3,3,9,5,1,4,8,7,2,6,8,2,4,7,6,3,5,1,9}
medpuzzleSOL[38]={5,1,3,8,4,2,7,6,9,8,4,2,7,9,6,3,5,1,7,6,9,5,1,3,2,4,8,6,3,1,4,2,7,9,8,5,4,9,7,6,5,8,1,2,3,2,5,8,1,3,9,4,7,6,9,8,6,2,7,1,5,3,4,3,2,5,9,6,4,8,1,7,1,7,4,3,8,5,6,9,2}
medpuzzleSOL[39]={6,1,9,7,8,3,5,4,2,3,7,8,4,5,2,1,6,9,5,2,4,1,9,6,3,7,8,8,3,2,5,6,1,4,9,7,9,4,5,3,7,8,2,1,6,7,6,1,9,2,4,8,3,5,4,5,6,8,1,7,9,2,3,2,8,3,6,4,9,7,5,1,1,9,7,2,3,5,6,8,4}
medpuzzleSOL[40]={2,8,6,9,1,5,7,4,3,5,4,7,6,8,3,1,9,2,9,1,3,4,7,2,5,6,8,6,2,4,1,5,7,8,3,9,7,5,8,3,9,6,2,1,4,3,9,1,2,4,8,6,5,7,8,7,9,5,6,4,3,2,1,4,3,5,8,2,1,9,7,6,1,6,2,7,3,9,4,8,5}
medpuzzleSOL[41]={3,4,5,6,7,9,2,1,8,7,2,9,1,5,8,4,3,6,1,8,6,2,3,4,5,9,7,4,9,3,5,8,2,7,6,1,5,1,7,4,9,6,3,8,2,8,6,2,3,1,7,9,4,5,6,5,8,7,4,3,1,2,9,9,7,4,8,2,1,6,5,3,2,3,1,9,6,5,8,7,4}
medpuzzleSOL[42]={2,6,8,3,9,7,5,1,4,7,3,9,1,5,4,8,6,2,5,1,4,8,2,6,3,7,9,4,7,3,2,6,5,9,8,1,8,2,1,9,4,3,7,5,6,9,5,6,7,1,8,4,2,3,6,8,5,4,3,2,1,9,7,1,4,7,6,8,9,2,3,5,3,9,2,5,7,1,6,4,8}
medpuzzleSOL[43]={4,9,5,7,2,6,1,3,8,2,3,1,8,9,5,4,6,7,6,8,7,3,1,4,2,5,9,9,5,4,2,3,1,8,7,6,8,1,2,6,5,7,3,9,4,3,7,6,9,4,8,5,1,2,5,2,3,4,7,9,6,8,1,1,6,9,5,8,2,7,4,3,7,4,8,1,6,3,9,2,5}
medpuzzleSOL[44]={4,1,8,7,2,5,3,9,6,5,2,3,6,9,4,7,1,8,6,7,9,8,3,1,5,2,4,1,3,7,5,4,2,8,6,9,9,8,4,3,7,6,1,5,2,2,5,6,9,1,8,4,7,3,8,6,2,1,5,3,9,4,7,3,9,1,4,6,7,2,8,5,7,4,5,2,8,9,6,3,1}
medpuzzleSOL[45]={8,4,3,2,7,1,6,9,5,1,2,7,9,5,6,4,8,3,5,6,9,8,3,4,2,1,7,7,8,6,4,1,9,5,3,2,4,9,1,5,2,3,8,7,6,3,5,2,6,8,7,9,4,1,9,1,5,3,6,8,7,2,4,6,3,4,7,9,2,1,5,8,2,7,8,1,4,5,3,6,9}
medpuzzleSOL[46]={4,6,2,9,1,7,5,3,8,3,1,5,2,4,8,9,7,6,9,8,7,3,5,6,4,2,1,2,5,6,4,8,9,3,1,7,7,4,3,6,2,1,8,5,9,1,9,8,7,3,5,6,4,2,5,2,9,8,7,3,1,6,4,8,7,1,5,6,4,2,9,3,6,3,4,1,9,2,7,8,5}
medpuzzleSOL[47]={1,9,2,5,7,8,4,3,6,7,4,8,9,6,3,2,1,5,3,5,6,1,2,4,7,9,8,6,3,5,4,9,7,1,8,2,8,7,9,6,1,2,3,5,4,2,1,4,8,3,5,9,6,7,9,8,1,7,4,6,5,2,3,5,2,7,3,8,9,6,4,1,4,6,3,2,5,1,8,7,9}
medpuzzleSOL[48]={3,9,8,1,2,4,7,5,6,5,6,2,9,7,3,1,4,8,1,4,7,8,6,5,9,3,2,8,3,4,6,9,1,2,7,5,6,7,1,5,3,2,8,9,4,2,5,9,4,8,7,6,1,3,7,1,3,2,4,8,5,6,9,9,8,5,3,1,6,4,2,7,4,2,6,7,5,9,3,8,1}
medpuzzleSOL[49]={8,4,5,9,7,6,3,2,1,2,6,3,1,4,5,8,9,7,7,9,1,3,2,8,6,5,4,4,5,7,6,3,2,1,8,9,6,8,9,7,5,1,4,3,2,1,3,2,8,9,4,7,6,5,9,1,6,5,8,7,2,4,3,5,7,4,2,6,3,9,1,8,3,2,8,4,1,9,5,7,6}
medpuzzleSOL[50]={6,9,2,1,5,8,3,4,7,4,1,7,9,6,3,2,5,8,8,3,5,4,7,2,6,9,1,9,5,3,8,1,7,4,6,2,1,7,6,2,4,9,5,8,3,2,4,8,5,3,6,7,1,9,5,8,1,7,2,4,9,3,6,3,2,4,6,9,1,8,7,5,7,6,9,3,8,5,1,2,4}
medpuzzleSOL[51]={3,4,9,7,8,5,1,6,2,6,5,1,3,2,9,8,7,4,8,2,7,4,6,1,9,5,3,5,3,4,9,1,8,6,2,7,7,1,2,6,5,3,4,8,9,9,8,6,2,7,4,5,3,1,4,7,8,5,9,2,3,1,6,2,9,5,1,3,6,7,4,8,1,6,3,8,4,7,2,9,5}
medpuzzleSOL[52]={2,7,9,3,6,8,1,5,4,3,1,8,2,5,4,6,9,7,6,4,5,1,7,9,2,3,8,8,9,4,6,2,3,5,7,1,5,2,3,7,4,1,9,8,6,1,6,7,8,9,5,4,2,3,9,8,2,4,1,7,3,6,5,4,3,6,5,8,2,7,1,9,7,5,1,9,3,6,8,4,2}
medpuzzleSOL[53]={6,9,5,7,8,3,2,1,4,2,8,4,1,5,6,3,9,7,1,7,3,9,2,4,6,8,5,3,1,6,2,7,8,4,5,9,9,5,8,3,4,1,7,6,2,4,2,7,6,9,5,1,3,8,7,4,1,5,3,9,8,2,6,8,6,9,4,1,2,5,7,3,5,3,2,8,6,7,9,4,1}
medpuzzleSOL[54]={3,8,1,4,6,5,9,7,2,5,7,6,1,9,2,4,8,3,9,2,4,7,3,8,1,5,6,8,4,5,9,2,3,7,6,1,2,1,3,6,5,7,8,9,4,7,6,9,8,4,1,3,2,5,4,5,7,3,8,6,2,1,9,6,9,8,2,1,4,5,3,7,1,3,2,5,7,9,6,4,8}
medpuzzleSOL[55]={4,8,5,1,7,2,6,9,3,7,3,2,4,9,6,5,8,1,9,1,6,3,5,8,2,4,7,1,9,7,5,2,4,8,3,6,2,5,3,8,6,7,9,1,4,8,6,4,9,1,3,7,2,5,3,7,1,2,8,5,4,6,9,5,2,9,6,4,1,3,7,8,6,4,8,7,3,9,1,5,2}
medpuzzleSOL[56]={7,6,5,4,2,8,9,1,3,3,2,8,9,1,5,7,4,6,4,9,1,6,3,7,2,5,8,2,7,3,5,6,1,4,8,9,6,8,4,3,7,9,1,2,5,1,5,9,8,4,2,6,3,7,8,1,2,7,5,6,3,9,4,9,4,6,1,8,3,5,7,2,5,3,7,2,9,4,8,6,1}
medpuzzleSOL[57]={4,7,8,1,6,2,9,3,5,2,3,1,7,9,5,8,4,6,6,9,5,8,3,4,2,1,7,5,1,6,9,8,7,4,2,3,7,2,3,4,5,1,6,9,8,8,4,9,6,2,3,5,7,1,3,8,4,2,1,6,7,5,9,9,5,7,3,4,8,1,6,2,1,6,2,5,7,9,3,8,4}
medpuzzleSOL[58]={5,8,4,3,9,7,2,1,6,3,7,6,1,2,4,9,5,8,9,1,2,5,6,8,4,7,3,4,9,1,6,8,5,7,3,2,7,2,8,9,3,1,5,6,4,6,5,3,7,4,2,1,8,9,2,3,7,4,5,6,8,9,1,1,4,9,8,7,3,6,2,5,8,6,5,2,1,9,3,4,7}
medpuzzleSOL[59]={1,9,2,6,8,3,7,5,4,6,5,7,9,1,4,3,8,2,3,8,4,5,2,7,9,6,1,4,6,9,3,5,1,8,2,7,8,2,5,7,4,6,1,3,9,7,3,1,2,9,8,6,4,5,2,7,3,1,6,5,4,9,8,5,1,8,4,3,9,2,7,6,9,4,6,8,7,2,5,1,3}
medpuzzleSOL[60]={4,8,7,3,5,1,6,9,2,5,9,3,2,6,8,4,1,7,1,6,2,4,7,9,5,8,3,8,3,1,5,4,7,9,2,6,6,4,9,1,2,3,8,7,5,2,7,5,9,8,6,1,3,4,7,1,6,8,3,4,2,5,9,3,5,8,6,9,2,7,4,1,9,2,4,7,1,5,3,6,8}
medpuzzleSOL[61]={6,3,5,2,7,9,1,8,4,9,8,7,4,1,3,5,2,6,4,2,1,6,8,5,3,9,7,5,7,2,1,6,8,9,4,3,3,6,9,7,5,4,8,1,2,8,1,4,3,9,2,7,6,5,2,5,6,9,3,1,4,7,8,1,4,8,5,2,7,6,3,9,7,9,3,8,4,6,2,5,1}
medpuzzleSOL[62]={9,7,3,8,2,1,5,6,4,1,8,6,5,3,4,2,9,7,2,4,5,7,9,6,1,8,3,3,5,1,6,8,2,4,7,9,4,9,7,1,5,3,8,2,6,8,6,2,4,7,9,3,1,5,6,3,8,2,4,7,9,5,1,7,2,4,9,1,5,6,3,8,5,1,9,3,6,8,7,4,2}
medpuzzleSOL[63]={6,3,7,5,4,9,1,8,2,9,1,5,7,8,2,6,3,4,4,2,8,6,3,1,9,5,7,3,8,9,2,7,4,5,6,1,2,5,1,8,9,6,4,7,3,7,6,4,3,1,5,8,2,9,8,4,2,9,6,7,3,1,5,5,9,3,1,2,8,7,4,6,1,7,6,4,5,3,2,9,8}
medpuzzleSOL[64]={6,3,7,2,9,5,4,8,1,2,5,1,4,8,3,7,6,9,8,9,4,6,7,1,2,5,3,5,7,8,3,6,4,1,9,2,9,4,2,1,5,7,8,3,6,3,1,6,9,2,8,5,7,4,4,2,5,7,3,9,6,1,8,7,6,3,8,1,2,9,4,5,1,8,9,5,4,6,3,2,7}
medpuzzleSOL[65]={4,1,9,8,7,2,5,6,3,5,3,6,4,9,1,7,8,2,2,8,7,5,6,3,9,4,1,6,9,2,7,3,5,4,1,8,8,7,1,6,2,4,3,9,5,3,4,5,9,1,8,2,7,6,9,2,8,1,5,7,6,3,4,1,6,3,2,4,9,8,5,7,7,5,4,3,8,6,1,2,9}
medpuzzleSOL[66]={2,8,5,6,4,7,1,3,9,1,3,4,5,9,8,7,2,6,7,6,9,1,3,2,4,5,8,4,1,6,7,8,5,2,9,3,9,7,2,4,6,3,8,1,5,8,5,3,2,1,9,6,7,4,5,9,1,8,2,6,3,4,7,3,4,8,9,7,1,5,6,2,6,2,7,3,5,4,9,8,1}
medpuzzleSOL[67]={2,9,1,6,4,3,5,8,7,5,8,4,2,7,1,9,3,6,6,7,3,8,5,9,1,2,4,7,5,8,9,3,6,2,4,1,4,1,6,5,8,2,3,7,9,3,2,9,7,1,4,8,6,5,8,4,2,1,9,7,6,5,3,9,3,5,4,6,8,7,1,2,1,6,7,3,2,5,4,9,8}
medpuzzleSOL[68]={1,9,4,5,7,3,6,8,2,7,6,2,1,9,8,3,5,4,8,5,3,4,2,6,9,1,7,9,4,8,2,3,1,5,7,6,2,3,1,7,6,5,8,4,9,5,7,6,9,8,4,2,3,1,3,2,9,8,4,7,1,6,5,4,8,5,6,1,9,7,2,3,6,1,7,3,5,2,4,9,8}
medpuzzleSOL[69]={6,2,5,4,1,7,3,9,8,4,8,1,2,3,9,7,5,6,3,7,9,8,5,6,1,4,2,2,9,8,3,6,4,5,1,7,1,4,6,9,7,5,8,2,3,5,3,7,1,8,2,4,6,9,8,6,3,5,2,1,9,7,4,9,1,2,7,4,3,6,8,5,7,5,4,6,9,8,2,3,1}
medpuzzleSOL[70]={6,2,7,8,1,5,3,4,9,9,1,8,4,3,2,6,7,5,4,5,3,6,9,7,1,8,2,1,8,9,7,6,3,5,2,4,2,4,6,9,5,1,8,3,7,7,3,5,2,4,8,9,6,1,5,7,1,3,8,4,2,9,6,8,6,4,1,2,9,7,5,3,3,9,2,5,7,6,4,1,8}
medpuzzleSOL[71]={5,2,4,8,9,1,7,6,3,6,1,3,2,7,5,4,9,8,7,9,8,6,3,4,2,1,5,2,6,5,7,8,3,9,4,1,1,8,7,9,4,2,3,5,6,4,3,9,1,5,6,8,2,7,9,5,6,3,2,8,1,7,4,3,7,1,4,6,9,5,8,2,8,4,2,5,1,7,6,3,9}
medpuzzleSOL[72]={9,3,4,2,7,1,6,8,5,8,5,6,9,3,4,1,2,7,7,1,2,8,6,5,3,4,9,4,6,5,1,9,2,7,3,8,3,7,9,6,4,8,5,1,2,2,8,1,3,5,7,9,6,4,5,4,3,7,8,6,2,9,1,6,2,7,4,1,9,8,5,3,1,9,8,5,2,3,4,7,6}
medpuzzleSOL[73]={5,7,6,4,2,1,8,9,3,3,1,2,9,8,5,4,6,7,4,9,8,7,3,6,5,2,1,2,5,3,8,1,4,9,7,6,6,4,7,2,5,9,3,1,8,1,8,9,6,7,3,2,5,4,9,2,4,3,6,7,1,8,5,8,6,1,5,4,2,7,3,9,7,3,5,1,9,8,6,4,2}
medpuzzleSOL[74]={4,5,8,1,9,2,3,7,6,2,3,1,5,6,7,9,8,4,9,6,7,4,8,3,2,5,1,8,1,9,7,4,6,5,3,2,3,4,2,8,5,1,6,9,7,5,7,6,3,2,9,4,1,8,7,2,5,6,3,8,1,4,9,6,8,3,9,1,4,7,2,5,1,9,4,2,7,5,8,6,3}
medpuzzleSOL[75]={4,2,7,6,9,3,8,1,5,1,8,6,4,5,2,7,9,3,3,9,5,1,8,7,4,2,6,2,3,9,7,1,6,5,8,4,7,5,1,3,4,8,2,6,9,8,6,4,5,2,9,3,7,1,6,4,8,9,7,5,1,3,2,9,1,2,8,3,4,6,5,7,5,7,3,2,6,1,9,4,8}
medpuzzleSOL[76]={4,1,5,3,7,6,2,9,8,7,3,2,1,8,9,5,4,6,6,8,9,5,4,2,7,1,3,8,7,6,2,5,1,4,3,9,1,2,3,6,9,4,8,7,5,9,5,4,8,3,7,6,2,1,2,9,1,4,6,8,3,5,7,5,6,7,9,2,3,1,8,4,3,4,8,7,1,5,9,6,2}
medpuzzleSOL[77]={4,3,7,5,1,6,8,9,2,9,1,6,8,4,2,7,3,5,2,5,8,9,7,3,4,6,1,6,9,1,3,8,4,5,2,7,8,2,3,7,9,5,1,4,6,7,4,5,2,6,1,3,8,9,1,8,9,4,2,7,6,5,3,3,7,2,6,5,8,9,1,4,5,6,4,1,3,9,2,7,8}
medpuzzleSOL[78]={4,1,7,6,8,5,9,3,2,6,5,2,9,3,7,4,1,8,9,3,8,2,4,1,7,5,6,7,9,5,1,2,4,8,6,3,3,6,1,7,9,8,2,4,5,2,8,4,5,6,3,1,7,9,8,7,3,4,5,9,6,2,1,1,2,9,3,7,6,5,8,4,5,4,6,8,1,2,3,9,7}
medpuzzleSOL[79]={8,1,9,6,3,4,2,5,7,3,7,4,1,5,2,8,6,9,2,6,5,8,9,7,3,4,1,4,3,1,2,7,9,6,8,5,7,9,8,5,6,3,1,2,4,6,5,2,4,8,1,9,7,3,5,4,3,9,2,8,7,1,6,9,2,6,7,1,5,4,3,8,1,8,7,3,4,6,5,9,2}
medpuzzleSOL[80]={1,5,8,9,6,4,3,7,2,7,9,3,2,8,5,1,6,4,2,4,6,7,1,3,8,9,5,3,2,7,1,4,9,5,8,6,9,8,5,6,3,2,7,4,1,4,6,1,8,5,7,2,3,9,6,7,2,5,9,8,4,1,3,5,1,4,3,7,6,9,2,8,8,3,9,4,2,1,6,5,7}
medpuzzleSOL[81]={2,3,7,1,6,8,9,5,4,8,5,9,3,2,4,1,6,7,4,1,6,7,9,5,3,8,2,5,7,2,6,8,3,4,9,1,1,6,8,9,4,7,5,2,3,3,9,4,2,5,1,6,7,8,6,8,1,5,3,2,7,4,9,7,4,5,8,1,9,2,3,6,9,2,3,4,7,6,8,1,5}
medpuzzleSOL[82]={6,8,7,2,3,9,5,1,4,3,9,2,4,1,5,6,7,8,4,1,5,8,7,6,9,2,3,7,4,3,5,9,2,8,6,1,5,6,1,3,8,4,7,9,2,8,2,9,7,6,1,3,4,5,2,7,6,1,5,3,4,8,9,1,3,8,9,4,7,2,5,6,9,5,4,6,2,8,1,3,7}
medpuzzleSOL[83]={6,3,8,4,7,5,9,2,1,5,9,1,3,8,2,6,4,7,2,7,4,6,1,9,3,8,5,7,1,6,2,4,8,5,3,9,8,5,3,9,6,7,4,1,2,9,4,2,1,5,3,7,6,8,3,6,7,5,2,1,8,9,4,1,8,9,7,3,4,2,5,6,4,2,5,8,9,6,1,7,3}
medpuzzleSOL[84]={2,4,8,9,7,6,3,1,5,5,6,7,8,1,3,2,9,4,1,3,9,2,4,5,7,8,6,6,2,5,1,8,7,4,3,9,7,8,3,5,9,4,6,2,1,9,1,4,6,3,2,8,5,7,3,5,6,7,2,9,1,4,8,8,9,2,4,6,1,5,7,3,4,7,1,3,5,8,9,6,2}
medpuzzleSOL[85]={3,5,2,4,1,8,6,9,7,7,4,9,6,2,5,1,8,3,1,8,6,3,9,7,2,4,5,8,9,3,5,4,2,7,6,1,5,1,7,8,6,9,3,2,4,6,2,4,7,3,1,8,5,9,2,3,5,9,7,6,4,1,8,9,7,1,2,8,4,5,3,6,4,6,8,1,5,3,9,7,2}
medpuzzleSOL[86]={8,5,9,2,3,6,4,7,1,4,1,6,7,5,8,9,3,2,3,7,2,4,9,1,6,8,5,5,2,8,9,4,7,3,1,6,6,9,4,3,1,2,7,5,8,1,3,7,8,6,5,2,9,4,2,4,3,1,8,9,5,6,7,9,6,1,5,7,4,8,2,3,7,8,5,6,2,3,1,4,9}
medpuzzleSOL[87]={5,4,3,2,8,1,9,6,7,1,7,9,5,6,3,8,2,4,8,6,2,7,4,9,3,5,1,3,1,5,9,2,6,4,7,8,9,2,4,1,7,8,6,3,5,6,8,7,3,5,4,2,1,9,2,3,8,4,1,5,7,9,6,4,9,1,6,3,7,5,8,2,7,5,6,8,9,2,1,4,3}
medpuzzleSOL[88]={2,5,6,1,7,4,8,9,3,7,4,8,6,9,3,2,1,5,3,9,1,8,5,2,4,7,6,4,3,7,2,1,6,9,5,8,5,1,2,4,8,9,6,3,7,6,8,9,5,3,7,1,2,4,8,7,5,9,4,1,3,6,2,9,6,3,7,2,8,5,4,1,1,2,4,3,6,5,7,8,9}
medpuzzleSOL[89]={3,2,5,4,6,8,1,9,7,8,1,4,5,9,7,3,2,6,9,6,7,1,3,2,8,5,4,6,4,8,9,5,3,2,7,1,1,5,9,7,2,4,6,3,8,7,3,2,8,1,6,9,4,5,4,9,3,6,7,1,5,8,2,2,8,6,3,4,5,7,1,9,5,7,1,2,8,9,4,6,3}
medpuzzleSOL[90]={5,2,1,4,8,7,6,9,3,6,7,3,2,9,1,4,5,8,8,4,9,3,5,6,7,1,2,9,8,7,5,6,3,2,4,1,1,3,2,8,4,9,5,7,6,4,6,5,1,7,2,8,3,9,7,1,8,9,2,4,3,6,5,3,5,4,6,1,8,9,2,7,2,9,6,7,3,5,1,8,4}
medpuzzleSOL[91]={1,2,5,4,3,9,6,8,7,4,6,3,2,8,7,5,1,9,9,8,7,5,1,6,3,4,2,8,7,2,9,5,1,4,3,6,6,3,9,8,2,4,7,5,1,5,1,4,7,6,3,9,2,8,2,9,8,3,7,5,1,6,4,3,4,6,1,9,8,2,7,5,7,5,1,6,4,2,8,9,3}
medpuzzleSOL[92]={3,2,7,9,1,5,6,8,4,4,5,1,6,8,3,7,9,2,8,6,9,4,7,2,5,1,3,7,4,2,3,5,8,9,6,1,5,9,8,1,6,4,2,3,7,1,3,6,2,9,7,4,5,8,9,7,3,8,4,6,1,2,5,2,1,5,7,3,9,8,4,6,6,8,4,5,2,1,3,7,9}
medpuzzleSOL[93]={3,4,5,1,9,8,7,2,6,9,2,6,7,4,3,5,8,1,8,7,1,2,6,5,9,3,4,4,6,2,5,1,9,8,7,3,7,5,8,3,2,6,4,1,9,1,3,9,4,8,7,6,5,2,5,1,4,9,7,2,3,6,8,6,9,7,8,3,1,2,4,5,2,8,3,6,5,4,1,9,7}
medpuzzleSOL[94]={9,4,8,3,2,6,7,1,5,5,3,2,7,1,9,6,4,8,1,6,7,4,8,5,9,3,2,3,9,4,8,5,1,2,7,6,8,1,5,2,6,7,4,9,3,7,2,6,9,4,3,8,5,1,2,5,9,6,3,4,1,8,7,4,8,1,5,7,2,3,6,9,6,7,3,1,9,8,5,2,4}
medpuzzleSOL[95]={9,6,7,5,8,1,2,3,4,4,3,2,7,6,9,5,1,8,1,5,8,3,2,4,7,6,9,6,7,4,2,1,5,9,8,3,3,8,9,6,4,7,1,5,2,5,2,1,8,9,3,6,4,7,8,1,5,9,3,2,4,7,6,7,9,3,4,5,6,8,2,1,2,4,6,1,7,8,3,9,5}
medpuzzleSOL[96]={8,6,4,5,9,2,1,3,7,9,2,3,8,1,7,4,5,6,1,7,5,6,4,3,8,2,9,4,8,7,1,6,5,3,9,2,6,3,1,2,8,9,7,4,5,2,5,9,3,7,4,6,1,8,5,4,6,7,2,1,9,8,3,3,9,8,4,5,6,2,7,1,7,1,2,9,3,8,5,6,4}
medpuzzleSOL[97]={2,9,3,1,6,8,7,5,4,7,6,1,5,3,4,8,2,9,4,5,8,9,7,2,6,1,3,9,1,2,4,8,7,3,6,5,6,3,7,2,1,5,4,9,8,5,8,4,3,9,6,1,7,2,8,2,6,7,5,3,9,4,1,1,7,5,8,4,9,2,3,6,3,4,9,6,2,1,5,8,7}
medpuzzleSOL[98]={9,5,1,7,6,8,4,3,2,4,8,7,2,3,1,6,9,5,3,2,6,9,4,5,7,8,1,1,9,8,6,2,3,5,7,4,6,7,5,4,1,9,8,2,3,2,4,3,8,5,7,1,6,9,8,3,4,5,9,6,2,1,7,5,6,9,1,7,2,3,4,8,7,1,2,3,8,4,9,5,6}
medpuzzleSOL[99]={1,6,2,9,5,3,4,8,7,4,9,3,8,7,2,6,1,5,7,8,5,1,4,6,3,2,9,2,7,6,3,1,5,8,9,4,8,4,1,7,2,9,5,3,6,5,3,9,4,6,8,2,7,1,9,2,4,5,3,7,1,6,8,6,1,8,2,9,4,7,5,3,3,5,7,6,8,1,9,4,2}
medpuzzleSOL[100]={7,1,5,9,4,8,3,2,6,9,2,8,6,3,7,1,4,5,3,4,6,1,2,5,8,7,9,1,6,7,3,5,2,9,8,4,5,8,4,7,9,1,6,3,2,2,9,3,8,6,4,5,1,7,4,5,1,2,8,6,7,9,3,6,7,9,4,1,3,2,5,8,8,3,2,5,7,9,4,6,1}
medpuzzleSOL[101]={1,3,4,9,2,7,6,8,5,9,6,8,5,3,4,7,2,1,7,2,5,6,8,1,3,4,9,6,8,2,3,1,9,4,5,7,3,1,7,2,4,5,9,6,8,4,5,9,8,7,6,1,3,2,8,7,1,4,5,3,2,9,6,2,9,3,7,6,8,5,1,4,5,4,6,1,9,2,8,7,3}
medpuzzleSOL[102]={9,3,5,1,7,8,2,6,4,8,7,1,2,6,4,5,3,9,2,4,6,5,3,9,7,8,1,7,9,3,4,2,6,1,5,8,6,5,2,8,1,3,4,9,7,4,1,8,7,9,5,3,2,6,5,8,7,6,4,2,9,1,3,3,2,4,9,8,1,6,7,5,1,6,9,3,5,7,8,4,2}
medpuzzleSOL[103]={1,9,8,5,4,6,3,2,7,3,7,2,9,1,8,5,4,6,5,4,6,2,3,7,1,8,9,9,6,1,7,2,5,4,3,8,8,3,4,1,6,9,2,7,5,2,5,7,4,8,3,9,6,1,7,1,3,6,9,4,8,5,2,4,2,5,8,7,1,6,9,3,6,8,9,3,5,2,7,1,4}
medpuzzleSOL[104]={3,1,8,6,9,2,4,5,7,2,9,5,3,7,4,8,1,6,6,4,7,5,8,1,9,3,2,5,2,9,8,1,3,7,6,4,7,6,4,9,2,5,3,8,1,8,3,1,7,4,6,2,9,5,1,7,3,4,6,8,5,2,9,9,5,2,1,3,7,6,4,8,4,8,6,2,5,9,1,7,3}
medpuzzleSOL[105]={5,8,4,1,3,9,6,2,7,3,1,2,4,7,6,8,5,9,7,6,9,8,2,5,3,4,1,8,2,5,9,6,4,7,1,3,1,9,3,2,5,7,4,8,6,4,7,6,3,8,1,5,9,2,2,3,7,5,9,8,1,6,4,9,5,1,6,4,3,2,7,8,6,4,8,7,1,2,9,3,5}
medpuzzleSOL[106]={2,3,4,9,6,5,7,8,1,9,1,5,7,4,8,6,3,2,6,7,8,3,1,2,5,9,4,7,5,3,4,9,6,1,2,8,4,8,9,2,7,1,3,5,6,1,2,6,8,5,3,4,7,9,3,9,1,5,2,4,8,6,7,8,4,7,6,3,9,2,1,5,5,6,2,1,8,7,9,4,3}
medpuzzleSOL[107]={1,3,7,4,5,9,8,2,6,5,9,8,6,2,1,3,7,4,6,4,2,8,7,3,5,9,1,7,1,6,9,4,8,2,3,5,9,8,3,5,1,2,6,4,7,4,2,5,3,6,7,1,8,9,3,5,9,7,8,6,4,1,2,2,7,4,1,3,5,9,6,8,8,6,1,2,9,4,7,5,3}
medpuzzleSOL[108]={1,2,6,8,3,5,4,7,9,3,5,4,2,9,7,8,6,1,9,8,7,1,6,4,3,2,5,8,9,2,5,7,3,6,1,4,7,6,3,9,4,1,2,5,8,5,4,1,6,2,8,7,9,3,4,3,5,7,1,6,9,8,2,6,1,9,3,8,2,5,4,7,2,7,8,4,5,9,1,3,6}
medpuzzleSOL[109]={8,2,1,4,5,7,9,3,6,4,5,9,3,6,8,7,1,2,7,3,6,1,2,9,8,4,5,5,9,3,2,4,6,1,7,8,6,8,2,7,9,1,3,5,4,1,4,7,8,3,5,2,6,9,9,1,4,6,8,3,5,2,7,3,6,8,5,7,2,4,9,1,2,7,5,9,1,4,6,8,3}
medpuzzleSOL[110]={5,7,3,9,8,2,4,1,6,9,2,8,4,1,6,7,3,5,1,4,6,3,5,7,9,2,8,3,1,7,8,4,9,5,6,2,2,8,9,5,6,1,3,4,7,4,6,5,2,7,3,8,9,1,6,5,1,7,9,4,2,8,3,8,3,4,6,2,5,1,7,9,7,9,2,1,3,8,6,5,4}
medpuzzleSOL[111]={8,9,7,4,1,5,6,3,2,4,5,2,3,8,6,7,9,1,3,6,1,2,7,9,4,8,5,1,7,6,5,3,2,9,4,8,9,8,5,7,4,1,2,6,3,2,4,3,6,9,8,5,1,7,7,3,9,1,2,4,8,5,6,5,2,8,9,6,3,1,7,4,6,1,4,8,5,7,3,2,9}
medpuzzleSOL[112]={6,5,9,4,1,8,7,3,2,7,4,1,3,6,2,8,5,9,8,2,3,5,9,7,4,6,1,1,3,8,2,5,6,9,7,4,9,6,2,7,4,1,3,8,5,4,7,5,8,3,9,2,1,6,3,8,6,1,2,4,5,9,7,2,9,7,6,8,5,1,4,3,5,1,4,9,7,3,6,2,8}
medpuzzleSOL[113]={8,2,1,6,9,7,3,5,4,6,7,9,3,5,4,2,1,8,3,5,4,1,8,2,7,9,6,2,1,7,5,4,6,9,8,3,9,4,3,8,2,1,6,7,5,5,6,8,9,7,3,1,4,2,7,8,2,4,3,9,5,6,1,1,3,5,7,6,8,4,2,9,4,9,6,2,1,5,8,3,7}
medpuzzleSOL[114]={1,2,7,3,6,5,9,8,4,5,4,3,8,9,2,7,1,6,6,8,9,7,4,1,3,5,2,4,5,2,1,8,7,6,3,9,9,7,6,4,5,3,8,2,1,3,1,8,9,2,6,5,4,7,2,3,1,6,7,8,4,9,5,7,9,5,2,3,4,1,6,8,8,6,4,5,1,9,2,7,3}
medpuzzleSOL[115]={9,7,2,1,3,4,8,5,6,3,8,1,5,7,6,4,9,2,4,5,6,2,9,8,1,7,3,8,9,4,7,6,5,2,3,1,6,2,7,8,1,3,9,4,5,1,3,5,9,4,2,7,6,8,2,6,3,4,8,9,5,1,7,7,4,8,6,5,1,3,2,9,5,1,9,3,2,7,6,8,4}
medpuzzleSOL[116]={5,4,2,6,7,8,1,9,3,8,3,9,2,1,5,4,6,7,6,1,7,9,3,4,8,5,2,7,8,6,1,5,2,9,3,4,4,9,3,7,8,6,5,2,1,2,5,1,3,4,9,7,8,6,1,7,5,8,6,3,2,4,9,3,2,8,4,9,7,6,1,5,9,6,4,5,2,1,3,7,8}
medpuzzleSOL[117]={6,1,7,9,4,2,5,8,3,4,2,5,8,6,3,1,7,9,8,3,9,7,1,5,4,6,2,5,9,6,1,2,4,7,3,8,1,4,2,3,8,7,9,5,6,7,8,3,6,5,9,2,4,1,2,6,8,5,7,1,3,9,4,3,5,1,4,9,8,6,2,7,9,7,4,2,3,6,8,1,5}
medpuzzleSOL[118]={2,3,4,9,8,6,1,5,7,6,5,8,1,7,3,2,9,4,7,9,1,2,5,4,8,6,3,3,8,6,5,9,1,4,7,2,5,4,7,3,2,8,9,1,6,9,1,2,6,4,7,3,8,5,8,7,3,4,1,5,6,2,9,1,6,9,7,3,2,5,4,8,4,2,5,8,6,9,7,3,1}
medpuzzleSOL[119]={1,8,5,9,4,6,7,2,3,6,7,3,5,8,2,1,4,9,4,9,2,3,7,1,8,6,5,7,5,4,2,6,8,3,9,1,9,2,1,4,5,3,6,7,8,8,3,6,7,1,9,2,5,4,5,6,7,1,3,4,9,8,2,2,1,8,6,9,5,4,3,7,3,4,9,8,2,7,5,1,6}
medpuzzleSOL[120]={3,4,9,2,5,1,7,8,6,2,6,5,7,3,8,4,9,1,7,1,8,9,4,6,2,5,3,5,8,4,6,1,2,3,7,9,6,9,3,4,8,7,1,2,5,1,2,7,5,9,3,6,4,8,4,7,1,8,6,5,9,3,2,8,3,2,1,7,9,5,6,4,9,5,6,3,2,4,8,1,7}
medpuzzleSOL[121]={9,4,6,3,1,8,2,5,7,7,8,5,9,2,4,3,6,1,1,3,2,7,5,6,4,9,8,3,5,7,2,8,9,6,1,4,8,9,4,1,6,3,7,2,5,6,2,1,5,4,7,8,3,9,5,6,3,8,7,1,9,4,2,4,1,8,6,9,2,5,7,3,2,7,9,4,3,5,1,8,6}
medpuzzleSOL[122]={9,7,1,5,2,8,3,6,4,3,8,2,4,7,6,5,1,9,4,5,6,3,1,9,7,8,2,8,1,4,7,5,2,6,9,3,6,2,9,8,3,1,4,5,7,7,3,5,9,6,4,8,2,1,2,4,8,6,9,3,1,7,5,1,6,7,2,4,5,9,3,8,5,9,3,1,8,7,2,4,6}
medpuzzleSOL[123]={7,2,1,4,3,8,5,9,6,8,6,9,7,2,5,1,4,3,3,5,4,6,9,1,8,7,2,9,3,6,1,8,2,4,5,7,1,8,2,5,4,7,6,3,9,4,7,5,3,6,9,2,8,1,6,1,8,9,5,3,7,2,4,2,4,3,8,7,6,9,1,5,5,9,7,2,1,4,3,6,8}
medpuzzleSOL[124]={6,9,1,8,3,7,2,5,4,7,4,8,2,1,5,3,9,6,5,2,3,6,4,9,1,7,8,3,8,4,7,5,2,6,1,9,2,7,6,9,8,1,4,3,5,1,5,9,4,6,3,7,8,2,9,3,7,5,2,6,8,4,1,4,1,2,3,9,8,5,6,7,8,6,5,1,7,4,9,2,3}
medpuzzleSOL[125]={1,5,6,7,9,8,4,2,3,3,7,8,1,4,2,5,9,6,2,9,4,5,3,6,8,1,7,5,6,1,4,2,7,3,8,9,7,8,9,3,6,5,1,4,2,4,2,3,9,8,1,6,7,5,9,3,7,8,5,4,2,6,1,8,1,2,6,7,3,9,5,4,6,4,5,2,1,9,7,3,8}
medpuzzleSOL[126]={8,1,3,2,9,7,4,5,6,6,2,7,4,5,3,8,9,1,9,4,5,6,1,8,7,2,3,4,3,6,1,7,2,5,8,9,2,5,8,9,4,6,1,3,7,1,7,9,3,8,5,6,4,2,3,6,1,8,2,4,9,7,5,5,9,4,7,3,1,2,6,8,7,8,2,5,6,9,3,1,4}
medpuzzleSOL[127]={6,3,7,1,2,4,8,9,5,1,4,8,9,3,5,6,2,7,5,2,9,6,8,7,3,1,4,8,6,4,5,9,3,2,7,1,3,1,5,8,7,2,9,4,6,9,7,2,4,1,6,5,8,3,2,5,3,7,4,9,1,6,8,4,8,6,2,5,1,7,3,9,7,9,1,3,6,8,4,5,2}
medpuzzleSOL[128]={6,9,7,3,2,8,4,1,5,2,3,8,1,4,5,7,9,6,5,4,1,6,9,7,3,2,8,1,6,4,9,5,3,2,8,7,7,8,5,2,6,1,9,3,4,9,2,3,7,8,4,5,6,1,4,5,9,8,1,2,6,7,3,8,7,6,5,3,9,1,4,2,3,1,2,4,7,6,8,5,9}
medpuzzleSOL[129]={5,3,9,2,8,7,4,6,1,6,8,1,4,5,3,2,7,9,2,7,4,6,1,9,8,3,5,3,9,8,5,7,4,1,2,6,1,2,7,8,3,6,5,9,4,4,5,6,1,9,2,3,8,7,9,4,2,3,6,5,7,1,8,8,6,5,7,2,1,9,4,3,7,1,3,9,4,8,6,5,2}
medpuzzleSOL[130]={8,5,3,9,6,4,2,7,1,2,7,4,5,1,8,3,6,9,6,9,1,2,3,7,8,5,4,4,1,5,3,2,6,7,9,8,9,8,6,4,7,1,5,2,3,3,2,7,8,5,9,1,4,6,5,4,9,7,8,3,6,1,2,7,6,8,1,9,2,4,3,5,1,3,2,6,4,5,9,8,7}
medpuzzleSOL[131]={4,5,6,2,9,8,3,1,7,8,2,1,7,4,3,5,9,6,3,9,7,5,1,6,4,2,8,7,4,2,8,6,1,9,3,5,5,6,3,4,2,9,7,8,1,9,1,8,3,5,7,2,6,4,6,3,5,9,8,4,1,7,2,2,8,9,1,7,5,6,4,3,1,7,4,6,3,2,8,5,9}
medpuzzleSOL[132]={4,2,7,1,3,8,9,5,6,9,8,5,2,4,6,7,1,3,6,3,1,7,9,5,8,2,4,3,7,9,5,8,1,4,6,2,1,5,8,4,6,2,3,9,7,2,6,4,3,7,9,1,8,5,7,1,6,8,5,3,2,4,9,8,9,3,6,2,4,5,7,1,5,4,2,9,1,7,6,3,8}
medpuzzleSOL[133]={3,9,8,6,1,7,2,5,4,7,5,6,2,9,4,8,3,1,4,2,1,3,5,8,7,9,6,2,8,5,9,6,3,1,4,7,9,1,7,4,8,2,5,6,3,6,3,4,5,7,1,9,8,2,8,6,2,7,3,5,4,1,9,5,7,9,1,4,6,3,2,8,1,4,3,8,2,9,6,7,5}
medpuzzleSOL[134]={7,2,3,1,4,8,6,5,9,4,5,8,7,6,9,3,1,2,9,6,1,5,2,3,8,4,7,8,4,2,3,1,7,9,6,5,1,3,7,6,9,5,2,8,4,5,9,6,4,8,2,7,3,1,3,8,5,9,7,4,1,2,6,6,7,4,2,3,1,5,9,8,2,1,9,8,5,6,4,7,3}
medpuzzleSOL[135]={8,5,2,1,6,4,7,9,3,1,6,4,9,7,3,5,8,2,7,9,3,2,8,5,4,6,1,5,1,8,7,3,6,9,2,4,2,4,9,8,5,1,6,3,7,6,3,7,4,9,2,8,1,5,9,8,1,5,2,7,3,4,6,4,7,6,3,1,8,2,5,9,3,2,5,6,4,9,1,7,8}
medpuzzleSOL[136]={2,7,9,4,5,3,6,8,1,8,3,4,1,7,6,2,5,9,5,6,1,9,2,8,4,3,7,7,8,6,5,3,9,1,2,4,9,5,3,2,1,4,7,6,8,1,4,2,8,6,7,5,9,3,4,1,5,3,8,2,9,7,6,6,2,8,7,9,1,3,4,5,3,9,7,6,4,5,8,1,2}
medpuzzleSOL[137]={5,6,8,9,7,2,1,3,4,4,7,9,1,3,6,5,8,2,2,3,1,8,5,4,6,7,9,6,9,7,3,4,1,2,5,8,1,8,4,2,9,5,3,6,7,3,2,5,6,8,7,4,9,1,8,4,6,5,2,9,7,1,3,9,5,2,7,1,3,8,4,6,7,1,3,4,6,8,9,2,5}
medpuzzleSOL[138]={5,9,8,1,6,3,4,7,2,4,6,1,7,2,9,8,5,3,2,3,7,4,8,5,6,9,1,1,7,6,9,5,2,3,8,4,3,4,5,8,7,1,9,2,6,9,8,2,6,3,4,7,1,5,8,1,3,2,4,7,5,6,9,6,5,9,3,1,8,2,4,7,7,2,4,5,9,6,1,3,8}
medpuzzleSOL[139]={5,1,4,2,7,3,9,8,6,3,9,8,6,5,1,7,2,4,7,6,2,9,4,8,5,1,3,1,7,9,5,3,2,4,6,8,8,4,6,1,9,7,3,5,2,2,5,3,4,8,6,1,9,7,9,2,5,7,6,4,8,3,1,6,3,7,8,1,9,2,4,5,4,8,1,3,2,5,6,7,9}
medpuzzleSOL[140]={6,4,1,2,5,8,3,7,9,3,7,9,6,4,1,8,2,5,2,8,5,3,7,9,1,6,4,1,6,7,4,9,3,5,8,2,8,3,4,5,2,6,7,9,1,5,9,2,1,8,7,6,4,3,9,2,6,8,3,5,4,1,7,7,1,3,9,6,4,2,5,8,4,5,8,7,1,2,9,3,6}
medpuzzleSOL[141]={2,8,6,9,3,7,1,4,5,9,5,1,4,2,8,7,3,6,7,4,3,6,1,5,8,9,2,8,2,7,1,9,4,6,5,3,4,3,5,7,8,6,2,1,9,6,1,9,2,5,3,4,8,7,5,6,2,3,4,1,9,7,8,3,9,4,8,7,2,5,6,1,1,7,8,5,6,9,3,2,4}
medpuzzleSOL[142]={7,5,9,8,2,4,1,6,3,6,4,3,5,1,7,8,9,2,1,2,8,6,3,9,5,4,7,3,9,6,1,8,5,2,7,4,4,8,5,7,6,2,3,1,9,2,7,1,9,4,3,6,8,5,9,6,2,4,5,1,7,3,8,8,3,7,2,9,6,4,5,1,5,1,4,3,7,8,9,2,6}
medpuzzleSOL[143]={1,8,5,6,9,2,3,4,7,2,4,7,1,3,5,9,6,8,3,9,6,7,4,8,1,5,2,6,3,8,9,1,4,2,7,5,7,2,9,8,5,6,4,1,3,5,1,4,3,2,7,6,8,9,8,6,3,2,7,1,5,9,4,4,7,2,5,6,9,8,3,1,9,5,1,4,8,3,7,2,6}
medpuzzleSOL[144]={1,2,9,6,7,4,5,8,3,6,4,5,2,8,3,7,1,9,7,8,3,9,5,1,4,2,6,4,7,8,3,1,9,2,6,5,9,1,6,5,4,2,3,7,8,3,5,2,8,6,7,9,4,1,5,3,7,1,2,8,6,9,4,8,9,4,7,3,6,1,5,2,2,6,1,4,9,5,8,3,7}
medpuzzleSOL[145]={2,3,7,9,8,1,4,5,6,6,8,4,7,2,5,1,3,9,1,5,9,3,4,6,7,8,2,4,9,1,8,6,3,5,2,7,8,2,6,5,7,9,3,4,1,3,7,5,4,1,2,9,6,8,5,6,2,1,3,7,8,9,4,7,4,3,6,9,8,2,1,5,9,1,8,2,5,4,6,7,3}
medpuzzleSOL[146]={6,4,8,1,7,2,5,3,9,2,3,7,6,5,9,4,8,1,1,5,9,4,3,8,6,2,7,9,2,5,8,4,1,3,7,6,8,7,1,5,6,3,2,9,4,4,6,3,9,2,7,8,1,5,5,1,2,7,8,4,9,6,3,3,9,6,2,1,5,7,4,8,7,8,4,3,9,6,1,5,2}
medpuzzleSOL[147]={7,4,9,5,1,6,2,8,3,5,1,3,8,2,9,7,4,6,6,2,8,4,3,7,9,1,5,8,7,2,1,6,3,5,9,4,1,3,4,7,9,5,6,2,8,9,5,6,2,4,8,1,3,7,2,8,5,9,7,4,3,6,1,4,6,1,3,5,2,8,7,9,3,9,7,6,8,1,4,5,2}
medpuzzleSOL[148]={5,6,9,4,2,1,7,8,3,1,7,8,9,5,3,2,4,6,4,2,3,7,8,6,1,5,9,7,8,4,6,9,2,5,3,1,6,1,2,3,7,5,8,9,4,3,9,5,1,4,8,6,2,7,2,3,7,8,1,4,9,6,5,9,5,6,2,3,7,4,1,8,8,4,1,5,6,9,3,7,2}
medpuzzleSOL[149]={6,9,2,7,1,8,3,5,4,7,5,4,9,3,6,1,2,8,3,1,8,4,5,2,7,6,9,1,2,6,8,4,7,9,3,5,4,3,9,5,2,1,6,8,7,5,8,7,6,9,3,4,1,2,8,7,5,3,6,4,2,9,1,9,6,1,2,7,5,8,4,3,2,4,3,1,8,9,5,7,6}
medpuzzleSOL[150]={5,6,2,9,7,8,4,1,3,9,3,1,4,2,6,7,8,5,7,4,8,1,3,5,9,6,2,1,5,4,3,6,2,8,9,7,3,2,9,7,8,1,6,5,4,8,7,6,5,4,9,3,2,1,2,8,3,6,5,4,1,7,9,6,1,7,2,9,3,5,4,8,4,9,5,8,1,7,2,3,6}
medpuzzleSOL[151]={1,2,3,4,9,8,7,5,6,7,9,8,5,6,3,4,1,2,4,6,5,7,1,2,3,8,9,3,1,9,8,7,6,2,4,5,5,4,2,1,3,9,8,6,7,6,8,7,2,4,5,1,9,3,8,5,6,3,2,1,9,7,4,9,3,4,6,8,7,5,2,1,2,7,1,9,5,4,6,3,8}
medpuzzleSOL[152]={9,4,1,3,7,6,2,8,5,6,5,3,2,4,8,1,9,7,2,8,7,1,5,9,6,3,4,4,3,2,6,1,5,9,7,8,1,9,5,4,8,7,3,6,2,8,7,6,9,2,3,4,5,1,3,1,8,5,9,2,7,4,6,7,2,9,8,6,4,5,1,3,5,6,4,7,3,1,8,2,9}
medpuzzleSOL[153]={9,6,4,7,5,1,8,2,3,8,2,3,4,9,6,1,5,7,1,5,7,2,3,8,6,4,9,5,3,1,8,4,7,9,6,2,4,8,6,1,2,9,3,7,5,7,9,2,5,6,3,4,1,8,3,4,9,6,7,2,5,8,1,2,1,5,3,8,4,7,9,6,6,7,8,9,1,5,2,3,4}
medpuzzleSOL[154]={5,6,7,2,9,4,8,1,3,2,1,3,6,7,8,9,5,4,9,8,4,1,3,5,6,7,2,6,9,2,7,4,1,5,3,8,4,3,8,9,5,6,7,2,1,1,7,5,8,2,3,4,6,9,3,2,9,5,8,7,1,4,6,7,4,6,3,1,9,2,8,5,8,5,1,4,6,2,3,9,7}
medpuzzleSOL[155]={3,4,2,5,8,9,1,7,6,6,7,1,3,4,2,5,8,9,9,5,8,7,6,1,2,4,3,4,1,9,2,7,5,6,3,8,7,2,3,8,1,6,9,5,4,8,6,5,4,9,3,7,2,1,5,9,4,6,3,7,8,1,2,2,8,6,1,5,4,3,9,7,1,3,7,9,2,8,4,6,5}
medpuzzleSOL[156]={1,6,7,4,9,2,5,8,3,2,5,4,3,7,8,1,6,9,3,8,9,1,5,6,4,7,2,8,4,5,6,2,1,9,3,7,6,7,1,5,3,9,2,4,8,9,3,2,8,4,7,6,5,1,4,2,6,7,1,3,8,9,5,5,1,3,9,8,4,7,2,6,7,9,8,2,6,5,3,1,4}
medpuzzleSOL[157]={4,6,5,1,9,3,8,2,7,7,8,3,4,2,6,1,9,5,2,9,1,8,5,7,6,3,4,8,4,6,9,7,2,5,1,3,5,1,2,6,3,4,7,8,9,9,3,7,5,1,8,4,6,2,1,2,4,3,8,5,9,7,6,3,5,8,7,6,9,2,4,1,6,7,9,2,4,1,3,5,8}
medpuzzleSOL[158]={6,4,9,3,2,7,5,1,8,3,1,7,4,8,5,6,2,9,8,2,5,6,9,1,3,7,4,9,6,4,7,1,8,2,3,5,5,8,1,9,3,2,7,4,6,2,7,3,5,4,6,9,8,1,7,5,8,2,6,4,1,9,3,1,3,6,8,7,9,4,5,2,4,9,2,1,5,3,8,6,7}
medpuzzleSOL[159]={8,3,4,9,2,5,1,6,7,1,9,7,6,4,8,3,2,5,2,6,5,3,1,7,8,9,4,7,8,6,4,3,9,5,1,2,5,4,1,8,6,2,7,3,9,3,2,9,5,7,1,4,8,6,4,1,2,7,9,3,6,5,8,6,5,3,2,8,4,9,7,1,9,7,8,1,5,6,2,4,3}
medpuzzleSOL[160]={7,3,4,2,5,8,1,9,6,6,5,9,1,4,3,7,2,8,1,8,2,9,6,7,5,4,3,4,7,1,5,3,2,6,8,9,2,6,8,4,7,9,3,5,1,5,9,3,8,1,6,4,7,2,9,1,6,7,8,5,2,3,4,8,4,7,3,2,1,9,6,5,3,2,5,6,9,4,8,1,7}
medpuzzleSOL[161]={3,9,1,2,5,8,7,4,6,5,6,8,7,4,3,2,1,9,2,4,7,6,1,9,5,8,3,8,3,2,1,9,7,4,6,5,7,5,9,8,6,4,3,2,1,4,1,6,5,3,2,8,9,7,6,2,3,9,8,5,1,7,4,1,8,4,3,7,6,9,5,2,9,7,5,4,2,1,6,3,8}
medpuzzleSOL[162]={6,8,5,2,7,1,4,3,9,7,2,4,3,6,9,5,8,1,3,9,1,5,8,4,6,2,7,1,7,8,9,4,3,2,6,5,9,6,2,1,5,8,3,7,4,5,4,3,6,2,7,1,9,8,8,1,9,4,3,2,7,5,6,4,3,6,7,9,5,8,1,2,2,5,7,8,1,6,9,4,3}
medpuzzleSOL[163]={2,4,7,3,9,1,8,6,5,6,9,8,4,7,5,2,1,3,5,3,1,6,2,8,4,7,9,4,2,9,1,8,3,6,5,7,8,1,6,9,5,7,3,4,2,7,5,3,2,6,4,9,8,1,3,8,2,7,1,6,5,9,4,9,7,5,8,4,2,1,3,6,1,6,4,5,3,9,7,2,8}
medpuzzleSOL[164]={7,9,3,2,6,5,8,4,1,1,5,4,8,9,7,3,2,6,6,8,2,1,3,4,5,9,7,2,4,5,3,8,1,7,6,9,8,3,1,6,7,9,2,5,4,9,6,7,4,5,2,1,8,3,5,1,6,7,4,8,9,3,2,3,2,9,5,1,6,4,7,8,4,7,8,9,2,3,6,1,5}
medpuzzleSOL[165]={6,7,5,4,1,8,9,2,3,3,9,2,6,7,5,8,1,4,4,8,1,2,3,9,7,6,5,2,3,8,1,9,4,6,5,7,1,6,7,5,8,3,2,4,9,9,5,4,7,2,6,3,8,1,7,1,9,8,5,2,4,3,6,8,4,3,9,6,1,5,7,2,5,2,6,3,4,7,1,9,8}
medpuzzleSOL[166]={6,7,3,1,9,8,5,2,4,2,4,1,5,3,7,9,8,6,5,9,8,2,6,4,1,7,3,1,6,7,3,5,2,8,4,9,8,5,4,9,7,1,6,3,2,9,3,2,4,8,6,7,5,1,4,8,5,6,2,9,3,1,7,3,2,9,7,1,5,4,6,8,7,1,6,8,4,3,2,9,5}
medpuzzleSOL[167]={9,2,4,6,7,3,1,5,8,3,8,5,9,4,1,7,2,6,7,1,6,2,8,5,9,4,3,2,3,8,5,6,9,4,1,7,6,5,9,4,1,7,3,8,2,4,7,1,3,2,8,5,6,9,5,6,7,1,3,2,8,9,4,1,4,3,8,9,6,2,7,5,8,9,2,7,5,4,6,3,1}
medpuzzleSOL[168]={4,6,5,7,9,8,2,1,3,1,7,3,2,5,6,8,4,9,8,2,9,1,4,3,6,7,5,7,9,1,4,6,2,5,3,8,2,3,4,5,8,1,9,6,7,5,8,6,9,3,7,4,2,1,3,4,8,6,1,9,7,5,2,6,1,2,8,7,5,3,9,4,9,5,7,3,2,4,1,8,6}
medpuzzleSOL[169]={3,8,6,9,5,1,7,4,2,2,9,7,8,3,4,1,6,5,1,5,4,6,2,7,8,9,3,9,1,5,2,4,8,6,3,7,6,2,3,5,7,9,4,1,8,4,7,8,3,1,6,5,2,9,5,6,9,1,8,2,3,7,4,8,4,2,7,6,3,9,5,1,7,3,1,4,9,5,2,8,6}
medpuzzleSOL[170]={4,6,2,3,1,5,9,8,7,7,3,1,9,8,6,2,4,5,9,8,5,2,7,4,1,6,3,3,2,9,4,5,1,8,7,6,8,4,7,6,3,2,5,1,9,1,5,6,7,9,8,3,2,4,6,1,8,5,4,3,7,9,2,2,9,3,1,6,7,4,5,8,5,7,4,8,2,9,6,3,1}
medpuzzleSOL[171]={1,7,4,9,6,2,5,3,8,8,5,6,3,7,4,9,2,1,9,2,3,1,8,5,7,6,4,3,8,9,2,4,6,1,7,5,6,4,2,7,5,1,8,9,3,5,1,7,8,3,9,6,4,2,7,6,5,4,1,3,2,8,9,2,3,8,5,9,7,4,1,6,4,9,1,6,2,8,3,5,7}
medpuzzleSOL[172]={9,1,7,5,4,2,6,8,3,4,8,5,6,3,9,2,1,7,2,3,6,7,1,8,9,4,5,6,9,8,4,2,7,3,5,1,5,7,4,1,6,3,8,9,2,1,2,3,8,9,5,4,7,6,8,4,1,2,5,6,7,3,9,7,6,9,3,8,1,5,2,4,3,5,2,9,7,4,1,6,8}
medpuzzleSOL[173]={4,6,9,5,7,3,8,1,2,5,3,2,8,6,1,7,9,4,7,8,1,9,2,4,3,6,5,9,5,7,6,8,2,1,4,3,8,1,6,4,3,5,9,2,7,3,2,4,1,9,7,6,5,8,6,9,5,7,4,8,2,3,1,1,7,3,2,5,6,4,8,9,2,4,8,3,1,9,5,7,6}
medpuzzleSOL[174]={2,9,1,4,6,5,3,7,8,7,5,3,9,2,8,4,1,6,6,4,8,1,3,7,9,2,5,5,7,4,6,1,9,2,8,3,1,8,2,5,4,3,6,9,7,9,3,6,7,8,2,1,5,4,3,1,5,2,7,4,8,6,9,8,2,7,3,9,6,5,4,1,4,6,9,8,5,1,7,3,2}
medpuzzleSOL[175]={2,7,1,4,9,8,5,3,6,6,5,3,1,7,2,9,4,8,9,4,8,5,3,6,1,2,7,1,8,9,2,4,5,6,7,3,3,6,7,8,1,9,2,5,4,4,2,5,3,6,7,8,9,1,7,9,2,6,8,3,4,1,5,8,3,4,9,5,1,7,6,2,5,1,6,7,2,4,3,8,9}
medpuzzleSOL[176]={2,8,7,3,5,6,9,4,1,6,9,1,8,4,7,5,3,2,4,3,5,2,1,9,7,8,6,1,6,9,7,8,3,2,5,4,3,7,2,5,6,4,1,9,8,5,4,8,9,2,1,6,7,3,7,5,6,1,3,8,4,2,9,9,1,3,4,7,2,8,6,5,8,2,4,6,9,5,3,1,7}
medpuzzleSOL[177]={7,9,1,6,5,4,3,2,8,8,2,6,3,1,9,5,4,7,5,4,3,8,7,2,6,1,9,4,5,8,1,9,6,7,3,2,2,6,9,5,3,7,1,8,4,1,3,7,2,4,8,9,5,6,6,1,2,9,8,5,4,7,3,3,8,4,7,6,1,2,9,5,9,7,5,4,2,3,8,6,1}
medpuzzleSOL[178]={9,6,4,1,7,5,3,2,8,3,8,5,9,4,2,7,1,6,2,7,1,8,3,6,4,5,9,6,4,8,2,5,7,9,3,1,7,5,9,3,1,8,2,6,4,1,3,2,4,6,9,8,7,5,4,9,3,6,2,1,5,8,7,8,1,7,5,9,3,6,4,2,5,2,6,7,8,4,1,9,3}
medpuzzleSOL[179]={8,1,7,5,6,2,3,4,9,5,9,6,4,3,8,1,7,2,2,3,4,7,9,1,5,6,8,4,5,9,3,2,7,6,8,1,6,8,3,1,4,9,7,2,5,1,7,2,6,8,5,4,9,3,7,2,5,8,1,4,9,3,6,3,4,8,9,5,6,2,1,7,9,6,1,2,7,3,8,5,4}
medpuzzleSOL[180]={6,8,4,1,3,7,5,2,9,5,2,7,9,6,4,1,3,8,9,3,1,8,5,2,4,6,7,1,7,6,4,2,9,3,8,5,8,9,5,3,1,6,7,4,2,3,4,2,7,8,5,9,1,6,7,6,3,5,4,8,2,9,1,4,5,8,2,9,1,6,7,3,2,1,9,6,7,3,8,5,4}
medpuzzleSOL[181]={8,2,5,6,3,7,1,9,4,1,9,4,2,8,5,6,3,7,6,7,3,9,1,4,5,8,2,2,4,6,3,5,9,8,7,1,9,5,7,1,4,8,3,2,6,3,1,8,7,6,2,4,5,9,5,6,9,8,7,1,2,4,3,7,8,1,4,2,3,9,6,5,4,3,2,5,9,6,7,1,8}
medpuzzleSOL[182]={6,2,5,1,7,9,8,3,4,4,8,9,5,3,6,7,1,2,3,1,7,4,8,2,5,9,6,9,6,3,8,2,7,4,5,1,8,7,4,3,1,5,6,2,9,1,5,2,9,6,4,3,8,7,2,4,1,7,5,3,9,6,8,5,9,8,6,4,1,2,7,3,7,3,6,2,9,8,1,4,5}
medpuzzleSOL[183]={8,3,1,7,4,5,6,2,9,7,2,9,3,1,6,8,4,5,5,4,6,8,9,2,7,1,3,6,7,8,9,2,3,4,5,1,3,1,2,4,5,7,9,8,6,9,5,4,6,8,1,2,3,7,4,9,3,5,7,8,1,6,2,1,8,5,2,6,9,3,7,4,2,6,7,1,3,4,5,9,8}
medpuzzleSOL[184]={7,5,1,2,3,6,8,4,9,8,4,2,7,5,9,6,1,3,3,9,6,8,4,1,2,5,7,6,2,8,4,1,7,3,9,5,9,7,5,3,2,8,1,6,4,1,3,4,9,6,5,7,8,2,4,6,7,1,9,2,5,3,8,5,8,3,6,7,4,9,2,1,2,1,9,5,8,3,4,7,6}
medpuzzleSOL[185]={8,4,3,1,6,7,5,2,9,1,5,2,9,3,8,4,7,6,6,9,7,5,2,4,8,1,3,3,8,9,7,1,5,2,6,4,2,1,5,3,4,6,7,9,8,4,7,6,2,8,9,1,3,5,7,3,8,6,5,1,9,4,2,5,2,1,4,9,3,6,8,7,9,6,4,8,7,2,3,5,1}
medpuzzleSOL[186]={4,1,8,5,3,7,2,6,9,2,3,9,6,8,4,7,5,1,5,7,6,2,1,9,3,8,4,8,9,2,3,4,5,1,7,6,6,5,1,7,2,8,9,4,3,3,4,7,9,6,1,5,2,8,9,6,3,4,5,2,8,1,7,1,2,4,8,7,3,6,9,5,7,8,5,1,9,6,4,3,2}
medpuzzleSOL[187]={7,5,2,4,9,3,1,8,6,1,8,9,6,5,2,3,4,7,3,4,6,8,1,7,5,9,2,9,3,7,5,2,8,6,1,4,4,2,1,9,7,6,8,5,3,5,6,8,1,3,4,7,2,9,8,7,3,2,4,5,9,6,1,6,9,4,7,8,1,2,3,5,2,1,5,3,6,9,4,7,8}
medpuzzleSOL[188]={1,8,3,2,5,7,6,9,4,9,5,4,1,3,6,7,2,8,7,2,6,4,9,8,5,1,3,5,9,8,7,4,1,2,3,6,6,3,1,9,8,2,4,5,7,4,7,2,3,6,5,9,8,1,8,1,5,6,2,4,3,7,9,2,4,9,8,7,3,1,6,5,3,6,7,5,1,9,8,4,2}
medpuzzleSOL[189]={4,8,9,7,2,3,1,6,5,5,3,1,6,8,9,7,4,2,7,6,2,4,1,5,8,3,9,3,7,5,9,4,1,6,2,8,8,9,4,5,6,2,3,7,1,1,2,6,3,7,8,9,5,4,6,1,8,2,3,4,5,9,7,2,5,3,1,9,7,4,8,6,9,4,7,8,5,6,2,1,3}
medpuzzleSOL[190]={9,5,7,1,8,4,3,6,2,3,4,6,5,2,7,9,8,1,8,2,1,6,3,9,4,7,5,2,3,4,8,7,5,1,9,6,5,1,8,9,6,2,7,3,4,6,7,9,4,1,3,5,2,8,1,9,2,3,4,8,6,5,7,7,6,5,2,9,1,8,4,3,4,8,3,7,5,6,2,1,9}
medpuzzleSOL[191]={8,6,4,9,5,1,7,3,2,9,2,7,4,3,6,1,8,5,1,3,5,8,7,2,6,4,9,4,9,3,5,6,8,2,7,1,5,7,8,1,2,3,9,6,4,2,1,6,7,4,9,8,5,3,3,5,2,6,1,7,4,9,8,7,8,1,3,9,4,5,2,6,6,4,9,2,8,5,3,1,7}
medpuzzleSOL[192]={4,7,9,3,1,6,5,2,8,5,2,3,8,9,7,6,1,4,6,1,8,2,4,5,7,9,3,2,3,6,9,7,8,4,5,1,7,9,4,5,3,1,8,6,2,1,8,5,6,2,4,3,7,9,3,6,7,1,8,2,9,4,5,8,4,2,7,5,9,1,3,6,9,5,1,4,6,3,2,8,7}
medpuzzlePROB[1]={2,5,1,0,0,7,0,8,3,9,0,0,5,6,0,7,1,0,8,6,0,3,0,0,5,4,9,5,0,4,0,8,3,0,2,7,7,1,0,9,0,0,4,0,6,3,2,6,1,7,0,0,9,0,0,3,0,0,0,1,0,6,8,0,8,0,2,0,0,9,0,4,0,7,0,8,4,0,3,5,1}
medpuzzlePROB[2]={0,0,6,0,2,7,4,1,0,2,5,0,0,0,8,0,6,9,0,4,8,6,0,3,0,5,7,4,2,3,9,1,5,8,0,0,5,8,0,7,3,6,1,0,0,0,0,0,0,8,4,0,9,0,8,1,2,0,7,9,0,4,5,0,0,0,0,5,0,0,3,1,7,3,0,4,6,0,0,8,2}
medpuzzlePROB[3]={8,9,0,0,0,7,5,6,0,0,0,3,5,0,0,7,2,0,7,6,5,0,2,0,1,4,9,0,8,6,3,7,0,0,0,1,1,0,0,9,0,0,2,8,5,0,4,0,1,8,0,0,0,7,6,5,0,0,0,4,0,1,0,3,7,4,0,9,1,8,5,6,0,0,1,6,5,8,3,7,0}
medpuzzlePROB[4]={4,0,8,5,7,0,0,6,9,0,3,0,0,2,0,4,8,7,0,0,0,0,4,0,3,0,0,2,9,0,4,6,5,7,0,8,1,4,5,0,0,8,2,0,6,0,0,0,1,9,2,5,0,0,9,5,7,3,0,4,0,2,0,3,0,4,0,0,6,9,7,5,6,1,2,9,5,7,0,0,0}
medpuzzlePROB[5]={5,6,8,9,0,3,7,0,4,2,9,1,5,4,7,8,0,6,0,3,0,1,8,0,2,0,9,0,0,7,0,0,5,1,6,0,1,0,0,6,0,2,0,9,0,0,0,3,4,0,9,5,7,0,8,7,0,2,0,0,3,4,0,4,0,6,3,5,0,9,0,7,3,5,0,0,9,0,0,0,1}
medpuzzlePROB[6]={5,0,6,7,4,8,1,9,2,1,2,7,0,0,9,8,0,0,0,0,0,6,1,2,5,0,0,4,8,0,1,9,3,0,2,0,0,1,9,0,2,6,0,0,8,0,6,0,0,0,0,9,4,1,8,0,0,9,0,4,2,3,0,2,9,0,5,8,0,0,1,6,6,0,0,2,3,0,7,8,0}
medpuzzlePROB[7]={0,1,0,7,0,0,5,0,6,5,8,0,0,0,3,9,7,2,0,2,0,6,5,8,0,4,0,0,6,2,0,7,9,4,5,1,1,0,0,0,2,0,0,6,9,0,5,8,1,0,4,2,3,7,0,7,1,2,0,6,3,0,5,0,9,0,0,0,1,7,0,8,2,0,0,0,8,7,6,1,0}
medpuzzlePROB[8]={1,8,5,6,0,0,0,0,0,2,0,3,5,8,1,0,7,6,0,7,0,3,2,4,1,8,5,0,9,4,1,6,0,0,2,3,6,0,0,4,0,8,0,0,0,0,3,0,0,5,0,6,1,0,0,2,1,8,4,5,7,0,0,4,0,0,0,0,6,2,0,8,8,6,7,0,9,0,4,5,1}
medpuzzlePROB[9]={0,0,9,0,0,0,0,1,0,0,3,4,5,9,0,8,6,0,8,0,0,0,3,4,5,0,9,6,5,2,7,0,8,9,0,1,7,0,0,3,0,5,0,4,2,3,0,0,2,6,9,7,5,8,9,6,7,4,2,3,0,0,5,0,1,5,0,0,6,2,0,3,0,8,3,9,0,0,0,7,0}
medpuzzlePROB[10]={8,9,0,0,6,1,2,5,4,0,0,0,0,4,0,6,0,3,0,5,0,8,3,0,7,1,0,7,8,0,0,5,0,4,2,1,3,2,5,0,0,7,9,0,8,0,6,4,2,8,9,3,0,0,0,4,1,5,2,0,0,9,0,0,0,0,1,7,0,0,0,6,5,7,8,6,9,4,0,0,2}
medpuzzlePROB[11]={6,2,5,8,0,0,0,0,0,8,0,0,4,6,0,7,9,0,4,9,0,0,5,0,2,8,6,0,8,6,0,2,3,5,4,0,1,7,2,0,4,5,9,0,0,0,0,3,0,9,8,1,0,2,3,1,4,5,0,0,0,0,0,2,0,0,9,1,6,3,0,4,7,0,9,2,3,0,8,5,0}
medpuzzlePROB[12]={0,3,2,0,1,6,8,0,7,0,4,0,7,5,9,6,0,2,6,9,7,8,0,2,1,0,0,0,1,9,3,6,0,7,0,5,0,0,0,0,4,1,0,8,0,4,8,6,2,0,0,9,1,0,1,0,0,5,0,0,3,2,8,0,2,0,6,0,0,4,0,0,3,7,8,1,2,4,0,0,9}
medpuzzlePROB[13]={7,0,0,0,0,8,4,5,0,3,0,6,0,0,0,0,0,2,5,0,8,3,7,4,0,6,0,6,3,1,5,4,0,0,0,7,9,5,2,7,8,3,0,0,0,8,0,0,0,2,6,5,3,0,2,8,0,6,9,5,3,1,0,4,9,0,8,1,7,0,2,0,0,6,0,0,3,0,7,9,8}
medpuzzlePROB[14]={0,8,0,1,0,5,0,0,7,3,9,1,7,4,0,2,8,0,7,0,5,0,9,8,0,0,3,6,2,9,5,0,0,0,0,1,0,0,8,3,1,0,0,6,2,0,3,7,0,6,2,4,5,0,0,0,0,6,7,1,0,0,4,2,1,4,8,5,0,0,3,6,0,7,0,0,2,3,5,0,9}
medpuzzlePROB[15]={0,2,7,1,6,0,9,0,3,0,8,3,7,4,0,6,0,0,0,1,0,0,8,9,7,2,4,1,0,0,4,9,0,3,6,0,6,0,9,2,3,0,8,0,5,0,7,0,0,0,8,4,1,0,8,3,4,5,2,6,0,9,7,0,9,0,8,7,3,0,0,6,0,0,5,0,0,4,2,0,0}
medpuzzlePROB[16]={0,6,8,0,0,4,0,3,0,2,1,3,0,5,6,9,0,7,9,7,0,1,0,0,5,0,0,0,5,0,4,8,3,1,0,0,0,4,1,0,2,9,8,0,5,0,2,7,0,0,0,3,9,4,1,8,5,0,0,7,6,2,9,7,0,0,6,0,5,0,1,8,4,9,6,0,1,8,0,0,0}
medpuzzlePROB[17]={7,6,2,0,1,0,3,0,8,4,0,9,0,0,0,2,6,7,8,0,3,6,7,2,0,9,0,5,0,4,0,9,6,0,2,3,6,9,1,2,0,0,4,0,0,3,0,7,5,0,8,0,1,9,0,3,0,0,0,9,8,4,0,2,7,0,4,6,5,0,0,0,0,0,6,3,8,1,0,0,2}
medpuzzlePROB[18]={5,7,0,4,1,2,0,0,9,3,0,2,0,9,8,5,0,4,9,8,4,3,5,7,1,0,0,2,6,1,0,4,5,9,3,0,7,4,9,0,3,0,0,0,0,0,0,0,1,7,9,0,6,2,0,9,0,7,0,0,6,0,0,6,3,0,9,0,0,0,1,0,4,0,8,5,6,0,7,0,3}
medpuzzlePROB[19]={0,4,9,0,0,5,0,6,2,0,0,0,7,0,3,0,0,4,3,5,0,0,0,2,1,0,7,9,2,4,0,5,0,8,0,3,6,7,5,0,8,4,2,0,0,1,0,0,0,2,7,6,4,5,0,1,0,0,4,9,7,5,0,4,6,2,5,0,0,9,3,8,5,0,7,0,3,0,0,2,1}
medpuzzlePROB[20]={0,0,9,3,4,0,6,0,0,7,8,6,5,0,0,0,3,0,0,2,3,6,9,8,1,7,0,0,0,2,8,0,1,7,0,6,8,0,4,2,7,9,0,0,0,5,1,0,4,0,0,0,9,2,3,0,0,0,2,6,4,0,7,2,7,0,0,8,4,5,6,3,0,0,0,7,3,5,0,1,9}
medpuzzlePROB[21]={3,7,1,6,0,2,0,0,8,5,0,2,4,8,0,1,3,6,4,0,0,0,0,1,7,9,2,8,4,7,0,0,9,2,1,0,0,3,0,0,7,8,0,4,0,9,0,0,0,0,3,8,7,5,0,0,0,0,2,4,9,0,1,0,0,4,9,0,0,3,0,7,1,8,0,7,3,6,5,2,0}
medpuzzlePROB[22]={0,5,9,3,6,0,7,4,0,6,2,0,7,5,0,0,0,8,0,1,4,2,0,9,5,0,3,1,3,5,8,4,6,0,0,0,4,0,2,0,0,0,1,0,6,0,6,7,0,3,2,0,5,0,0,7,0,4,1,0,0,0,9,2,0,0,6,9,7,0,8,5,3,9,6,0,0,8,4,0,1}
medpuzzlePROB[23]={0,0,0,9,0,7,4,0,0,4,0,1,2,0,3,0,8,9,9,5,7,0,0,0,3,6,2,2,4,9,0,1,5,0,3,0,6,1,8,0,0,9,2,5,7,0,3,0,6,8,2,0,0,4,0,9,0,5,0,0,0,0,1,0,7,2,3,0,8,5,4,6,5,8,0,0,0,6,9,7,0}
medpuzzlePROB[24]={0,2,9,3,0,0,5,0,6,8,0,0,2,0,0,0,0,7,7,6,3,0,9,0,0,4,0,0,8,4,1,0,7,0,0,9,6,9,1,8,0,4,3,0,5,0,3,7,6,0,0,0,8,1,1,0,2,0,8,0,7,6,0,3,5,8,7,6,0,0,9,4,9,0,6,4,1,0,8,0,2}
medpuzzlePROB[25]={0,3,6,0,5,9,0,0,7,0,0,1,0,4,0,2,0,9,9,0,5,0,0,0,4,6,0,8,0,2,6,3,5,9,4,1,5,0,0,8,9,0,0,7,2,6,9,4,1,0,7,8,3,0,3,0,0,0,6,1,0,0,8,1,0,8,5,7,2,0,9,0,0,0,7,9,0,3,5,0,6}
medpuzzlePROB[26]={9,0,4,0,0,2,3,5,6,6,2,5,4,3,0,1,7,8,0,7,3,5,6,1,0,0,0,3,0,8,0,0,0,0,0,2,2,0,0,8,9,3,5,4,0,5,0,0,6,0,7,0,8,3,0,0,0,2,7,0,0,1,5,7,0,6,9,1,8,0,3,4,0,8,2,0,0,4,0,9,0}
medpuzzlePROB[27]={5,4,3,0,0,1,9,6,2,0,6,0,2,5,3,0,8,0,8,7,2,9,0,0,1,3,0,0,3,9,0,2,5,0,1,0,0,0,0,0,7,4,0,0,0,0,2,8,0,0,9,5,4,3,2,1,4,6,9,0,0,0,8,6,9,0,0,3,8,2,7,0,0,0,0,5,1,0,4,9,6}
medpuzzlePROB[28]={0,2,3,6,0,9,0,0,1,0,0,0,1,0,3,4,0,0,1,0,7,0,0,5,0,8,0,5,0,0,4,9,2,6,7,3,2,0,9,8,3,0,5,1,4,3,0,6,7,5,1,0,9,0,9,6,0,3,0,8,0,4,0,7,3,0,9,0,4,0,6,5,0,0,0,5,0,7,9,3,2}
medpuzzlePROB[29]={0,3,9,8,1,6,2,0,5,0,0,5,7,9,2,0,3,4,7,0,0,5,0,0,6,9,0,5,2,6,3,7,9,1,4,0,9,0,0,2,8,1,0,6,3,3,1,0,0,0,5,7,0,0,6,7,0,0,0,0,0,0,2,0,5,4,0,6,0,9,8,7,0,9,1,4,2,0,0,0,0}
medpuzzlePROB[30]={7,4,9,2,0,1,0,3,5,8,0,6,3,5,7,0,0,4,1,3,0,9,0,6,7,2,0,9,6,0,0,7,0,0,8,0,2,0,0,1,3,9,4,0,6,0,0,0,0,6,2,3,0,9,3,8,0,0,1,4,5,9,0,6,7,1,0,9,0,0,0,0,5,0,4,7,0,0,0,6,1}
medpuzzlePROB[31]={7,8,0,0,4,3,0,5,2,4,5,3,1,2,8,0,6,9,6,1,0,7,5,9,4,8,0,5,0,0,0,7,0,3,0,8,0,9,4,0,0,0,2,0,6,0,0,0,3,6,4,9,1,5,0,0,0,0,9,6,8,3,7,0,0,7,2,0,5,0,0,0,9,4,6,8,0,0,0,0,1}
medpuzzlePROB[32]={0,0,0,0,0,8,0,3,7,3,0,2,1,0,4,0,6,0,0,7,0,0,5,0,1,2,4,1,0,3,6,2,9,0,4,5,5,6,0,7,0,0,2,0,9,0,0,7,0,4,5,0,1,0,0,1,8,4,0,2,6,5,3,6,0,5,3,1,7,8,9,0,0,3,9,0,8,0,4,7,0}
medpuzzlePROB[33]={8,9,2,0,1,0,0,5,0,0,0,0,4,8,3,0,9,2,4,3,0,9,5,0,0,8,6,1,0,3,5,2,4,0,0,8,6,0,0,3,7,0,0,4,5,2,4,0,8,0,0,0,7,1,0,1,0,2,6,8,5,3,0,7,5,6,1,3,9,0,0,0,0,0,8,7,0,5,6,0,0}
medpuzzlePROB[34]={5,0,0,4,7,9,0,2,1,0,3,0,0,0,0,9,0,0,9,2,0,8,0,0,0,7,0,0,0,0,0,5,0,1,0,3,8,6,3,2,0,1,0,5,9,0,1,0,0,9,8,2,4,0,6,9,8,1,2,0,5,3,7,0,0,2,9,0,5,6,1,4,1,5,4,7,6,3,8,0,0}
medpuzzlePROB[35]={7,0,0,0,8,9,0,0,6,5,0,1,6,0,4,3,0,2,2,0,8,3,5,1,0,9,0,0,1,0,0,2,0,6,3,8,0,4,3,1,0,5,0,7,0,0,7,0,9,3,8,0,0,0,3,8,9,7,0,2,5,6,1,0,2,6,0,0,0,0,4,7,4,5,0,8,1,6,9,0,0}
medpuzzlePROB[36]={0,0,1,5,0,2,4,7,3,0,0,7,3,9,1,0,0,0,6,0,0,8,4,0,9,1,0,5,1,8,0,0,3,7,0,6,3,0,0,9,0,6,0,0,2,0,0,6,0,0,5,0,0,4,1,4,9,2,5,0,0,6,0,7,8,5,6,3,0,0,0,1,0,6,3,1,7,4,8,5,9}
medpuzzlePROB[37]={2,0,3,4,0,0,0,0,5,9,4,1,0,0,5,3,0,0,0,5,0,0,2,9,0,7,1,0,0,6,9,5,1,2,3,7,7,0,0,0,3,4,6,0,0,5,3,2,0,8,0,1,9,0,1,6,7,0,0,0,8,4,0,0,9,5,1,4,8,0,2,0,8,2,0,0,0,3,5,1,9}
medpuzzlePROB[38]={0,1,0,0,4,2,7,6,9,8,0,2,7,9,6,3,5,0,0,0,9,5,0,3,0,4,0,6,3,1,0,2,0,9,0,0,4,9,7,0,5,0,1,0,3,0,5,0,0,0,9,0,7,0,0,0,6,2,7,1,5,0,4,3,2,5,0,6,4,0,1,7,0,0,4,3,0,0,6,9,0}
medpuzzlePROB[39]={0,1,9,0,8,0,5,4,0,3,7,0,4,5,2,0,0,0,0,0,0,0,0,6,3,7,8,8,0,2,5,0,1,4,9,7,9,0,5,3,7,0,2,1,0,0,6,0,9,2,0,8,3,0,0,5,0,0,0,7,0,2,0,2,8,3,6,4,9,0,5,1,1,0,7,0,3,5,0,8,0}
medpuzzlePROB[40]={0,0,6,0,1,5,0,4,3,0,4,7,6,0,3,1,0,0,9,0,3,4,7,2,5,0,0,6,2,4,1,5,7,0,3,0,0,0,8,0,9,0,0,1,4,3,0,1,2,0,8,6,5,7,0,0,0,5,6,4,0,0,1,4,3,0,0,2,0,9,0,6,0,6,0,7,0,9,4,8,0}
medpuzzlePROB[41]={3,0,5,6,7,9,0,1,8,7,2,9,1,5,0,0,0,6,0,0,6,2,3,4,5,9,7,0,0,0,5,8,2,0,0,0,0,1,0,0,0,6,0,8,2,0,0,2,3,0,0,9,4,5,6,5,0,7,4,0,1,2,0,0,7,4,0,2,1,6,5,3,0,0,0,9,6,0,0,7,0}
medpuzzlePROB[42]={2,0,0,3,9,0,0,1,0,7,3,9,0,5,4,8,0,0,5,1,0,0,0,6,0,0,0,4,7,3,0,0,5,9,8,1,0,2,0,9,0,3,0,0,6,0,0,6,7,1,8,4,2,0,6,0,5,4,3,2,1,0,0,0,4,7,6,8,0,2,3,5,3,9,0,5,7,1,0,0,0}
medpuzzlePROB[43]={4,9,0,0,0,0,0,0,8,2,3,1,0,9,5,4,0,7,0,8,7,0,1,4,2,5,0,0,5,0,2,3,0,8,7,0,8,0,0,0,5,7,3,9,4,0,0,6,9,0,8,5,0,0,0,2,3,4,7,0,6,8,1,1,0,0,5,8,2,0,0,3,7,4,8,1,0,0,0,0,5}
medpuzzlePROB[44]={4,1,0,7,2,5,3,0,0,5,2,3,6,0,0,7,1,8,0,0,0,0,0,0,0,2,4,1,0,0,0,4,2,8,6,9,9,8,4,3,7,0,0,0,2,0,5,6,0,1,8,0,7,0,0,6,2,0,5,3,9,4,0,0,9,1,4,6,0,0,0,0,7,0,0,2,8,9,6,0,1}
medpuzzlePROB[45]={0,0,3,0,0,1,0,9,0,1,2,7,9,5,6,0,8,3,0,6,9,0,0,0,2,1,7,7,8,6,4,0,9,5,0,0,4,0,0,0,2,3,0,7,0,3,5,0,6,8,7,0,0,1,0,1,0,3,0,8,0,2,4,6,0,4,0,0,0,1,5,8,2,7,0,1,0,5,3,6,0}
medpuzzlePROB[46]={0,0,0,0,1,7,5,3,8,3,1,5,0,4,0,9,7,6,9,0,0,0,5,6,4,2,1,0,5,6,0,0,0,3,1,0,7,4,0,0,0,1,0,5,9,0,9,8,7,3,0,0,4,2,0,2,9,8,0,0,0,6,0,8,7,0,5,0,4,0,9,3,6,0,0,1,9,2,0,8,0}
medpuzzlePROB[47]={0,9,2,5,0,0,4,0,6,0,4,0,9,6,0,2,1,0,3,0,6,1,0,0,0,0,8,0,0,5,4,9,7,0,8,2,0,7,0,6,0,0,0,5,0,2,1,4,0,3,5,0,6,0,9,8,1,0,4,0,5,2,3,5,0,7,3,0,0,6,0,1,0,6,3,2,5,1,8,0,9}
medpuzzlePROB[48]={3,0,8,1,2,4,7,5,0,5,6,0,0,7,0,1,0,0,0,0,7,8,6,5,9,3,0,8,0,4,0,9,0,0,7,5,0,7,1,5,0,2,8,0,0,2,0,0,0,0,0,0,1,3,0,1,3,0,0,8,5,6,9,9,8,0,3,0,0,4,2,7,4,2,0,7,5,9,0,0,1}
medpuzzlePROB[49]={0,4,0,9,7,6,3,0,0,2,6,0,1,0,5,0,9,7,0,9,1,0,2,8,6,0,4,4,0,7,6,3,0,1,8,9,6,8,0,7,5,0,0,0,0,0,0,0,0,9,4,0,0,5,9,0,6,5,8,7,0,4,3,5,7,4,0,0,0,0,1,0,3,0,8,0,1,0,5,7,6}
medpuzzlePROB[50]={0,0,2,1,5,8,0,4,7,4,1,7,9,6,0,0,0,0,0,3,5,4,7,0,0,9,1,9,5,0,8,1,0,4,6,2,0,0,6,0,4,9,5,8,3,2,0,8,0,3,6,7,0,0,0,8,0,7,0,4,0,0,0,0,0,4,0,0,1,8,0,5,7,6,9,3,0,0,0,2,4}
medpuzzlePROB[51]={0,4,0,7,8,0,1,0,0,6,5,1,0,2,9,0,7,4,0,2,0,4,0,1,9,5,3,0,3,4,0,0,8,6,0,0,7,0,2,6,5,3,4,8,0,9,0,6,0,0,0,0,3,1,4,0,8,0,0,0,0,1,6,2,0,0,1,3,6,7,4,0,1,0,0,8,4,7,0,9,5}
medpuzzlePROB[52]={2,0,0,0,0,8,0,5,4,3,1,0,2,5,0,6,9,7,6,4,5,0,0,0,0,3,8,8,0,4,0,0,3,5,0,1,5,2,0,7,0,1,0,0,0,0,0,0,8,0,5,4,2,0,0,8,0,4,0,7,0,6,5,4,3,0,5,0,2,7,1,9,7,0,1,9,3,6,8,0,2}
medpuzzlePROB[53]={0,0,0,7,0,3,0,0,4,2,0,0,0,5,6,0,9,0,1,7,0,9,2,4,0,8,0,0,0,6,2,7,0,4,5,9,9,5,8,3,0,1,0,0,0,0,2,0,6,9,0,1,3,0,7,0,1,5,3,9,0,2,6,0,0,0,4,1,2,5,7,3,5,3,2,8,6,0,0,4,0}
medpuzzlePROB[54]={3,0,1,4,6,5,0,7,0,5,7,0,1,9,0,0,8,3,9,2,4,7,3,8,0,5,0,0,4,5,9,2,3,7,0,1,2,0,3,6,0,0,8,9,0,0,6,9,0,4,1,3,0,0,0,0,0,0,0,6,2,1,9,0,9,0,0,0,4,5,0,0,1,0,0,5,7,9,0,0,8}
medpuzzlePROB[55]={4,0,5,1,7,2,0,0,0,7,0,2,0,9,0,5,8,1,9,1,6,0,0,8,2,4,7,0,0,0,5,0,0,8,3,6,2,5,0,0,6,7,9,0,0,8,0,4,0,1,3,7,0,0,0,7,1,2,8,5,4,6,9,0,0,9,6,4,1,3,0,8,0,0,0,0,3,0,0,5,0}
medpuzzlePROB[56]={0,0,5,4,0,0,9,1,0,0,2,8,0,1,0,7,0,6,4,9,1,0,3,7,2,0,8,0,7,3,0,6,1,4,8,9,6,0,0,0,0,9,0,0,0,1,5,9,8,4,0,0,3,0,8,1,2,7,5,0,0,9,4,0,0,6,1,8,3,5,7,0,0,0,0,2,9,0,8,6,0}
medpuzzlePROB[57]={0,7,8,0,0,0,9,3,5,2,0,0,7,0,5,8,4,6,6,0,0,8,3,0,2,1,0,5,0,6,9,0,0,0,2,3,7,2,3,0,5,0,0,9,8,8,4,0,6,2,0,0,7,1,3,8,0,2,1,6,7,0,9,0,5,7,3,0,0,1,0,0,0,0,0,0,7,0,3,8,4}
medpuzzlePROB[58]={0,8,0,3,9,0,0,1,6,0,7,6,1,0,0,9,0,8,9,1,2,5,0,0,4,0,0,0,9,1,6,8,0,7,3,2,7,2,8,0,0,1,5,0,4,6,0,0,7,4,0,0,0,9,2,3,7,4,0,0,8,0,0,0,4,0,8,7,0,6,2,0,8,0,5,2,0,9,3,0,7}
medpuzzlePROB[59]={0,9,0,0,8,3,7,0,4,0,5,7,0,1,0,3,8,2,0,8,0,5,0,7,9,6,0,4,6,0,0,5,1,8,0,0,0,2,0,0,4,6,0,3,9,7,0,0,2,0,8,0,0,5,2,7,3,0,6,5,4,9,0,0,1,8,4,3,0,2,7,0,9,0,0,0,7,0,5,1,3}
medpuzzlePROB[60]={4,8,7,3,0,1,6,0,0,5,0,3,2,0,0,4,0,7,0,6,2,4,0,9,5,8,3,0,3,1,5,0,0,0,2,6,6,4,0,0,0,3,8,7,5,2,7,0,9,8,0,1,0,0,7,1,0,0,0,0,0,0,9,3,5,8,6,0,0,0,4,0,0,2,4,7,0,5,3,6,0}
medpuzzlePROB[61]={6,3,5,2,0,9,1,0,0,9,8,0,4,1,0,5,0,6,4,0,0,6,8,0,3,0,7,5,7,0,0,0,8,0,4,3,3,0,9,7,0,4,8,0,0,0,0,0,3,0,2,0,0,5,2,5,6,9,3,0,0,7,8,1,0,8,5,2,0,0,3,9,7,0,3,8,4,0,2,0,0}
medpuzzlePROB[62]={0,0,0,8,0,1,0,6,0,1,0,0,5,3,4,0,9,7,2,4,5,7,0,0,1,8,3,3,5,1,0,0,2,0,7,0,4,9,0,0,5,3,0,2,0,0,6,0,0,7,9,3,0,5,0,3,8,2,4,7,9,5,1,7,2,4,9,0,0,0,3,0,5,0,9,0,0,8,0,4,0}
medpuzzlePROB[63]={6,3,7,0,4,9,0,8,2,9,1,5,0,8,2,0,3,4,0,0,8,6,0,0,9,0,0,0,8,0,2,7,4,0,6,1,2,5,0,0,9,0,0,7,3,7,0,4,3,0,5,8,0,0,8,0,0,9,6,0,3,1,5,5,0,0,1,0,8,7,0,0,1,0,0,0,5,3,2,0,8}
medpuzzlePROB[64]={0,0,0,2,0,5,4,0,1,2,0,1,0,8,0,0,6,0,8,9,4,6,7,0,0,0,3,0,7,8,3,0,0,0,9,2,0,4,2,1,5,7,8,3,6,3,0,0,0,0,0,5,0,4,4,2,0,0,3,9,0,0,8,7,6,0,0,0,2,9,4,5,0,8,9,5,4,6,0,2,7}
medpuzzlePROB[65]={4,1,0,0,7,0,0,6,0,5,3,0,4,0,1,7,8,2,2,8,0,5,6,0,0,4,0,6,9,2,0,0,5,0,1,8,8,7,0,0,2,4,0,9,5,0,0,5,0,1,8,0,0,6,0,0,8,0,5,0,6,3,4,0,6,0,2,4,9,8,0,0,7,0,4,0,8,6,1,2,0}
medpuzzlePROB[66]={2,8,0,0,4,7,0,0,9,0,0,4,5,0,8,0,0,6,0,6,9,1,3,2,4,5,8,0,1,0,7,8,5,2,0,0,9,0,0,4,6,0,8,0,5,8,0,3,2,0,9,6,0,0,0,9,1,0,2,6,3,4,0,0,4,0,0,0,0,5,6,2,6,2,7,3,5,0,0,8,0}
medpuzzlePROB[67]={2,9,1,0,4,0,5,8,7,5,0,4,0,7,0,0,3,6,6,7,0,8,5,0,1,0,0,7,0,8,9,0,6,2,4,1,4,0,6,5,0,0,0,0,9,0,0,0,7,1,0,0,0,5,0,4,2,1,0,7,6,5,0,9,3,5,4,6,8,7,0,2,0,0,0,0,2,5,0,9,0}
medpuzzlePROB[68]={1,9,4,5,7,0,6,8,0,0,6,2,1,0,0,3,5,4,0,0,0,4,2,6,0,1,7,9,0,8,2,0,1,0,0,0,2,3,0,0,6,0,8,0,9,5,7,0,0,0,0,2,0,1,3,0,9,8,0,7,1,6,5,0,8,0,6,1,9,0,2,3,6,0,0,0,5,0,4,9,0}
medpuzzlePROB[69]={6,0,5,4,0,0,3,9,0,0,8,0,2,0,0,7,5,6,3,7,0,8,5,6,0,0,2,0,9,8,0,6,4,5,1,0,1,4,0,0,7,5,0,2,3,0,3,7,0,8,0,4,6,9,0,0,0,5,2,1,0,0,4,9,1,2,7,4,3,0,0,5,0,0,0,6,9,0,2,0,0}
medpuzzlePROB[70]={6,0,0,8,0,0,3,4,0,9,1,0,0,0,2,6,7,5,4,5,3,0,9,0,0,8,0,0,8,0,7,6,3,0,2,4,0,4,0,9,5,0,0,0,7,7,0,5,0,4,8,9,6,1,0,7,1,3,0,0,2,0,6,8,0,4,1,2,9,7,0,0,3,9,2,5,0,0,0,0,8}
medpuzzlePROB[71]={0,2,4,0,9,1,7,0,3,0,1,3,0,0,5,0,9,0,0,0,8,6,3,4,2,1,5,2,0,5,0,8,0,0,4,1,1,8,7,9,4,2,0,5,6,0,3,9,0,5,6,8,0,0,9,5,6,3,2,0,1,0,0,0,7,1,0,0,0,0,8,0,0,4,0,5,1,0,6,0,0}
medpuzzlePROB[72]={0,3,0,2,7,1,0,8,5,8,5,6,9,0,4,0,2,0,0,0,2,0,6,5,3,4,9,4,6,0,0,9,2,7,0,0,3,7,9,6,4,0,0,0,0,0,8,1,0,0,0,9,0,4,0,0,0,7,8,0,0,9,1,0,2,7,4,1,0,8,5,3,1,9,0,5,0,3,0,0,6}
medpuzzlePROB[73]={5,0,6,4,0,0,8,9,3,3,1,0,0,8,5,0,6,0,0,9,8,0,3,6,0,2,1,2,5,3,8,1,4,9,0,6,6,4,7,0,0,9,3,0,0,1,8,0,0,0,3,0,0,4,0,2,0,0,0,0,1,8,5,8,6,1,5,4,0,7,0,0,7,0,0,1,9,0,0,4,0}
medpuzzlePROB[74]={0,5,0,0,9,0,0,0,6,2,3,1,5,6,7,0,8,4,0,6,0,0,0,0,2,5,1,8,0,9,7,4,0,5,3,0,0,4,0,8,0,0,6,0,0,5,0,0,3,0,9,4,1,0,7,0,5,6,3,8,0,4,9,6,8,3,0,0,4,7,2,0,1,9,4,2,0,0,0,6,3}
medpuzzlePROB[75]={0,2,7,6,0,0,8,1,0,0,0,0,4,0,2,7,0,3,3,9,5,1,0,0,4,2,0,2,0,0,0,1,6,0,0,4,7,0,1,3,0,8,0,6,9,8,6,0,0,2,0,3,7,0,6,0,8,9,0,5,1,0,2,9,1,2,0,0,4,6,5,0,0,7,3,0,0,1,9,4,8}
medpuzzlePROB[76]={0,1,5,0,0,6,2,0,8,7,3,0,1,8,9,0,4,6,0,8,9,5,0,2,7,1,0,8,0,6,2,5,0,4,0,9,0,2,3,0,0,4,0,7,5,9,0,0,8,3,0,0,0,0,2,0,1,4,0,0,3,0,0,5,6,0,9,0,3,1,8,0,3,4,0,0,1,0,9,6,2}
medpuzzlePROB[77]={4,3,0,5,0,6,8,9,2,9,0,0,8,4,0,7,3,5,2,5,8,9,0,0,4,6,0,6,0,1,0,0,4,5,2,0,8,2,0,0,0,5,1,4,6,7,4,0,0,0,0,0,8,9,1,0,0,0,2,7,0,0,3,0,0,0,6,5,0,9,1,0,0,6,0,1,3,9,0,7,8}
medpuzzlePROB[78]={4,0,7,0,0,0,0,0,2,0,5,2,9,3,0,4,1,8,9,3,8,2,4,1,7,0,6,0,0,5,0,2,4,8,6,3,3,6,1,7,0,0,2,0,0,0,8,4,0,0,3,1,0,0,0,0,0,0,0,0,6,2,0,1,2,0,3,7,6,5,8,4,5,4,6,8,0,0,0,9,0}
medpuzzlePROB[79]={8,1,9,6,3,0,0,5,0,0,0,0,0,0,2,8,0,0,2,6,5,0,0,7,3,4,0,4,3,1,2,7,9,6,0,0,7,0,0,5,6,3,1,2,0,0,5,0,4,0,0,9,0,3,0,4,0,9,2,8,7,1,6,0,2,6,7,1,5,0,0,0,0,8,0,0,4,0,5,9,2}
medpuzzlePROB[80]={1,5,8,0,0,4,3,7,2,7,9,0,0,8,0,0,0,4,0,0,6,7,1,3,0,0,5,3,2,0,1,4,9,5,0,0,9,0,5,0,3,0,0,4,1,0,6,1,8,0,0,0,0,0,0,7,2,5,9,0,0,0,3,0,0,4,0,7,6,9,2,8,8,3,0,4,2,1,6,5,0}
medpuzzlePROB[81]={2,0,7,0,0,8,9,5,0,8,5,0,0,0,4,1,6,0,4,0,0,7,9,0,3,8,2,0,0,2,6,0,3,4,9,1,1,6,0,9,4,7,0,0,3,3,9,4,2,0,0,0,7,8,0,8,1,5,0,2,7,4,0,0,0,0,0,1,9,0,3,6,0,2,0,0,0,6,8,0,5}
medpuzzlePROB[82]={6,8,7,2,3,9,0,1,4,3,9,2,0,0,5,6,7,8,0,0,5,0,7,6,9,0,0,0,4,3,5,9,0,0,0,1,5,0,0,0,8,4,0,9,2,8,0,0,0,6,0,3,0,5,0,0,0,1,5,0,4,8,0,1,3,0,9,4,0,2,0,6,9,5,4,0,0,8,0,0,7}
medpuzzlePROB[83]={6,0,8,4,0,0,0,0,1,5,0,0,3,0,2,0,4,7,2,7,0,6,1,0,3,8,5,0,1,6,2,0,8,0,0,9,8,5,3,0,6,0,0,1,0,9,4,0,0,0,3,7,6,0,0,0,7,5,0,1,8,9,4,1,8,9,0,0,4,2,0,6,0,2,5,0,9,6,0,0,3}
medpuzzlePROB[84]={2,4,8,9,0,6,0,0,5,5,0,7,0,1,3,0,0,4,0,3,9,2,0,0,7,8,0,0,2,5,0,8,7,4,0,9,0,0,3,5,9,4,0,0,0,9,1,0,6,0,0,8,5,7,3,5,0,0,2,9,1,0,0,8,0,0,4,6,1,0,7,0,0,7,0,3,5,8,0,6,2}
medpuzzlePROB[85]={3,5,2,4,0,8,6,9,0,7,0,9,6,0,5,1,8,0,0,8,0,3,9,7,2,0,0,0,9,3,0,0,0,7,0,1,5,0,7,8,6,0,0,2,4,0,0,4,0,3,1,8,0,9,0,3,0,0,7,0,4,1,8,9,7,1,0,8,4,5,0,6,0,6,8,0,0,0,0,7,0}
medpuzzlePROB[86]={0,5,0,2,3,0,4,7,1,0,1,0,7,5,0,9,3,0,3,0,2,0,9,1,0,0,0,0,0,0,9,0,7,3,0,6,0,9,4,3,0,2,7,0,8,1,3,7,8,0,0,2,0,4,2,4,0,0,8,9,5,0,7,9,0,0,0,0,4,0,2,3,7,8,5,6,0,3,1,0,9}
medpuzzlePROB[87]={5,4,0,2,8,1,0,6,0,1,7,9,5,0,0,8,2,0,8,0,2,7,0,0,3,5,1,3,1,5,9,2,6,0,7,0,0,0,0,0,7,8,0,3,0,6,0,0,0,5,4,2,1,0,0,3,8,0,0,5,7,0,6,0,0,1,6,3,7,0,0,2,0,5,6,0,0,2,1,4,0}
medpuzzlePROB[88]={0,5,6,0,7,0,0,0,3,7,4,0,6,9,0,2,0,5,3,0,0,8,5,0,4,0,6,4,0,0,2,1,0,9,5,8,5,0,0,4,8,9,6,3,7,6,8,9,0,3,7,1,0,0,0,7,5,0,0,1,0,0,0,0,0,3,0,0,8,5,4,1,1,2,4,3,6,5,0,0,0}
medpuzzlePROB[89]={0,0,5,0,6,8,1,9,7,8,1,4,5,0,0,0,2,0,9,0,0,1,0,0,8,0,4,0,0,8,9,5,3,0,7,0,0,5,9,7,2,4,0,3,0,7,3,2,8,0,0,0,4,5,4,0,3,6,7,1,5,0,0,2,8,0,3,4,0,7,0,0,5,0,1,0,8,0,0,6,3}
medpuzzlePROB[90]={0,2,0,4,8,0,6,0,3,0,7,3,0,0,1,4,0,8,0,0,0,0,5,0,0,1,2,9,8,7,0,6,3,2,0,0,0,0,2,0,4,9,5,7,6,4,0,5,1,7,0,8,3,9,0,1,0,9,2,4,0,6,0,3,5,0,6,0,8,0,2,0,2,0,6,7,3,0,1,8,0}
medpuzzlePROB[91]={1,2,5,0,3,9,0,8,0,4,6,3,0,0,7,0,1,0,0,0,7,0,1,0,3,4,0,0,7,0,9,5,1,0,3,6,6,3,9,8,2,4,0,5,1,0,0,4,0,6,0,9,2,0,0,9,0,0,7,5,1,6,0,3,0,0,0,9,0,2,7,5,7,5,1,0,4,0,8,0,0}
medpuzzlePROB[92]={3,2,0,9,1,5,0,8,4,4,5,0,6,0,3,0,0,0,8,6,0,0,7,2,0,0,3,0,0,0,3,5,0,9,6,1,5,0,8,0,6,0,2,0,7,1,3,0,2,9,7,4,5,8,0,0,3,8,4,0,1,2,0,0,0,5,0,0,0,8,0,6,6,0,4,5,0,1,3,7,0}
medpuzzlePROB[93]={3,0,5,0,9,0,7,0,0,0,0,6,0,0,0,5,8,1,0,0,1,2,6,0,9,0,0,4,6,2,5,1,9,8,0,0,0,5,8,3,0,6,0,1,9,0,3,9,4,8,7,6,5,2,5,1,0,9,7,2,0,6,8,6,9,0,0,3,0,0,4,0,2,0,0,0,5,0,0,9,7}
medpuzzlePROB[94]={0,4,8,0,0,0,7,1,0,0,3,2,0,0,9,6,4,8,0,0,0,4,8,5,9,3,0,3,9,4,0,5,0,0,7,6,8,1,0,2,6,0,0,9,0,7,2,6,9,0,3,8,5,1,2,5,0,0,3,0,0,0,7,4,0,1,5,7,0,0,0,9,0,7,0,1,0,0,5,2,4}
medpuzzlePROB[95]={0,6,0,0,8,1,2,3,4,4,3,0,0,6,9,5,0,0,0,5,8,3,0,4,0,0,9,0,7,4,0,1,5,0,8,0,3,0,9,6,0,7,1,5,2,5,2,1,8,0,0,0,0,7,0,1,0,9,0,2,0,7,0,7,9,0,4,0,0,8,2,1,0,4,6,0,7,0,3,0,5}
medpuzzlePROB[96]={0,6,4,0,9,2,1,3,0,9,2,0,8,1,0,0,0,0,1,7,5,0,0,3,8,0,9,4,0,7,0,6,0,0,9,2,0,3,1,2,8,9,7,0,5,0,5,0,3,7,4,0,0,8,0,0,6,0,0,0,9,0,3,3,9,8,4,5,0,2,7,1,0,0,0,9,3,8,0,0,4}
medpuzzlePROB[97]={0,9,3,0,6,8,0,5,0,7,0,0,0,0,4,8,2,9,4,5,0,9,0,2,0,1,3,9,1,2,0,8,0,0,6,0,0,0,7,2,1,5,4,0,8,0,0,4,3,9,0,0,7,0,8,0,6,0,0,3,0,4,1,1,7,0,8,4,9,2,0,6,3,4,9,0,0,0,5,0,7}
medpuzzlePROB[98]={9,0,1,7,0,0,4,3,2,0,0,7,2,3,0,0,0,5,3,0,0,9,0,5,7,8,1,1,9,8,6,0,3,5,7,0,0,7,5,4,1,0,0,0,0,0,0,3,0,0,0,1,6,0,0,0,4,0,9,0,2,0,7,5,6,9,1,7,2,3,0,8,7,0,2,0,8,4,9,0,6}
medpuzzlePROB[99]={1,0,0,0,5,0,0,0,7,0,9,0,8,0,2,6,1,0,7,8,5,0,4,6,0,2,9,2,7,0,3,1,0,8,0,0,0,0,0,0,2,9,0,3,0,5,0,0,4,6,8,2,7,1,9,2,4,5,3,7,0,6,0,0,0,8,2,0,0,0,0,3,3,5,7,6,8,1,0,4,2}
medpuzzlePROB[100]={0,0,5,0,4,0,3,0,6,0,0,0,6,3,0,1,0,5,3,4,6,1,0,0,8,0,0,1,6,7,3,0,0,9,8,4,0,8,4,7,9,1,6,0,0,2,9,3,0,0,0,5,1,7,0,5,1,2,8,0,7,0,3,6,0,9,4,0,0,0,5,0,8,3,2,5,0,9,4,0,0}
medpuzzlePROB[101]={1,3,4,9,2,0,6,8,5,0,6,0,5,0,4,7,0,1,0,2,0,0,8,0,3,4,9,6,0,2,3,1,9,4,5,0,3,0,7,0,0,5,0,0,0,0,0,9,0,0,6,1,0,0,8,0,1,4,5,0,0,9,6,2,9,3,0,6,8,0,0,0,5,0,6,1,9,2,0,7,0}
medpuzzlePROB[102]={0,0,5,1,0,8,0,6,4,0,7,1,2,0,4,5,3,9,2,4,0,5,3,0,0,0,0,7,9,3,0,2,6,0,0,0,0,5,0,8,1,0,4,9,7,4,1,8,0,0,5,3,2,0,5,0,0,6,4,0,0,0,0,3,2,4,9,0,0,0,7,5,1,6,0,3,0,7,8,4,0}
medpuzzlePROB[103]={1,0,8,5,4,6,3,2,7,0,7,0,0,0,0,0,4,6,0,0,6,2,3,7,1,0,9,0,0,1,0,2,0,4,3,8,8,0,0,1,0,9,0,0,5,2,5,0,0,0,3,0,6,0,7,1,3,6,9,0,0,0,2,4,2,5,8,7,1,0,9,3,6,0,0,3,0,0,0,1,4}
medpuzzlePROB[104]={0,1,8,6,9,0,4,0,0,0,0,5,3,7,4,0,1,0,0,4,7,5,8,0,9,0,2,5,2,9,0,1,3,0,6,4,7,0,4,0,2,5,3,8,1,0,3,0,0,0,6,0,0,0,1,7,3,4,6,8,5,0,0,9,5,0,0,3,0,6,0,8,0,8,6,0,0,9,1,0,0}
medpuzzlePROB[105]={5,8,4,1,0,9,6,0,0,0,1,0,0,7,0,0,0,0,7,6,0,0,2,5,0,4,1,0,2,0,0,6,0,7,1,3,1,9,3,2,5,0,0,8,0,4,0,6,3,8,0,5,9,0,2,0,7,0,0,8,0,0,0,9,5,1,6,4,0,2,7,8,0,0,8,0,1,2,9,3,5}
medpuzzlePROB[106]={2,3,0,9,0,5,0,0,1,0,1,0,7,0,8,6,3,0,0,0,8,3,1,2,5,9,0,0,5,3,0,0,6,0,2,0,4,0,9,0,0,1,3,5,6,1,2,6,8,5,0,4,7,0,0,9,1,0,0,4,8,6,7,0,4,7,6,3,0,0,0,0,5,0,2,1,8,7,0,0,0}
medpuzzlePROB[107]={1,3,7,4,5,0,0,0,0,0,0,8,0,0,1,0,7,4,6,0,0,8,0,3,0,0,1,7,1,0,9,4,8,0,3,5,9,8,3,0,0,0,6,0,7,4,2,5,0,6,7,1,8,9,3,0,0,7,0,0,0,1,2,0,0,4,1,3,0,9,6,8,8,0,1,2,9,4,0,0,0}
medpuzzlePROB[108]={1,0,6,8,0,0,4,7,9,3,5,0,2,9,0,0,6,0,0,8,0,1,0,4,3,2,5,0,0,2,5,7,0,6,0,0,7,6,3,9,4,1,2,5,0,0,4,0,0,0,8,7,0,3,4,0,5,0,1,6,0,8,0,0,0,9,3,0,2,0,4,7,2,7,0,0,5,0,1,0,6}
medpuzzlePROB[109]={8,2,1,4,0,7,9,3,6,0,5,9,0,0,0,7,0,0,0,3,0,1,2,0,0,4,0,0,0,3,0,4,6,0,7,8,6,8,2,0,9,1,3,5,4,1,4,0,0,3,0,2,0,9,9,1,0,0,8,0,0,2,0,3,0,0,5,7,2,0,9,1,2,7,5,0,0,0,6,8,0}
medpuzzlePROB[110]={0,7,3,9,0,0,4,0,0,0,0,0,4,1,6,0,0,5,1,0,0,0,0,7,9,2,8,3,0,0,8,0,9,5,0,2,2,8,9,5,6,0,3,0,7,4,0,5,2,0,0,0,0,1,0,0,0,7,9,0,2,8,0,8,0,4,6,2,5,1,7,9,7,9,2,1,3,0,0,5,4}
medpuzzlePROB[111]={8,0,7,0,0,5,6,3,0,4,0,2,3,0,6,7,9,1,0,6,0,2,7,9,0,8,0,1,0,6,0,3,0,0,4,8,9,0,0,0,4,1,0,0,3,2,4,3,0,0,8,0,1,7,7,0,9,1,0,4,0,5,0,0,2,8,9,0,3,0,0,0,0,1,0,8,5,7,3,2,9}
medpuzzlePROB[112]={6,5,0,0,1,0,7,0,0,7,0,1,3,0,2,8,5,9,8,0,3,5,9,7,4,0,0,1,3,8,0,5,6,9,0,0,9,0,0,0,4,0,3,8,5,4,0,0,8,3,0,2,1,6,0,0,0,0,2,0,5,9,0,0,0,0,6,8,5,1,4,3,0,1,4,0,0,3,0,2,8}
medpuzzlePROB[113]={0,2,0,0,0,7,3,0,0,6,7,9,3,5,4,0,0,0,0,5,4,1,0,0,7,9,6,2,1,7,5,0,6,9,0,3,9,0,0,8,0,1,6,0,0,5,0,8,9,0,0,1,0,2,0,0,2,0,3,9,0,6,1,1,3,5,7,6,8,4,0,9,0,9,6,2,0,0,8,0,0}
medpuzzlePROB[114]={1,2,7,0,0,5,0,0,4,0,4,0,8,9,2,7,1,6,6,0,0,7,0,1,0,5,2,4,0,2,1,8,0,0,3,0,0,7,0,4,5,3,0,2,0,0,1,0,0,2,6,0,4,0,2,3,0,6,7,8,4,0,0,7,9,0,2,0,4,1,6,8,8,0,0,0,0,9,2,0,3}
medpuzzlePROB[115]={9,7,2,1,3,4,8,0,6,0,0,1,0,7,6,4,9,0,4,5,0,2,0,8,1,0,3,0,0,0,0,0,0,2,0,0,6,2,0,8,1,3,0,4,5,1,3,0,9,4,0,7,0,8,0,0,3,0,8,9,5,0,7,7,4,8,0,5,0,0,2,0,0,0,9,3,0,7,6,8,0}
medpuzzlePROB[116]={0,4,2,0,7,0,1,9,3,8,3,0,2,0,5,0,0,7,6,1,0,9,0,4,8,0,2,7,0,6,0,5,2,0,0,4,0,0,0,0,8,6,0,2,1,2,5,0,3,0,9,7,0,6,1,7,5,8,0,0,2,0,9,3,2,8,4,0,7,6,0,0,0,0,4,0,2,0,3,7,0}
medpuzzlePROB[117]={0,1,0,0,4,0,0,8,3,0,2,5,0,6,3,1,0,9,0,0,9,7,0,0,4,6,2,5,0,6,0,0,0,7,0,0,1,4,0,3,8,0,0,5,6,0,8,3,6,5,9,2,0,0,2,0,8,0,7,1,3,0,4,3,5,0,0,9,8,0,2,0,9,7,4,2,0,6,0,1,5}
medpuzzlePROB[118]={0,0,4,9,0,6,0,5,7,6,0,8,1,0,3,0,9,0,7,0,1,0,5,4,8,0,3,0,8,0,0,9,0,4,0,2,5,4,0,3,2,8,0,1,6,0,1,0,0,4,0,0,0,5,0,0,3,0,1,5,6,2,9,1,0,9,7,0,2,5,0,8,4,2,0,0,6,9,7,3,0}
medpuzzlePROB[119]={1,0,5,9,0,6,7,2,3,6,0,0,0,8,0,0,4,9,4,0,2,3,7,0,8,0,0,7,0,4,0,0,0,0,9,0,0,2,0,0,5,3,6,7,8,8,3,0,7,0,9,2,0,4,5,6,0,0,3,0,9,8,0,2,0,8,0,0,5,4,3,7,3,0,9,0,2,7,0,1,6}
medpuzzlePROB[120]={3,4,9,0,5,0,7,8,0,2,6,0,7,3,8,4,0,1,0,0,0,9,4,6,2,5,0,0,0,4,0,1,2,3,0,9,6,9,3,0,0,0,0,2,0,0,0,7,5,9,3,6,0,8,0,7,1,8,6,0,0,3,2,0,0,2,0,0,9,5,6,4,9,5,0,3,2,0,0,0,0}
medpuzzlePROB[121]={0,4,6,3,1,8,0,5,0,7,0,0,9,0,0,3,6,0,1,3,2,7,5,0,4,9,0,3,0,7,0,0,9,6,0,4,0,9,0,1,0,3,0,2,5,6,2,0,5,0,7,8,0,9,5,0,3,8,7,0,0,0,0,0,1,8,6,9,2,0,7,3,0,0,9,0,3,5,0,8,0}
medpuzzlePROB[122]={9,7,1,5,2,8,3,0,0,3,8,2,4,0,0,5,1,0,0,0,6,3,0,9,7,8,2,0,1,4,0,5,0,0,9,0,6,2,0,8,3,1,4,0,0,7,0,5,9,6,0,8,2,1,2,0,0,0,0,3,1,7,0,0,6,7,2,0,5,0,0,8,0,9,0,1,0,7,0,0,0}
medpuzzlePROB[123]={0,2,1,4,0,8,5,0,0,0,6,9,0,2,0,1,4,3,0,5,4,6,0,0,0,7,0,9,0,6,0,8,2,0,0,7,1,0,2,5,4,0,6,3,0,4,0,5,3,0,0,2,8,0,0,1,8,0,5,3,0,2,4,0,4,3,8,7,0,0,1,5,5,9,7,0,1,0,0,6,0}
medpuzzlePROB[124]={6,0,0,0,3,7,2,5,4,7,4,8,0,0,0,3,9,6,0,2,3,6,0,9,0,0,0,3,8,0,7,0,0,6,0,9,2,7,6,0,0,1,4,3,5,1,0,0,4,6,0,7,8,0,9,3,0,0,0,0,8,4,1,0,1,2,3,9,8,0,6,7,8,0,5,1,0,0,0,0,0}
medpuzzlePROB[125]={1,5,0,7,9,8,4,2,0,3,7,8,0,4,2,0,0,6,0,9,0,5,0,6,8,0,7,0,6,0,4,2,7,0,0,9,0,8,9,0,6,0,0,0,0,4,2,3,0,0,1,6,7,0,0,0,7,8,0,0,0,0,1,8,0,2,0,7,3,0,5,0,6,4,5,2,1,9,0,3,8}
medpuzzlePROB[126]={0,1,3,2,0,7,0,5,6,6,0,0,4,5,3,0,9,1,0,0,0,6,1,8,0,2,3,0,0,6,0,7,2,5,8,9,2,0,0,9,4,0,0,3,0,0,7,9,0,0,5,6,4,0,0,6,1,0,2,4,0,0,5,0,9,0,0,3,0,2,6,8,7,8,2,0,6,0,0,1,4}
medpuzzlePROB[127]={6,3,7,0,0,0,0,0,5,1,4,8,0,3,0,6,2,0,0,2,9,0,0,7,0,1,4,8,6,0,5,0,3,0,0,0,0,1,5,0,0,0,9,4,6,9,7,2,4,1,6,5,8,0,2,5,3,0,4,9,1,6,8,0,8,6,2,0,1,0,0,9,7,0,0,0,0,8,0,5,0}
medpuzzlePROB[128]={0,0,7,0,0,8,4,1,5,0,0,0,1,4,5,7,0,6,0,0,1,6,0,0,3,2,8,0,6,4,0,0,3,2,0,7,0,8,5,2,6,1,0,0,4,9,0,3,7,8,0,0,0,1,4,0,0,0,1,2,6,0,3,8,0,6,5,3,9,0,4,0,0,1,2,0,7,6,8,5,0}
medpuzzlePROB[129]={5,3,0,2,8,0,0,6,1,0,8,1,0,5,3,0,7,9,0,7,4,0,1,0,0,0,5,3,9,8,5,0,4,1,0,6,1,2,0,8,0,0,5,0,0,4,0,6,1,0,0,3,0,7,0,4,2,0,6,0,0,1,0,0,0,0,7,0,1,9,4,3,7,0,3,9,4,8,0,5,2}
medpuzzlePROB[130]={0,0,3,9,6,4,2,7,0,0,7,4,5,1,8,3,6,9,6,9,0,0,3,0,0,0,0,4,1,5,3,0,6,7,9,8,9,0,0,0,7,0,0,2,0,3,2,0,0,5,0,1,4,6,0,4,0,0,8,0,6,0,2,7,6,8,0,9,2,0,3,0,0,3,0,6,0,5,0,0,7}
medpuzzlePROB[131]={4,5,6,2,0,0,3,1,0,0,2,1,7,4,3,5,0,6,0,9,7,5,0,6,4,0,0,0,4,2,8,6,1,0,0,0,0,0,0,0,2,0,0,8,0,0,0,8,3,5,0,2,6,4,6,3,5,9,8,4,1,7,0,2,0,0,0,0,0,6,4,3,1,7,0,0,0,2,8,0,9}
medpuzzlePROB[132]={4,0,0,1,0,8,9,5,6,9,0,5,2,4,0,0,1,3,0,3,1,0,9,0,8,2,0,3,0,9,0,0,0,4,6,2,1,5,0,4,6,0,0,9,7,2,0,0,3,0,9,1,8,0,7,0,0,0,5,3,0,0,9,8,9,0,0,2,0,5,0,0,5,0,2,0,1,7,6,3,8}
medpuzzlePROB[133]={0,0,0,6,0,0,0,5,4,7,5,0,0,9,4,8,3,0,4,0,0,0,0,0,7,0,6,2,8,0,9,0,3,1,4,7,0,0,7,0,8,0,5,6,3,6,0,4,5,7,1,9,0,2,0,6,2,7,3,5,0,0,9,0,0,9,1,4,6,3,0,8,1,4,3,8,0,9,0,0,0}
medpuzzlePROB[134]={0,0,3,1,0,8,6,0,0,0,0,8,7,0,9,3,1,2,0,6,0,0,0,0,0,4,0,8,4,2,3,0,0,0,6,5,1,0,7,6,9,5,0,0,4,0,9,0,0,0,2,7,0,1,3,8,5,0,7,4,1,2,0,6,7,0,2,3,1,0,9,8,0,1,0,0,5,6,4,7,3}
medpuzzlePROB[135]={0,0,0,0,6,0,0,9,3,1,0,0,9,7,3,0,0,2,7,9,3,2,8,5,4,0,0,0,0,0,7,3,6,0,0,0,2,4,9,8,5,0,6,3,0,0,0,7,4,9,0,8,1,5,9,8,1,0,0,7,3,4,6,4,0,0,3,1,8,0,5,0,0,0,5,0,0,9,1,7,8}
medpuzzlePROB[136]={2,0,0,0,5,0,0,0,1,0,3,4,1,7,0,0,0,9,0,6,0,9,2,8,4,3,0,0,8,6,5,3,9,1,2,4,0,0,3,2,0,0,7,6,0,1,0,2,8,6,7,5,0,3,4,0,0,3,0,2,9,7,0,6,0,8,0,9,1,0,0,5,3,0,7,0,4,5,0,0,2}
medpuzzlePROB[137]={0,6,8,9,7,0,1,3,4,4,7,0,0,3,0,5,0,2,2,0,0,8,5,4,6,7,9,0,0,7,0,4,1,0,5,8,1,0,4,0,9,5,3,0,0,3,2,5,6,8,7,4,0,0,0,0,0,0,2,9,7,1,0,0,0,0,7,1,0,8,4,0,7,1,3,0,6,0,0,0,0}
medpuzzlePROB[138]={5,9,8,1,0,3,0,7,2,0,6,0,7,0,9,8,0,3,2,3,7,0,0,5,6,0,1,1,7,0,0,0,0,0,8,4,3,0,5,8,7,0,9,0,6,0,0,0,6,3,4,7,1,5,0,0,0,2,4,0,0,0,9,6,5,9,3,1,0,0,0,7,7,2,0,5,0,6,0,3,0}
medpuzzlePROB[139]={5,0,0,0,7,0,9,0,6,0,9,8,6,5,1,0,0,4,7,6,2,0,0,0,0,1,3,1,7,0,5,0,2,4,0,8,8,4,6,1,9,0,3,0,2,2,0,3,4,8,0,0,0,0,0,2,5,0,6,0,8,0,1,0,3,7,8,1,9,0,0,5,4,0,1,0,2,0,6,7,0}
medpuzzlePROB[140]={6,0,0,0,5,0,3,0,9,3,7,9,0,0,1,8,0,0,2,0,0,3,7,9,0,6,4,0,6,0,4,0,0,5,8,2,0,3,4,0,2,0,7,0,1,5,9,2,1,8,7,0,0,3,9,0,6,8,0,0,0,1,0,7,0,3,0,6,4,2,5,0,0,5,0,7,1,2,9,0,6}
medpuzzlePROB[141]={0,8,0,9,0,7,1,4,0,9,5,0,0,0,8,0,3,6,7,4,0,0,1,0,8,0,0,8,2,0,1,9,4,6,5,0,4,3,0,7,0,0,0,1,0,0,0,0,0,5,3,0,8,7,5,6,2,0,4,0,9,0,0,0,9,4,8,7,2,0,6,1,1,7,8,0,6,0,3,2,4}
medpuzzlePROB[142]={0,0,0,0,2,0,1,6,3,0,4,3,5,1,7,8,9,0,0,2,8,6,3,9,0,0,7,0,9,6,1,8,5,0,0,0,4,0,5,7,0,0,0,1,9,2,7,1,9,4,3,0,0,5,9,0,0,0,0,1,7,0,8,0,3,7,2,0,6,0,5,0,5,1,0,0,0,0,9,2,6}
medpuzzlePROB[143]={0,8,5,0,9,0,3,4,0,2,0,7,1,3,5,0,0,0,0,9,6,0,0,8,0,0,2,6,0,0,0,1,4,2,7,0,0,0,9,8,5,0,4,0,3,5,1,4,0,0,0,6,8,0,8,6,3,2,0,0,5,9,4,0,7,2,0,6,9,8,0,0,9,5,1,4,0,3,7,0,6}
medpuzzlePROB[144]={1,0,9,6,0,0,5,8,3,0,4,5,0,8,3,7,1,0,7,8,3,9,0,1,0,2,0,0,7,8,3,0,0,2,6,5,9,0,0,0,4,2,0,0,8,3,0,2,8,6,0,9,0,1,5,0,0,1,2,0,0,9,4,8,9,4,7,3,0,1,0,0,2,0,0,0,0,0,8,3,0}
medpuzzlePROB[145]={2,0,7,9,8,1,0,5,0,6,8,4,7,0,0,1,3,0,1,0,0,3,0,6,0,8,2,0,0,1,8,0,3,5,0,0,8,2,6,0,7,9,0,4,0,3,0,0,0,0,2,9,6,8,0,6,0,1,3,7,8,9,0,0,4,0,0,0,8,0,1,5,9,1,0,0,5,0,6,7,3}
medpuzzlePROB[146]={6,4,8,1,0,2,0,0,9,2,0,7,0,5,9,0,8,0,1,0,0,0,3,8,0,2,7,0,2,5,8,0,0,3,7,0,8,0,1,0,0,0,2,9,4,0,6,3,9,0,7,8,1,0,5,1,2,0,8,4,0,0,0,3,9,6,2,0,5,0,0,8,0,0,4,0,9,0,1,5,2}
medpuzzlePROB[147]={0,0,9,5,0,0,0,8,0,5,1,0,0,0,0,7,0,0,0,0,8,4,3,7,0,1,5,8,7,0,1,6,0,5,9,0,1,3,0,0,0,5,0,2,8,9,0,6,2,4,0,0,3,7,2,8,5,9,7,4,0,6,0,0,0,1,0,5,2,8,7,9,3,9,7,6,8,1,0,0,0}
medpuzzlePROB[148]={5,0,0,0,0,1,7,8,3,1,0,0,9,5,0,2,4,6,4,0,0,7,8,6,0,0,9,7,0,4,6,9,0,0,3,1,0,0,2,3,0,5,8,0,4,0,0,5,0,4,0,6,0,0,2,3,0,8,0,0,0,6,5,9,5,6,2,3,7,4,1,0,0,4,1,0,0,9,3,0,2}
medpuzzlePROB[149]={6,0,2,0,1,8,0,0,4,7,5,0,0,3,0,1,2,0,3,1,8,4,0,0,0,6,9,1,2,6,0,4,7,0,3,5,4,0,9,0,2,0,6,8,7,0,8,0,6,9,3,4,1,0,8,0,5,0,6,4,0,9,1,9,6,0,0,0,5,8,0,0,0,0,0,1,0,0,5,7,0}
medpuzzlePROB[150]={5,0,2,0,0,8,4,0,3,9,3,1,4,0,6,0,8,5,7,4,0,1,3,5,0,0,2,1,5,4,0,0,0,0,9,0,0,0,9,0,8,1,0,5,4,8,0,0,5,0,9,3,0,1,2,8,0,0,5,0,1,7,0,6,0,7,2,9,3,5,0,0,4,9,0,0,1,0,2,0,6}
medpuzzlePROB[151]={1,0,3,4,9,8,7,0,6,0,9,0,5,6,0,0,0,2,0,0,5,7,0,0,3,8,9,3,1,9,8,0,0,0,0,0,0,0,2,0,0,0,0,6,7,0,8,0,2,4,0,1,0,3,8,5,6,3,0,1,9,7,4,9,3,4,0,0,7,5,2,0,2,7,0,9,5,0,6,0,8}
medpuzzlePROB[152]={9,4,0,0,0,6,2,0,0,0,5,3,2,4,8,1,9,7,0,8,0,1,0,9,6,3,0,4,0,2,6,0,0,0,7,0,0,9,0,4,0,0,3,0,0,8,7,0,9,0,3,4,5,1,3,0,0,0,0,2,7,0,6,7,2,0,0,6,4,5,1,3,5,6,4,7,0,1,0,0,9}
medpuzzlePROB[153]={0,6,0,7,5,0,8,2,3,8,2,3,0,0,0,1,0,7,1,5,0,2,3,8,0,4,9,0,0,0,0,0,7,9,6,2,4,0,0,1,2,9,3,7,0,7,9,0,0,6,0,4,0,8,0,0,0,0,0,0,5,8,1,0,0,5,3,8,4,7,0,6,6,0,8,9,1,5,0,0,4}
medpuzzlePROB[154]={5,6,0,0,9,4,8,1,3,2,1,3,6,7,0,9,0,0,9,0,0,1,0,5,0,0,2,0,0,0,0,4,1,5,3,8,0,0,8,0,0,0,0,2,1,0,7,5,8,0,3,0,6,9,0,0,9,5,0,7,1,4,6,7,0,0,3,0,9,2,8,5,0,5,0,4,6,2,3,0,0}
medpuzzlePROB[155]={3,4,2,5,0,0,0,0,6,0,7,0,0,4,2,5,8,9,9,0,0,7,6,1,2,0,3,0,1,0,2,7,0,0,0,8,7,2,3,0,0,6,9,5,4,8,0,5,4,9,3,7,0,1,0,0,4,6,0,7,0,1,2,0,8,6,1,0,0,0,9,0,0,3,7,0,2,0,0,6,0}
medpuzzlePROB[156]={1,6,7,4,9,2,0,0,3,2,5,4,0,7,8,1,0,0,3,0,0,0,5,0,0,0,2,0,0,5,6,0,1,9,3,0,0,0,1,0,0,0,2,4,0,9,3,2,8,4,7,0,5,0,4,2,0,7,0,0,8,9,5,5,1,0,9,0,4,7,0,6,0,9,0,2,0,0,3,1,4}
medpuzzlePROB[157]={4,6,5,0,0,0,0,2,7,0,8,0,0,2,6,0,0,5,2,9,1,0,5,7,0,3,4,8,0,6,0,0,2,5,0,3,0,1,0,6,3,4,7,0,9,9,0,7,5,0,8,4,0,2,0,2,0,3,0,5,9,7,6,0,0,8,7,0,9,0,4,0,0,0,9,2,4,1,0,5,0}
medpuzzlePROB[158]={6,0,9,0,2,7,0,0,8,3,1,0,4,8,5,6,2,9,0,0,0,0,9,1,0,7,0,0,6,4,7,0,0,0,3,5,5,8,1,9,0,2,0,4,0,2,7,3,5,0,6,0,0,1,0,5,8,0,0,4,1,9,0,0,3,6,8,0,9,4,5,0,0,0,2,0,5,3,0,0,7}
medpuzzlePROB[159]={8,3,0,9,2,5,1,0,7,1,0,0,6,0,8,3,2,5,2,6,5,0,0,7,0,0,4,7,0,6,4,0,0,0,1,0,0,0,1,0,0,2,0,3,9,3,2,0,0,0,1,0,8,6,0,0,2,7,9,3,0,0,8,6,5,3,2,0,0,9,0,1,9,0,0,1,5,0,2,4,3}
medpuzzlePROB[160]={0,0,4,2,5,0,0,0,6,6,5,9,1,4,0,0,2,8,1,8,0,0,6,0,5,0,3,4,0,1,5,3,2,0,0,9,2,0,0,4,0,0,3,5,1,5,9,0,8,0,0,4,7,0,0,0,6,7,0,5,2,3,0,8,4,7,0,0,1,0,6,0,3,2,0,0,9,4,0,1,7}
medpuzzlePROB[161]={3,9,0,2,5,8,0,4,6,5,0,0,0,4,3,0,0,9,0,4,7,0,0,0,5,8,0,0,3,0,0,9,7,4,0,5,7,5,9,0,6,4,3,2,0,0,0,6,5,3,2,8,0,0,6,2,0,9,0,5,0,7,4,1,0,4,0,0,6,9,5,2,0,0,5,0,2,1,0,3,0}
medpuzzlePROB[162]={6,8,5,2,0,0,4,0,0,7,2,0,3,6,9,5,8,1,0,9,1,5,8,4,6,0,7,0,0,0,9,0,0,2,0,5,9,6,0,1,5,8,0,7,0,5,0,3,0,2,7,1,9,0,8,1,0,0,3,0,7,5,0,0,0,6,7,9,0,8,0,2,0,5,0,0,0,6,9,0,0}
medpuzzlePROB[163]={2,4,0,0,9,0,0,6,5,0,9,8,4,0,0,2,1,0,5,3,0,6,2,0,4,7,0,4,0,0,1,8,3,6,5,7,8,1,6,9,0,7,0,0,2,7,5,3,0,0,4,0,8,1,0,8,2,7,1,6,0,0,0,0,0,5,0,4,0,0,0,6,1,6,4,0,3,0,0,2,0}
medpuzzlePROB[164]={7,9,3,2,0,5,8,0,0,1,0,4,0,9,0,3,2,6,0,0,0,1,0,0,5,9,0,2,0,5,0,8,0,0,0,9,0,0,1,6,7,9,0,5,4,9,6,0,4,0,2,1,8,0,0,0,0,7,4,8,9,3,2,3,2,0,0,1,6,0,7,8,4,7,8,0,0,3,0,1,0}
medpuzzlePROB[165]={0,7,5,4,0,8,0,2,3,3,9,0,6,7,5,0,1,4,0,8,1,2,0,9,0,0,0,2,0,0,1,9,4,6,5,0,0,0,0,5,8,0,2,4,9,9,0,4,0,0,0,3,8,0,0,1,0,0,5,2,4,0,6,8,4,3,9,0,1,0,7,0,5,0,6,0,4,0,0,9,8}
medpuzzlePROB[166]={6,0,3,1,9,8,5,2,4,0,0,0,0,3,0,9,8,0,5,9,8,0,6,4,1,0,0,0,0,7,3,5,2,8,0,0,0,5,4,0,7,1,0,3,2,9,3,2,4,8,0,0,0,1,0,8,0,0,2,9,3,1,0,0,2,0,7,0,5,4,6,0,0,1,0,0,0,0,2,9,5}
medpuzzlePROB[167]={0,2,4,6,7,3,0,5,0,0,0,5,0,4,1,0,0,6,7,1,6,2,8,0,9,0,0,2,3,8,5,0,9,0,1,7,6,0,0,4,1,7,0,8,2,0,0,1,0,2,0,5,6,9,0,0,7,1,3,2,0,9,0,0,0,0,8,0,6,2,7,0,0,0,0,0,5,4,6,3,1}
medpuzzlePROB[168]={0,6,0,7,0,8,0,1,3,1,7,0,2,5,0,8,0,9,8,2,9,0,4,0,0,7,5,7,9,0,4,6,2,0,3,8,0,3,0,5,0,1,0,6,7,0,8,6,0,3,7,4,2,0,3,4,0,6,1,9,0,0,2,0,0,2,8,0,5,0,0,4,0,0,7,0,0,4,1,0,0}
medpuzzlePROB[169]={3,0,0,9,0,0,7,4,2,2,9,7,8,0,0,1,0,0,1,5,0,6,2,7,8,9,0,9,0,5,0,4,0,0,3,7,0,2,3,0,0,0,4,0,8,0,7,0,0,0,6,5,2,9,0,6,9,1,8,2,3,0,0,0,4,2,7,6,3,0,0,1,0,0,1,4,0,5,2,0,6}
medpuzzlePROB[170]={4,6,0,3,1,0,0,8,7,7,3,0,0,8,6,2,0,5,0,8,0,2,7,4,1,0,3,3,2,0,0,5,1,0,7,6,0,0,7,6,0,0,0,1,0,0,5,0,7,9,0,3,2,4,6,1,0,0,0,3,7,0,2,0,9,3,0,0,0,4,5,8,0,0,4,0,2,9,0,3,1}
medpuzzlePROB[171]={0,7,0,9,6,2,0,3,8,0,5,0,3,0,0,9,2,1,9,2,3,1,0,5,7,0,0,0,8,9,0,0,6,0,0,5,6,4,2,7,5,1,8,9,3,0,1,0,8,3,0,6,0,2,0,6,5,4,1,0,0,0,9,0,0,0,0,9,7,4,1,0,4,0,0,0,2,8,0,5,0}
medpuzzlePROB[172]={9,1,7,5,0,2,6,0,3,4,0,5,0,0,0,2,1,7,0,3,0,0,0,0,0,0,0,6,9,8,4,0,0,0,0,0,0,7,0,1,6,3,8,9,0,0,2,0,0,9,5,4,7,6,8,0,1,2,5,6,7,0,9,0,6,9,3,8,0,5,2,0,3,5,2,0,0,4,1,0,8}
medpuzzlePROB[173]={4,0,9,0,7,3,8,1,0,5,0,2,8,0,1,7,0,4,0,8,0,9,0,0,0,6,5,0,5,7,0,8,2,0,0,0,0,1,0,4,3,0,9,2,0,3,0,0,1,9,7,6,0,8,0,0,5,0,4,8,0,3,1,1,7,0,2,0,6,0,0,9,2,4,8,3,1,0,0,7,6}
medpuzzlePROB[174]={0,9,1,0,0,5,0,7,0,0,0,3,9,0,0,4,1,6,0,0,8,1,3,7,0,2,0,0,7,0,0,0,0,2,8,3,0,8,2,5,4,0,0,0,0,9,3,6,7,8,2,1,5,0,3,0,0,0,0,4,8,6,9,8,2,7,3,9,6,5,0,1,4,0,0,8,0,1,7,0,2}
medpuzzlePROB[175]={0,0,0,4,9,8,5,0,0,6,5,0,1,7,2,0,0,8,0,4,8,0,0,6,1,2,0,1,8,0,2,4,5,0,7,3,0,6,7,0,0,9,2,5,0,4,0,5,3,0,0,8,9,0,7,9,0,6,0,3,0,1,5,8,3,4,9,5,0,7,6,2,0,0,0,7,0,4,0,0,0}
medpuzzlePROB[176]={0,8,7,0,5,6,0,0,0,6,9,1,0,4,0,5,3,0,0,0,0,2,1,9,0,8,6,1,0,0,7,8,3,2,0,4,3,7,2,5,6,4,1,0,0,0,0,8,9,0,0,0,7,3,0,0,6,1,0,8,0,2,9,0,1,0,4,7,2,0,6,5,0,2,4,6,9,0,3,0,0}
medpuzzlePROB[177]={0,9,1,6,0,0,3,2,8,8,2,0,0,0,9,5,4,7,5,4,0,0,7,2,0,1,9,4,0,8,1,9,6,7,0,0,2,0,9,5,0,0,1,0,0,1,0,7,0,0,8,0,0,6,0,1,0,0,8,5,4,0,3,3,8,4,0,6,0,2,0,0,0,7,5,4,2,0,8,6,0}
medpuzzlePROB[178]={9,0,4,1,0,5,3,2,0,0,0,5,9,0,2,7,0,0,0,7,0,8,3,6,4,0,9,0,0,8,2,5,7,9,0,1,0,5,9,3,0,8,0,6,0,1,0,0,4,0,0,8,7,0,4,9,0,6,0,0,0,8,0,0,1,7,5,9,3,0,4,2,5,2,6,0,8,4,0,0,3}
medpuzzlePROB[179]={0,1,0,5,6,2,0,4,9,5,0,0,4,0,8,1,0,0,2,0,4,7,0,1,5,6,8,0,5,9,3,2,0,0,0,0,6,8,0,0,0,9,7,2,0,1,0,2,6,0,5,0,0,3,7,0,5,0,1,4,9,3,0,0,4,8,9,5,0,2,0,0,9,6,0,0,7,3,8,5,0}
medpuzzlePROB[180]={6,0,4,0,0,0,5,2,9,0,0,7,9,6,4,0,3,8,0,0,0,8,5,0,0,0,0,0,0,0,0,2,9,3,0,5,8,9,5,3,1,6,7,4,2,3,4,0,7,0,0,9,1,6,0,0,0,5,0,0,0,9,1,4,0,8,2,0,1,6,7,0,2,1,9,0,7,3,8,5,0}
medpuzzlePROB[181]={0,2,5,0,0,0,0,9,0,1,9,0,2,8,5,0,3,7,0,0,0,9,1,4,0,0,0,2,4,6,3,5,0,8,0,0,9,0,7,0,0,8,3,2,6,3,1,8,0,6,2,4,5,0,0,0,9,0,7,1,0,4,3,0,8,0,0,2,3,9,6,0,0,3,2,0,9,6,7,1,0}
medpuzzlePROB[182]={6,2,5,1,0,0,0,3,4,0,8,0,0,0,6,7,1,0,3,1,7,4,8,0,0,9,0,9,0,3,8,2,7,4,0,1,8,7,0,3,0,0,6,0,9,1,0,2,0,0,0,0,8,7,2,4,0,0,5,3,9,0,8,0,9,0,0,0,1,0,7,3,0,3,6,2,0,8,1,0,5}
medpuzzlePROB[183]={0,3,0,7,4,0,0,0,0,7,2,9,3,1,0,0,4,5,5,4,0,8,0,0,0,1,3,0,7,0,9,2,3,4,5,0,0,1,2,4,0,0,0,8,6,9,5,0,0,8,1,2,3,7,0,0,3,5,0,0,1,6,2,1,8,0,2,0,9,0,7,0,2,6,7,0,3,0,0,9,0}
medpuzzlePROB[184]={0,5,1,2,3,0,8,4,0,8,4,0,7,0,0,6,0,3,0,9,0,8,4,1,0,5,0,0,0,8,4,0,7,0,0,5,9,7,0,0,2,0,1,0,4,1,0,4,9,0,5,7,8,2,4,6,0,1,0,0,5,0,8,5,0,3,6,0,0,9,2,1,2,0,9,0,8,3,4,0,0}
medpuzzlePROB[185]={8,0,3,1,6,7,5,0,9,1,5,2,0,0,8,4,0,6,6,9,7,0,0,0,0,1,3,3,0,9,0,1,5,0,6,4,0,0,5,3,4,0,7,9,8,4,0,6,0,8,0,1,0,0,7,3,0,6,5,0,0,0,2,0,2,1,4,9,0,0,8,0,0,0,4,0,7,0,3,0,1}
medpuzzlePROB[186]={4,1,0,0,0,7,0,6,0,0,3,0,0,8,4,7,0,1,0,7,0,2,1,0,0,0,4,0,9,2,3,4,0,1,7,0,6,0,1,7,0,0,9,4,0,3,4,0,9,6,0,5,0,8,9,6,3,0,5,2,8,1,0,0,0,4,8,7,0,6,9,0,0,0,5,0,9,6,4,3,2}
medpuzzlePROB[187]={0,0,0,0,9,0,0,0,0,1,0,9,0,5,2,0,4,7,3,4,6,8,0,7,0,9,0,9,3,7,0,0,0,6,1,4,0,2,0,9,7,6,8,0,0,5,6,8,1,3,4,7,2,9,0,7,0,2,0,5,9,6,0,6,0,4,0,0,1,2,3,5,2,1,0,3,0,0,4,0,0}
medpuzzlePROB[188]={0,0,0,2,0,7,6,9,4,9,0,4,1,3,0,7,0,8,7,0,6,4,9,0,5,0,3,0,9,0,7,4,1,2,0,6,6,3,0,0,0,2,0,5,7,4,0,2,0,0,5,9,0,1,8,1,5,6,0,0,0,7,0,0,0,0,8,7,0,1,6,5,0,0,7,5,1,0,0,4,2}
medpuzzlePROB[189]={0,8,9,0,2,0,1,6,0,5,0,1,6,8,9,0,4,0,7,6,2,4,0,5,0,3,0,3,7,5,9,4,0,0,0,0,0,0,0,5,6,2,3,0,0,1,0,6,0,0,8,9,5,0,0,1,8,2,3,0,0,9,0,2,5,3,1,0,7,4,8,0,0,4,0,0,5,6,2,0,3}
medpuzzlePROB[190]={9,5,0,0,8,4,3,0,2,0,0,0,0,2,7,9,0,1,8,0,1,0,0,9,4,7,5,2,3,4,8,7,5,0,9,0,0,1,0,9,6,0,7,3,4,6,7,9,4,0,3,5,0,8,1,9,0,3,4,0,0,0,7,0,0,5,2,0,0,8,0,0,4,0,0,0,5,6,0,0,9}
medpuzzlePROB[191]={8,6,4,9,5,0,7,3,2,9,2,7,0,3,0,0,0,5,0,0,0,8,0,2,6,4,0,0,9,3,5,6,0,0,7,1,5,0,0,0,2,0,0,6,4,2,1,6,0,4,9,0,5,0,3,0,0,0,1,7,0,9,8,7,0,1,0,0,4,5,0,6,0,0,9,2,0,5,3,0,7}
medpuzzlePROB[192]={0,0,0,0,0,6,5,2,8,5,0,3,0,9,7,0,0,4,6,1,0,0,4,5,7,0,3,2,3,0,9,7,8,0,5,1,7,9,0,0,0,1,8,0,0,1,0,5,6,2,4,3,7,9,0,6,7,0,8,2,9,4,0,8,0,2,0,0,0,1,0,6,9,0,0,4,0,3,0,8,0}
hARDpuzzleSOL[1]={7,5,1,2,4,8,3,9,6,3,4,6,1,5,9,8,7,2,2,8,9,3,6,7,5,4,1,8,1,4,6,7,5,9,2,3,5,6,3,8,9,2,4,1,7,9,7,2,4,1,3,6,5,8,1,9,5,7,8,6,2,3,4,6,2,7,9,3,4,1,8,5,4,3,8,5,2,1,7,6,9}
hARDpuzzleSOL[2]={9,2,4,8,1,5,3,6,7,3,1,6,4,7,2,9,5,8,5,7,8,6,9,3,4,2,1,1,9,5,3,2,8,7,4,6,2,6,7,9,4,1,5,8,3,4,8,3,7,5,6,1,9,2,8,4,1,5,6,7,2,3,9,7,3,9,2,8,4,6,1,5,6,5,2,1,3,9,8,7,4}
hARDpuzzleSOL[3]={5,7,1,8,4,9,6,2,3,8,6,3,2,7,5,9,1,4,2,9,4,1,3,6,5,8,7,9,4,2,7,1,8,3,6,5,3,5,8,9,6,4,2,7,1,7,1,6,3,5,2,4,9,8,6,3,9,5,8,1,7,4,2,1,2,5,4,9,7,8,3,6,4,8,7,6,2,3,1,5,9}
hARDpuzzleSOL[4]={4,3,2,5,9,7,1,6,8,9,8,6,1,2,3,4,5,7,5,7,1,4,8,6,3,2,9,1,2,8,7,5,4,6,9,3,3,9,5,2,6,8,7,4,1,6,4,7,9,3,1,2,8,5,7,6,9,8,1,2,5,3,4,8,1,3,6,4,5,9,7,2,2,5,4,3,7,9,8,1,6}
hARDpuzzleSOL[5]={1,9,4,3,5,7,2,8,6,7,5,8,6,2,1,3,4,9,3,2,6,9,8,4,7,1,5,8,7,9,5,1,2,4,6,3,6,1,2,4,3,9,8,5,7,4,3,5,7,6,8,1,9,2,2,6,1,8,7,5,9,3,4,9,8,3,2,4,6,5,7,1,5,4,7,1,9,3,6,2,8}
hARDpuzzleSOL[6]={7,1,2,8,6,4,3,9,5,6,9,4,1,5,3,7,8,2,8,5,3,9,2,7,6,4,1,4,8,1,5,7,2,9,3,6,3,2,9,6,4,8,1,5,7,5,7,6,3,1,9,8,2,4,9,6,5,2,8,1,4,7,3,2,3,7,4,9,6,5,1,8,1,4,8,7,3,5,2,6,9}
hARDpuzzleSOL[7]={9,8,6,7,1,5,2,3,4,3,7,2,9,8,4,6,1,5,5,4,1,2,6,3,7,8,9,7,6,3,8,2,9,5,4,1,2,5,4,1,3,7,9,6,8,1,9,8,4,5,6,3,2,7,4,2,7,6,9,1,8,5,3,8,3,9,5,4,2,1,7,6,6,1,5,3,7,8,4,9,2}
hARDpuzzleSOL[8]={4,9,2,6,1,3,5,8,7,7,6,3,8,5,2,9,4,1,8,1,5,9,7,4,3,6,2,9,5,4,3,2,7,8,1,6,1,2,8,5,6,9,7,3,4,6,3,7,1,4,8,2,9,5,5,4,9,2,8,1,6,7,3,2,8,1,7,3,6,4,5,9,3,7,6,4,9,5,1,2,8}
hARDpuzzleSOL[9]={9,8,2,5,4,7,6,3,1,6,1,4,2,8,3,7,9,5,5,3,7,6,1,9,2,8,4,3,7,6,1,2,5,8,4,9,2,4,5,9,7,8,1,6,3,1,9,8,4,3,6,5,7,2,7,6,1,3,9,2,4,5,8,8,2,3,7,5,4,9,1,6,4,5,9,8,6,1,3,2,7}
hARDpuzzleSOL[10]={6,4,1,2,8,5,3,9,7,7,8,9,4,3,6,1,5,2,2,3,5,9,7,1,8,6,4,4,7,3,8,6,9,5,2,1,9,5,8,7,1,2,4,3,6,1,6,2,5,4,3,9,7,8,3,2,7,1,9,8,6,4,5,8,9,4,6,5,7,2,1,3,5,1,6,3,2,4,7,8,9}
hARDpuzzleSOL[11]={3,4,9,6,2,5,1,7,8,7,2,6,8,4,1,9,3,5,8,5,1,3,9,7,6,2,4,2,3,8,1,5,6,7,4,9,1,6,5,9,7,4,3,8,2,9,7,4,2,8,3,5,6,1,4,1,7,5,3,2,8,9,6,6,8,3,4,1,9,2,5,7,5,9,2,7,6,8,4,1,3}
hARDpuzzleSOL[12]={4,9,7,6,3,2,5,8,1,6,3,1,7,8,5,4,2,9,5,8,2,1,4,9,7,6,3,8,2,5,9,1,4,6,3,7,3,7,9,8,5,6,2,1,4,1,6,4,2,7,3,8,9,5,7,4,8,3,6,1,9,5,2,9,1,6,5,2,7,3,4,8,2,5,3,4,9,8,1,7,6}
hARDpuzzleSOL[13]={2,1,5,6,7,3,8,9,4,3,9,7,4,2,8,6,1,5,6,4,8,1,5,9,2,3,7,8,7,4,5,6,1,9,2,3,5,2,3,8,9,7,1,4,6,1,6,9,3,4,2,7,5,8,9,5,6,7,1,4,3,8,2,4,3,2,9,8,6,5,7,1,7,8,1,2,3,5,4,6,9}
hARDpuzzleSOL[14]={4,5,1,7,9,2,3,8,6,6,9,2,5,8,3,4,1,7,3,8,7,4,6,1,5,9,2,1,4,9,3,7,6,2,5,8,8,7,5,2,4,9,1,6,3,2,3,6,8,1,5,7,4,9,9,2,8,1,5,7,6,3,4,7,1,4,6,3,8,9,2,5,5,6,3,9,2,4,8,7,1}
hARDpuzzleSOL[15]={6,1,7,9,5,4,8,3,2,8,4,3,1,2,6,5,7,9,9,5,2,7,8,3,1,4,6,5,6,1,3,7,9,2,8,4,2,7,4,8,1,5,6,9,3,3,8,9,4,6,2,7,1,5,4,2,8,5,9,1,3,6,7,1,9,5,6,3,7,4,2,8,7,3,6,2,4,8,9,5,1}
hARDpuzzleSOL[16]={1,8,3,4,6,2,7,5,9,5,2,4,1,9,7,6,8,3,7,6,9,8,5,3,4,1,2,4,3,5,2,1,6,9,7,8,6,1,2,9,7,8,5,3,4,9,7,8,5,3,4,1,2,6,3,4,1,7,2,9,8,6,5,2,9,7,6,8,5,3,4,1,8,5,6,3,4,1,2,9,7}
hARDpuzzleSOL[17]={2,4,3,7,5,8,9,1,6,1,5,7,9,3,6,4,2,8,9,8,6,4,2,1,3,7,5,7,3,8,1,6,9,5,4,2,4,9,5,2,8,7,6,3,1,6,2,1,3,4,5,7,8,9,8,1,9,6,7,3,2,5,4,5,7,4,8,9,2,1,6,3,3,6,2,5,1,4,8,9,7}
hARDpuzzleSOL[18]={2,6,3,7,5,9,4,8,1,5,9,8,3,1,4,7,6,2,7,4,1,8,2,6,3,9,5,9,3,7,1,6,8,2,5,4,4,2,5,9,3,7,8,1,6,1,8,6,2,4,5,9,7,3,3,7,4,5,8,1,6,2,9,6,1,9,4,7,2,5,3,8,8,5,2,6,9,3,1,4,7}
hARDpuzzleSOL[19]={6,1,4,7,8,9,5,2,3,3,2,5,1,4,6,7,8,9,7,8,9,2,5,3,1,6,4,9,4,3,5,6,1,8,7,2,5,6,2,8,9,7,3,4,1,8,7,1,3,2,4,9,5,6,1,5,6,9,7,2,4,3,8,2,9,7,4,3,8,6,1,5,4,3,8,6,1,5,2,9,7}
hARDpuzzleSOL[20]={2,5,9,6,8,3,1,4,7,6,3,8,1,7,4,9,2,5,4,1,7,9,5,2,8,3,6,9,8,4,2,6,5,3,7,1,5,6,2,3,1,7,4,9,8,1,7,3,4,9,8,6,5,2,7,9,5,8,4,6,2,1,3,3,4,6,7,2,1,5,8,9,8,2,1,5,3,9,7,6,4}
hARDpuzzleSOL[21]={1,3,7,2,5,9,6,8,4,5,9,8,3,4,6,2,1,7,6,4,2,8,1,7,9,3,5,4,1,5,9,3,8,7,2,6,8,7,9,4,6,2,3,5,1,3,2,6,5,7,1,8,4,9,2,5,4,7,9,3,1,6,8,7,6,3,1,8,4,5,9,2,9,8,1,6,2,5,4,7,3}
hARDpuzzleSOL[22]={5,8,7,3,1,4,9,6,2,2,1,6,9,7,5,3,8,4,4,9,3,6,2,8,1,5,7,9,3,8,7,6,2,4,1,5,6,5,2,4,3,1,7,9,8,1,7,4,5,8,9,2,3,6,8,4,5,2,9,3,6,7,1,7,2,9,1,5,6,8,4,3,3,6,1,8,4,7,5,2,9}
hARDpuzzleSOL[23]={8,6,2,3,7,9,1,5,4,3,1,4,6,2,5,9,8,7,5,9,7,1,8,4,2,6,3,4,2,5,9,1,8,7,3,6,9,3,8,7,6,2,4,1,5,6,7,1,4,5,3,8,2,9,7,8,3,5,9,1,6,4,2,1,5,9,2,4,6,3,7,8,2,4,6,8,3,7,5,9,1}
hARDpuzzleSOL[24]={6,8,4,5,7,2,3,9,1,2,1,3,8,9,6,5,7,4,7,9,5,1,4,3,8,2,6,9,5,2,4,8,7,6,1,3,8,3,7,6,1,5,9,4,2,1,4,6,3,2,9,7,5,8,4,6,9,7,3,1,2,8,5,3,7,1,2,5,8,4,6,9,5,2,8,9,6,4,1,3,7}
hARDpuzzleSOL[25]={3,7,5,1,6,2,4,8,9,8,4,1,3,9,5,6,2,7,6,2,9,8,4,7,1,5,3,2,5,3,7,1,6,8,9,4,1,9,7,5,8,4,2,3,6,4,6,8,2,3,9,5,7,1,9,8,2,4,7,1,3,6,5,7,3,4,6,5,8,9,1,2,5,1,6,9,2,3,7,4,8}
hARDpuzzleSOL[26]={2,7,1,3,5,9,6,8,4,6,3,5,8,2,4,1,9,7,4,8,9,7,6,1,5,2,3,9,6,7,2,1,3,4,5,8,5,4,8,6,9,7,3,1,2,3,1,2,4,8,5,9,7,6,1,2,4,5,7,6,8,3,9,8,9,3,1,4,2,7,6,5,7,5,6,9,3,8,2,4,1}
hARDpuzzleSOL[27]={7,1,9,8,6,5,4,2,3,6,5,8,2,3,4,7,1,9,4,3,2,7,1,9,8,6,5,9,2,3,6,4,8,5,7,1,1,8,7,9,5,2,3,4,6,5,4,6,1,7,3,9,8,2,3,7,5,4,2,6,1,9,8,2,9,4,5,8,1,6,3,7,8,6,1,3,9,7,2,5,4}
hARDpuzzleSOL[28]={7,1,9,4,3,2,6,8,5,8,4,2,5,7,6,3,9,1,6,5,3,1,9,8,7,2,4,4,7,5,2,6,1,9,3,8,3,8,1,9,4,7,5,6,2,2,9,6,8,5,3,1,4,7,5,2,8,3,1,9,4,7,6,1,3,7,6,8,4,2,5,9,9,6,4,7,2,5,8,1,3}
hARDpuzzleSOL[29]={8,6,2,9,1,5,7,4,3,3,5,4,6,7,8,2,9,1,9,7,1,2,4,3,5,6,8,5,1,9,8,6,2,3,7,4,2,8,7,3,5,4,6,1,9,6,4,3,7,9,1,8,5,2,7,2,5,1,8,9,4,3,6,4,9,8,5,3,6,1,2,7,1,3,6,4,2,7,9,8,5}
hARDpuzzleSOL[30]={9,3,4,7,1,8,5,6,2,8,7,5,2,6,3,4,1,9,6,1,2,4,5,9,7,8,3,4,8,6,5,2,7,3,9,1,7,2,9,1,3,4,8,5,6,1,5,3,9,8,6,2,4,7,5,4,1,3,9,2,6,7,8,2,6,7,8,4,1,9,3,5,3,9,8,6,7,5,1,2,4}
hARDpuzzleSOL[31]={5,3,4,2,7,1,8,6,9,8,6,2,3,9,5,7,4,1,7,1,9,8,4,6,3,5,2,1,9,3,4,8,2,5,7,6,6,8,5,1,3,7,2,9,4,2,4,7,5,6,9,1,8,3,3,5,6,9,2,8,4,1,7,4,7,8,6,1,3,9,2,5,9,2,1,7,5,4,6,3,8}
hARDpuzzleSOL[32]={4,3,6,9,7,2,8,1,5,7,8,5,6,1,4,2,3,9,2,9,1,8,3,5,4,6,7,9,7,4,5,2,3,6,8,1,5,6,3,1,9,8,7,4,2,8,1,2,4,6,7,9,5,3,3,4,9,2,8,1,5,7,6,6,5,7,3,4,9,1,2,8,1,2,8,7,5,6,3,9,4}
hARDpuzzleSOL[33]={9,6,4,3,1,2,5,7,8,7,2,1,5,8,4,9,6,3,3,8,5,6,9,7,4,2,1,8,4,2,9,7,3,6,1,5,6,1,9,2,4,5,8,3,7,5,3,7,8,6,1,2,9,4,4,7,8,1,2,6,3,5,9,1,5,6,4,3,9,7,8,2,2,9,3,7,5,8,1,4,6}
hARDpuzzleSOL[34]={5,8,6,4,9,3,7,2,1,9,4,3,2,7,1,5,8,6,7,1,2,8,6,5,9,4,3,8,9,4,3,1,7,6,5,2,3,6,7,5,4,2,1,9,8,2,5,1,9,8,6,3,7,4,4,3,5,1,2,9,8,6,7,6,2,9,7,3,8,4,1,5,1,7,8,6,5,4,2,3,9}
hARDpuzzleSOL[35]={1,6,8,2,7,3,4,5,9,9,4,3,1,8,5,7,6,2,5,2,7,9,6,4,8,3,1,7,3,1,6,2,9,5,4,8,2,5,9,3,4,8,1,7,6,4,8,6,7,5,1,9,2,3,3,9,4,5,1,6,2,8,7,8,1,2,4,3,7,6,9,5,6,7,5,8,9,2,3,1,4}
hARDpuzzleSOL[36]={5,8,2,6,3,1,9,7,4,9,3,4,7,5,2,1,6,8,6,7,1,4,9,8,2,5,3,7,9,8,5,1,4,3,2,6,3,1,5,8,2,6,4,9,7,4,2,6,3,7,9,5,8,1,1,5,3,2,6,7,8,4,9,8,6,9,1,4,5,7,3,2,2,4,7,9,8,3,6,1,5}
hARDpuzzleSOL[37]={1,9,3,8,2,4,5,6,7,2,6,5,3,9,7,4,1,8,4,7,8,6,1,5,3,2,9,5,3,1,7,8,6,2,9,4,9,2,4,5,3,1,7,8,6,7,8,6,2,4,9,1,5,3,3,1,7,9,5,8,6,4,2,8,5,2,4,6,3,9,7,1,6,4,9,1,7,2,8,3,5}
hARDpuzzleSOL[38]={6,4,7,8,5,2,9,3,1,3,5,1,9,6,7,4,2,8,2,9,8,1,3,4,5,6,7,7,1,4,5,2,9,3,8,6,9,8,3,6,7,1,2,5,4,5,6,2,3,4,8,1,7,9,1,2,6,7,9,3,8,4,5,8,3,5,4,1,6,7,9,2,4,7,9,2,8,5,6,1,3}
hARDpuzzleSOL[39]={1,9,8,3,7,2,6,4,5,2,4,5,8,1,6,9,7,3,3,6,7,9,4,5,2,8,1,5,7,3,2,6,4,8,1,9,9,8,2,1,3,7,5,6,4,6,1,4,5,8,9,3,2,7,4,3,6,7,9,8,1,5,2,8,5,9,4,2,1,7,3,6,7,2,1,6,5,3,4,9,8}
hARDpuzzleSOL[40]={3,5,2,1,7,8,4,6,9,9,1,6,5,4,3,2,8,7,8,7,4,9,6,2,1,5,3,5,3,1,4,8,9,7,2,6,7,4,9,6,2,5,3,1,8,6,2,8,7,3,1,9,4,5,2,6,5,3,9,4,8,7,1,4,9,7,8,1,6,5,3,2,1,8,3,2,5,7,6,9,4}
hARDpuzzleSOL[41]={2,8,4,3,1,7,9,5,6,3,7,1,6,5,9,4,2,8,9,5,6,8,2,4,7,3,1,7,9,2,5,8,1,3,6,4,4,1,3,7,9,6,5,8,2,8,6,5,2,4,3,1,7,9,6,4,7,1,3,2,8,9,5,5,3,9,4,6,8,2,1,7,1,2,8,9,7,5,6,4,3}
hARDpuzzleSOL[42]={5,8,4,1,3,9,7,2,6,3,2,9,6,7,8,4,5,1,6,7,1,4,2,5,9,3,8,7,1,5,9,8,2,6,4,3,2,9,6,3,1,4,8,7,5,4,3,8,7,5,6,1,9,2,9,4,3,5,6,1,2,8,7,1,5,2,8,4,7,3,6,9,8,6,7,2,9,3,5,1,4}
hARDpuzzleSOL[43]={5,8,6,7,3,4,1,9,2,7,1,3,6,2,9,4,8,5,9,4,2,5,1,8,7,6,3,8,3,4,9,7,5,2,1,6,2,7,9,1,6,3,5,4,8,1,6,5,4,8,2,3,7,9,4,9,1,2,5,6,8,3,7,3,5,7,8,9,1,6,2,4,6,2,8,3,4,7,9,5,1}
hARDpuzzleSOL[44]={3,1,8,4,7,5,6,2,9,9,6,2,3,1,8,7,5,4,5,7,4,9,2,6,3,1,8,4,2,1,5,3,9,8,6,7,7,8,9,6,4,1,2,3,5,6,5,3,2,8,7,4,9,1,2,9,5,8,6,4,1,7,3,1,4,6,7,5,3,9,8,2,8,3,7,1,9,2,5,4,6}
hARDpuzzleSOL[45]={4,1,3,2,6,7,5,8,9,7,6,9,3,8,5,1,2,4,8,5,2,1,4,9,7,6,3,6,3,4,5,7,8,9,1,2,1,7,8,4,9,2,3,5,6,9,2,5,6,3,1,8,4,7,3,8,1,9,2,6,4,7,5,2,4,7,8,5,3,6,9,1,5,9,6,7,1,4,2,3,8}
hARDpuzzleSOL[46]={3,5,7,4,8,1,9,6,2,4,8,9,6,2,3,5,1,7,1,6,2,5,9,7,4,8,3,8,7,4,9,6,2,3,5,1,9,3,5,1,4,8,2,7,6,2,1,6,7,3,5,8,9,4,5,9,1,3,7,4,6,2,8,6,2,3,8,1,9,7,4,5,7,4,8,2,5,6,1,3,9}
hARDpuzzleSOL[47]={9,1,5,2,3,7,8,4,6,6,4,2,9,1,8,5,7,3,7,8,3,5,4,6,1,9,2,1,2,6,8,9,4,7,3,5,3,9,8,6,7,5,2,1,4,4,5,7,1,2,3,9,6,8,5,7,1,4,6,2,3,8,9,2,3,4,7,8,9,6,5,1,8,6,9,3,5,1,4,2,7}
hARDpuzzleSOL[48]={7,9,8,4,3,6,1,2,5,2,5,1,7,9,8,6,4,3,4,6,3,1,5,2,7,8,9,1,2,7,5,6,9,4,3,8,6,8,4,3,2,1,9,5,7,9,3,5,8,7,4,2,1,6,5,4,6,2,8,7,3,9,1,8,7,2,9,1,3,5,6,4,3,1,9,6,4,5,8,7,2}
hARDpuzzleSOL[49]={8,2,4,3,6,7,9,5,1,9,3,1,5,4,2,7,6,8,5,6,7,8,1,9,2,4,3,4,8,2,9,5,3,1,7,6,1,7,3,6,2,8,5,9,4,6,9,5,4,7,1,8,3,2,3,5,8,1,9,6,4,2,7,7,1,9,2,3,4,6,8,5,2,4,6,7,8,5,3,1,9}
hARDpuzzleSOL[50]={8,2,9,4,5,6,7,3,1,3,7,6,2,8,1,5,4,9,5,4,1,9,7,3,2,8,6,6,9,8,5,3,7,1,2,4,2,3,5,6,1,4,9,7,8,4,1,7,8,2,9,3,6,5,9,8,3,1,4,2,6,5,7,1,5,2,7,6,8,4,9,3,7,6,4,3,9,5,8,1,2}
hARDpuzzleSOL[51]={4,3,1,5,8,6,7,2,9,8,5,6,2,7,9,1,4,3,2,9,7,4,1,3,5,6,8,6,7,3,1,5,2,9,8,4,9,8,4,3,6,7,2,1,5,1,2,5,8,9,4,3,7,6,3,6,2,7,4,5,8,9,1,7,1,9,6,3,8,4,5,2,5,4,8,9,2,1,6,3,7}
hARDpuzzleSOL[52]={1,6,5,3,4,7,8,2,9,8,2,3,1,9,6,7,4,5,7,9,4,2,5,8,6,1,3,3,7,6,5,8,4,2,9,1,2,5,9,7,6,1,4,3,8,4,8,1,9,3,2,5,7,6,9,4,8,6,7,3,1,5,2,5,1,7,8,2,9,3,6,4,6,3,2,4,1,5,9,8,7}
hARDpuzzleSOL[53]={7,3,1,4,8,6,9,2,5,4,5,6,7,2,9,3,1,8,8,9,2,5,3,1,4,7,6,9,1,5,3,6,7,8,4,2,6,7,8,1,4,2,5,3,9,3,2,4,8,9,5,7,6,1,5,6,3,2,7,8,1,9,4,1,4,9,6,5,3,2,8,7,2,8,7,9,1,4,6,5,3}
hARDpuzzleSOL[54]={1,4,7,8,2,3,5,6,9,8,2,3,6,5,9,1,7,4,5,6,9,4,1,7,8,2,3,9,5,8,3,6,1,2,4,7,7,1,2,9,4,8,3,5,6,4,3,6,2,7,5,9,1,8,3,7,1,5,9,4,6,8,2,2,9,4,1,8,6,7,3,5,6,8,5,7,3,2,4,9,1}
hARDpuzzleSOL[55]={9,3,5,8,6,1,7,4,2,2,4,6,5,3,7,1,8,9,7,1,8,2,4,9,6,5,3,3,9,4,6,2,5,8,1,7,5,6,2,1,7,8,9,3,4,1,8,7,4,9,3,2,6,5,8,2,3,7,1,4,5,9,6,6,5,9,3,8,2,4,7,1,4,7,1,9,5,6,3,2,8}
hARDpuzzleSOL[56]={1,4,5,6,2,8,3,9,7,3,9,7,4,1,5,2,8,6,2,6,8,3,9,7,1,4,5,8,7,6,2,3,9,5,1,4,4,2,3,5,6,1,8,7,9,9,5,1,8,7,4,6,2,3,7,3,9,1,5,2,4,6,8,5,8,2,7,4,6,9,3,1,6,1,4,9,8,3,7,5,2}
hARDpuzzleSOL[57]={1,4,8,3,9,7,6,5,2,9,5,2,4,8,6,1,7,3,7,6,3,5,1,2,9,8,4,3,2,9,7,6,1,8,4,5,4,7,6,8,3,5,2,1,9,8,1,5,2,4,9,3,6,7,2,8,4,1,7,3,5,9,6,5,9,7,6,2,8,4,3,1,6,3,1,9,5,4,7,2,8}
hARDpuzzleSOL[58]={9,1,3,7,4,6,8,5,2,7,5,6,8,1,2,9,3,4,8,4,2,3,5,9,7,1,6,1,3,9,4,2,7,5,6,8,5,6,8,1,9,3,2,4,7,4,2,7,5,6,8,3,9,1,2,9,5,6,7,1,4,8,3,6,8,4,2,3,5,1,7,9,3,7,1,9,8,4,6,2,5}
hARDpuzzleSOL[59]={1,5,2,6,3,7,9,4,8,3,4,7,8,1,9,2,6,5,8,6,9,5,4,2,1,3,7,9,3,6,7,2,5,4,8,1,7,8,4,3,6,1,5,9,2,5,2,1,9,8,4,3,7,6,2,9,3,1,7,6,8,5,4,4,7,8,2,5,3,6,1,9,6,1,5,4,9,8,7,2,3}
hARDpuzzleSOL[60]={5,8,7,3,9,6,1,4,2,1,4,6,2,7,5,9,3,8,3,2,9,4,8,1,7,5,6,2,6,5,1,3,7,4,8,9,4,9,1,6,5,8,3,2,7,7,3,8,9,4,2,5,6,1,8,1,3,7,6,4,2,9,5,6,7,4,5,2,9,8,1,3,9,5,2,8,1,3,6,7,4}
hARDpuzzleSOL[61]={6,8,9,2,7,4,3,1,5,7,1,3,5,8,9,2,4,6,5,2,4,6,1,3,8,7,9,9,6,7,1,3,2,4,5,8,2,4,1,7,5,8,6,9,3,8,3,5,9,4,6,1,2,7,4,7,8,3,9,1,5,6,2,3,5,2,4,6,7,9,8,1,1,9,6,8,2,5,7,3,4}
hARDpuzzleSOL[62]={2,6,9,1,4,5,3,7,8,3,5,8,2,9,7,1,4,6,4,1,7,3,6,8,5,2,9,8,9,4,5,7,6,2,3,1,1,7,2,4,8,3,6,9,5,5,3,6,9,2,1,7,8,4,6,8,3,7,1,9,4,5,2,9,2,5,6,3,4,8,1,7,7,4,1,8,5,2,9,6,3}
hARDpuzzleSOL[63]={7,6,3,5,9,4,2,1,8,9,2,8,1,3,7,4,5,6,1,5,4,6,8,2,3,7,9,4,9,2,8,7,5,6,3,1,6,1,5,3,2,9,8,4,7,8,3,7,4,1,6,9,2,5,2,4,6,9,5,1,7,8,3,5,8,9,7,4,3,1,6,2,3,7,1,2,6,8,5,9,4}
hARDpuzzleSOL[64]={6,5,2,8,3,7,9,4,1,3,4,9,6,5,1,8,7,2,7,1,8,9,2,4,5,6,3,5,2,4,3,9,6,1,8,7,8,7,3,5,1,2,6,9,4,1,9,6,7,4,8,2,3,5,4,6,7,2,8,5,3,1,9,9,8,5,1,7,3,4,2,6,2,3,1,4,6,9,7,5,8}
hARDpuzzleSOL[65]={8,5,7,3,6,1,9,2,4,1,2,9,4,7,8,3,5,6,4,3,6,2,5,9,7,1,8,5,1,3,9,8,7,4,6,2,6,7,2,1,4,5,8,9,3,9,8,4,6,3,2,5,7,1,7,4,1,5,2,3,6,8,9,2,6,8,7,9,4,1,3,5,3,9,5,8,1,6,2,4,7}
hARDpuzzleSOL[66]={3,8,5,1,9,6,4,2,7,4,7,2,8,5,3,1,6,9,6,9,1,2,4,7,8,5,3,5,1,4,7,2,9,3,8,6,9,2,3,6,8,4,7,1,5,7,6,8,3,1,5,2,9,4,1,4,6,5,7,8,9,3,2,8,5,7,9,3,2,6,4,1,2,3,9,4,6,1,5,7,8}
hARDpuzzleSOL[67]={7,6,8,4,5,9,2,1,3,4,9,2,7,3,1,6,5,8,3,1,5,6,2,8,7,4,9,6,5,9,2,8,4,3,7,1,1,3,4,9,7,6,8,2,5,2,8,7,5,1,3,9,6,4,8,7,3,1,6,5,4,9,2,5,4,6,8,9,2,1,3,7,9,2,1,3,4,7,5,8,6}
hARDpuzzleSOL[68]={1,7,5,4,3,8,2,9,6,6,2,9,7,1,5,8,3,4,8,3,4,6,9,2,7,5,1,4,9,1,8,6,3,5,2,7,7,6,3,5,2,1,9,4,8,5,8,2,9,4,7,6,1,3,3,5,6,1,8,9,4,7,2,9,1,8,2,7,4,3,6,5,2,4,7,3,5,6,1,8,9}
hARDpuzzleSOL[69]={7,5,1,4,8,3,6,2,9,9,8,3,1,6,2,4,7,5,6,2,4,9,7,5,8,1,3,8,3,6,5,2,4,1,9,7,4,7,9,6,3,1,5,8,2,2,1,5,7,9,8,3,6,4,5,4,8,2,1,7,9,3,6,3,6,7,8,5,9,2,4,1,1,9,2,3,4,6,7,5,8}
hARDpuzzleSOL[70]={8,1,4,5,2,9,3,7,6,9,5,7,8,3,6,4,2,1,2,3,6,7,1,4,8,9,5,6,9,2,4,8,7,1,5,3,1,7,5,3,6,2,9,4,8,3,4,8,9,5,1,7,6,2,7,6,3,1,4,5,2,8,9,4,2,1,6,9,8,5,3,7,5,8,9,2,7,3,6,1,4}
hARDpuzzleSOL[71]={3,9,6,8,4,7,2,1,5,8,4,7,1,2,5,9,6,3,5,1,2,9,3,6,8,7,4,9,3,5,4,1,2,6,8,7,2,8,4,6,7,3,1,5,9,7,6,1,5,9,8,4,3,2,4,7,3,2,6,1,5,9,8,6,2,8,3,5,9,7,4,1,1,5,9,7,8,4,3,2,6}
hARDpuzzleSOL[72]={2,9,6,4,8,3,7,1,5,8,3,7,1,5,6,4,9,2,4,1,5,7,9,2,6,8,3,1,6,9,8,3,7,5,2,4,5,4,2,9,6,1,3,7,8,3,7,8,5,2,4,9,6,1,9,5,4,6,1,8,2,3,7,6,2,1,3,7,5,8,4,9,7,8,3,2,4,9,1,5,6}
hARDpuzzleSOL[73]={4,9,8,7,5,1,3,6,2,6,7,3,4,2,9,5,1,8,5,2,1,8,6,3,9,7,4,3,5,7,2,8,6,4,9,1,8,6,9,5,1,4,7,2,3,2,1,4,9,3,7,6,8,5,9,3,2,6,4,8,1,5,7,7,4,5,1,9,2,8,3,6,1,8,6,3,7,5,2,4,9}
hARDpuzzleSOL[74]={1,7,5,2,9,4,8,3,6,8,9,2,6,3,1,4,5,7,3,4,6,8,7,5,1,2,9,6,5,8,4,1,7,3,9,2,9,3,4,5,6,2,7,1,8,2,1,7,3,8,9,6,4,5,5,2,3,7,4,6,9,8,1,7,8,1,9,5,3,2,6,4,4,6,9,1,2,8,5,7,3}
hARDpuzzleSOL[75]={3,8,2,9,5,4,1,6,7,6,4,1,2,3,7,8,5,9,9,7,5,1,8,6,4,2,3,8,1,4,6,9,2,7,3,5,5,9,7,8,4,3,2,1,6,2,6,3,7,1,5,9,8,4,7,5,6,4,2,8,3,9,1,4,2,9,3,6,1,5,7,8,1,3,8,5,7,9,6,4,2}
hARDpuzzleSOL[76]={1,9,3,5,8,4,7,6,2,6,2,7,9,3,1,4,5,8,5,8,4,2,6,7,1,3,9,3,4,2,1,7,9,6,8,5,9,6,8,4,5,3,2,1,7,7,5,1,6,2,8,9,4,3,4,1,5,8,9,2,3,7,6,8,7,9,3,4,6,5,2,1,2,3,6,7,1,5,8,9,4}
hARDpuzzleSOL[77]={7,6,2,1,3,9,4,5,8,4,3,5,7,6,8,2,9,1,8,9,1,5,4,2,3,7,6,3,1,7,9,5,4,8,6,2,5,2,4,8,1,6,9,3,7,6,8,9,2,7,3,5,1,4,1,4,8,6,9,5,7,2,3,9,7,3,4,2,1,6,8,5,2,5,6,3,8,7,1,4,9}
hARDpuzzleSOL[78]={4,6,5,7,2,3,8,9,1,3,1,8,4,5,9,2,6,7,7,9,2,8,1,6,3,5,4,6,5,1,3,7,8,4,2,9,9,7,4,1,6,2,5,3,8,8,2,3,5,9,4,7,1,6,2,3,6,9,8,7,1,4,5,5,8,9,2,4,1,6,7,3,1,4,7,6,3,5,9,8,2}
hARDpuzzleSOL[79]={3,5,8,9,2,4,6,1,7,7,6,2,1,3,8,4,9,5,1,4,9,6,7,5,3,8,2,4,8,7,5,6,2,1,3,9,6,1,3,4,9,7,2,5,8,9,2,5,8,1,3,7,4,6,2,9,4,3,8,6,5,7,1,5,7,1,2,4,9,8,6,3,8,3,6,7,5,1,9,2,4}
hARDpuzzleSOL[80]={8,6,3,4,9,2,5,7,1,2,9,5,1,7,8,4,3,6,7,1,4,5,3,6,9,2,8,4,5,9,6,2,3,8,1,7,6,7,2,8,5,1,3,9,4,3,8,1,9,4,7,6,5,2,1,4,7,3,8,5,2,6,9,5,2,8,7,6,9,1,4,3,9,3,6,2,1,4,7,8,5}
hARDpuzzleSOL[81]={8,5,3,2,6,1,9,7,4,4,9,2,7,5,8,1,6,3,1,6,7,9,3,4,2,8,5,3,2,1,8,7,6,5,4,9,9,8,5,4,2,3,6,1,7,6,7,4,1,9,5,8,3,2,7,3,8,5,1,2,4,9,6,5,4,9,6,8,7,3,2,1,2,1,6,3,4,9,7,5,8}
hARDpuzzleSOL[82]={4,7,3,9,6,1,2,5,8,8,9,1,5,7,2,6,4,3,2,6,5,3,4,8,9,1,7,7,5,8,1,9,4,3,6,2,1,2,6,7,8,3,5,9,4,9,3,4,2,5,6,7,8,1,5,8,2,6,1,7,4,3,9,3,4,9,8,2,5,1,7,6,6,1,7,4,3,9,8,2,5}
hARDpuzzleSOL[83]={1,2,3,7,8,9,5,4,6,7,6,5,4,1,2,8,3,9,8,9,4,3,5,6,2,1,7,9,1,6,8,4,3,7,2,5,2,4,8,9,7,5,1,6,3,5,3,7,6,2,1,4,9,8,6,8,1,2,3,7,9,5,4,3,7,2,5,9,4,6,8,1,4,5,9,1,6,8,3,7,2}
hARDpuzzleSOL[84]={5,1,2,6,7,4,9,3,8,7,3,4,9,5,8,6,1,2,8,6,9,3,2,1,5,4,7,1,2,6,7,3,9,8,5,4,4,5,3,8,1,2,7,6,9,9,7,8,5,4,6,1,2,3,6,4,7,2,9,5,3,8,1,2,9,5,1,8,3,4,7,6,3,8,1,4,6,7,2,9,5}
hARDpuzzleSOL[85]={4,3,9,1,2,5,8,6,7,7,2,1,6,8,9,5,4,3,5,6,8,7,4,3,9,2,1,9,4,6,3,7,1,2,5,8,1,5,2,9,6,8,7,3,4,3,8,7,2,5,4,1,9,6,8,7,4,5,3,2,6,1,9,6,1,5,4,9,7,3,8,2,2,9,3,8,1,6,4,7,5}
hARDpuzzleSOL[86]={8,5,4,7,3,1,2,6,9,7,6,1,2,8,9,4,3,5,3,2,9,5,4,6,7,8,1,9,8,5,4,6,7,3,1,2,4,7,6,3,1,2,5,9,8,1,3,2,8,9,5,6,7,4,2,9,3,1,7,4,8,5,6,6,4,8,9,5,3,1,2,7,5,1,7,6,2,8,9,4,3}
hARDpuzzleSOL[87]={4,6,2,1,7,9,8,3,5,5,9,1,8,2,3,7,4,6,3,7,8,6,4,5,1,9,2,9,2,3,7,5,6,4,8,1,8,1,4,9,3,2,6,5,7,6,5,7,4,8,1,9,2,3,2,8,6,5,1,4,3,7,9,1,4,5,3,9,7,2,6,8,7,3,9,2,6,8,5,1,4}
hARDpuzzleSOL[88]={4,1,6,7,5,3,9,2,8,8,5,7,9,1,2,4,3,6,2,9,3,4,8,6,1,5,7,3,4,5,2,7,8,6,9,1,9,6,8,5,4,1,2,7,3,1,7,2,3,6,9,5,8,4,5,8,4,6,2,7,3,1,9,6,3,1,8,9,5,7,4,2,7,2,9,1,3,4,8,6,5}
hARDpuzzleSOL[89]={2,3,4,5,9,8,7,1,6,1,6,7,4,2,3,8,9,5,8,9,5,1,6,7,2,4,3,9,2,1,8,5,6,3,7,4,4,8,6,3,7,2,9,5,1,5,7,3,9,4,1,6,2,8,3,5,2,7,8,4,1,6,9,6,1,9,2,3,5,4,8,7,7,4,8,6,1,9,5,3,2}
hARDpuzzleSOL[90]={1,2,4,9,3,7,8,6,5,8,6,9,2,4,5,7,3,1,7,3,5,6,8,1,9,2,4,9,1,6,3,5,2,4,8,7,3,4,7,8,1,9,6,5,2,2,5,8,4,7,6,3,1,9,5,8,1,7,6,4,2,9,3,6,7,2,1,9,3,5,4,8,4,9,3,5,2,8,1,7,6}
hARDpuzzleSOL[91]={2,5,9,8,4,1,6,3,7,8,7,1,3,2,6,4,9,5,3,4,6,7,9,5,8,1,2,9,1,5,6,7,8,3,2,4,7,6,3,2,1,4,9,5,8,4,2,8,9,5,3,7,6,1,5,8,2,4,6,9,1,7,3,1,9,4,5,3,7,2,8,6,6,3,7,1,8,2,5,4,9}
hARDpuzzleSOL[92]={4,5,8,6,2,1,9,3,7,7,3,6,9,5,8,4,1,2,1,2,9,4,3,7,8,5,6,9,7,5,8,4,3,6,2,1,2,4,3,1,6,5,7,8,9,8,6,1,7,9,2,5,4,3,5,1,4,3,7,6,2,9,8,3,9,7,2,8,4,1,6,5,6,8,2,5,1,9,3,7,4}
hARDpuzzleSOL[93]={6,2,3,1,8,5,7,4,9,5,4,9,6,7,3,8,2,1,8,1,7,4,9,2,5,6,3,7,6,5,2,4,9,3,1,8,3,9,2,8,5,1,4,7,6,4,8,1,7,3,6,9,5,2,9,7,6,3,1,4,2,8,5,2,5,8,9,6,7,1,3,4,1,3,4,5,2,8,6,9,7}
hARDpuzzleSOL[94]={5,2,4,3,7,1,9,6,8,6,8,3,2,5,9,4,7,1,1,7,9,4,6,8,5,2,3,7,4,5,1,8,2,6,3,9,9,3,1,7,4,6,2,8,5,2,6,8,9,3,5,7,1,4,4,5,6,8,2,3,1,9,7,8,9,2,5,1,7,3,4,6,3,1,7,6,9,4,8,5,2}
hARDpuzzleSOL[95]={6,7,4,3,5,1,8,9,2,2,5,8,6,7,9,4,3,1,3,9,1,4,2,8,7,6,5,4,8,9,7,3,5,2,1,6,5,2,3,8,1,6,9,4,7,7,1,6,9,4,2,3,5,8,1,4,2,5,9,7,6,8,3,9,6,5,2,8,3,1,7,4,8,3,7,1,6,4,5,2,9}
hARDpuzzleSOL[96]={9,5,7,4,3,8,2,6,1,2,1,6,7,5,9,8,4,3,8,3,4,1,6,2,5,7,9,3,8,2,6,1,5,4,9,7,7,9,1,2,8,4,3,5,6,4,6,5,3,9,7,1,2,8,6,2,9,8,4,3,7,1,5,5,7,3,9,2,1,6,8,4,1,4,8,5,7,6,9,3,2}
hARDpuzzleSOL[97]={5,1,7,8,9,4,3,2,6,2,4,6,1,3,5,9,8,7,9,8,3,6,7,2,4,1,5,4,3,1,2,6,9,7,5,8,6,2,9,7,5,8,1,4,3,7,5,8,3,4,1,6,9,2,1,6,5,4,2,7,8,3,9,3,9,4,5,8,6,2,7,1,8,7,2,9,1,3,5,6,4}
hARDpuzzleSOL[98]={2,1,9,7,6,5,4,3,8,4,6,8,3,2,1,7,5,9,3,7,5,8,4,9,2,6,1,9,3,1,5,8,4,6,2,7,8,2,7,6,1,3,9,4,5,5,4,6,2,9,7,8,1,3,7,8,4,1,5,2,3,9,6,6,5,2,9,3,8,1,7,4,1,9,3,4,7,6,5,8,2}
hARDpuzzleSOL[99]={2,9,8,7,1,4,3,5,6,7,1,3,2,5,6,4,8,9,4,6,5,8,9,3,2,7,1,6,8,2,4,7,1,9,3,5,1,4,7,9,3,5,6,2,8,3,5,9,6,8,2,7,1,4,5,7,6,3,4,8,1,9,2,9,2,1,5,6,7,8,4,3,8,3,4,1,2,9,5,6,7}
hARDpuzzleSOL[100]={5,8,6,4,9,1,3,2,7,3,1,9,8,7,2,4,5,6,7,4,2,6,5,3,1,8,9,4,6,7,9,3,8,5,1,2,8,2,3,7,1,5,6,9,4,9,5,1,2,6,4,7,3,8,1,7,8,3,2,6,9,4,5,6,3,4,5,8,9,2,7,1,2,9,5,1,4,7,8,6,3}
hARDpuzzleSOL[101]={5,7,3,4,2,1,8,6,9,6,1,2,9,8,3,4,7,5,8,9,4,5,6,7,2,1,3,4,2,1,3,9,8,7,5,6,7,8,6,2,1,5,3,9,4,9,3,5,6,7,4,1,2,8,2,5,8,7,3,9,6,4,1,1,4,7,8,5,6,9,3,2,3,6,9,1,4,2,5,8,7}
hARDpuzzleSOL[102]={2,7,5,6,3,1,9,8,4,4,9,6,2,8,7,3,1,5,1,8,3,4,5,9,2,7,6,7,6,4,3,9,5,8,2,1,3,2,1,8,6,4,5,9,7,8,5,9,1,7,2,6,4,3,5,1,7,9,2,3,4,6,8,6,3,2,7,4,8,1,5,9,9,4,8,5,1,6,7,3,2}
hARDpuzzleSOL[103]={6,8,7,3,4,5,2,1,9,9,3,4,2,1,8,6,7,5,1,2,5,7,9,6,3,4,8,3,5,6,1,8,4,7,9,2,2,4,9,6,3,7,5,8,1,7,1,8,5,2,9,4,3,6,4,9,2,8,5,3,1,6,7,8,7,1,4,6,2,9,5,3,5,6,3,9,7,1,8,2,4}
hARDpuzzleSOL[104]={1,9,6,7,2,4,8,3,5,3,4,8,6,1,5,2,7,9,2,5,7,9,3,8,1,4,6,8,1,3,5,9,2,7,6,4,5,7,4,8,6,1,3,9,2,6,2,9,4,7,3,5,8,1,4,8,2,3,5,6,9,1,7,9,3,1,2,4,7,6,5,8,7,6,5,1,8,9,4,2,3}
hARDpuzzleSOL[105]={3,6,8,9,7,4,2,5,1,9,7,5,8,1,2,3,6,4,1,2,4,3,6,5,9,7,8,8,5,6,4,9,7,1,3,2,2,3,1,5,8,6,4,9,7,7,4,9,2,3,1,5,8,6,6,8,2,1,5,9,7,4,3,4,9,7,6,2,3,8,1,5,5,1,3,7,4,8,6,2,9}
hARDpuzzleSOL[106]={8,3,4,6,1,9,2,5,7,5,6,7,2,8,4,1,9,3,1,9,2,5,3,7,8,6,4,9,5,3,8,7,2,6,4,1,2,4,1,3,9,6,5,7,8,6,7,8,1,4,5,9,3,2,3,2,6,7,5,8,4,1,9,7,8,9,4,6,1,3,2,5,4,1,5,9,2,3,7,8,6}
hARDpuzzleSOL[107]={7,8,5,9,4,3,2,6,1,4,9,2,1,7,6,8,3,5,1,6,3,8,5,2,9,7,4,3,4,8,7,9,5,6,1,2,2,1,6,4,3,8,7,5,9,5,7,9,2,6,1,3,4,8,9,5,7,3,2,4,1,8,6,8,3,4,6,1,9,5,2,7,6,2,1,5,8,7,4,9,3}
hARDpuzzleSOL[108]={2,3,4,8,5,9,1,7,6,6,8,5,4,1,7,2,3,9,7,9,1,3,6,2,5,8,4,5,7,6,9,2,3,8,4,1,4,2,3,1,8,6,7,9,5,8,1,9,5,7,4,3,6,2,1,4,8,6,3,5,9,2,7,9,5,2,7,4,8,6,1,3,3,6,7,2,9,1,4,5,8}
hARDpuzzleSOL[109]={9,8,6,5,4,3,7,2,1,7,5,3,1,2,8,4,6,9,2,1,4,6,9,7,5,8,3,1,6,2,9,3,5,8,4,7,3,4,8,7,1,2,9,5,6,5,7,9,4,8,6,1,3,2,6,2,5,8,7,1,3,9,4,4,3,7,2,5,9,6,1,8,8,9,1,3,6,4,2,7,5}
hARDpuzzleSOL[110]={4,6,3,2,9,8,1,5,7,2,9,8,7,5,1,4,3,6,5,1,7,6,4,3,2,9,8,6,7,1,5,8,4,3,2,9,9,8,5,3,1,2,6,7,4,3,4,2,9,7,6,5,8,1,8,5,4,1,3,7,9,6,2,7,3,6,4,2,9,8,1,5,1,2,9,8,6,5,7,4,3}
hARDpuzzleSOL[111]={3,2,5,7,4,8,6,1,9,4,6,8,3,1,9,7,5,2,1,9,7,2,5,6,4,3,8,7,4,3,9,8,5,1,2,6,6,8,2,4,7,1,3,9,5,5,1,9,6,3,2,8,4,7,8,7,1,5,9,4,2,6,3,2,5,4,8,6,3,9,7,1,9,3,6,1,2,7,5,8,4}
hARDpuzzleSOL[112]={6,3,8,4,1,7,2,5,9,4,9,1,2,5,8,7,6,3,7,2,5,3,6,9,8,4,1,5,7,2,6,8,1,9,3,4,1,6,3,9,4,2,5,8,7,9,8,4,5,7,3,6,1,2,3,1,6,7,9,5,4,2,8,2,4,7,8,3,6,1,9,5,8,5,9,1,2,4,3,7,6}
hARDpuzzleSOL[113]={5,7,3,2,9,8,4,1,6,2,1,9,6,4,7,5,8,3,4,8,6,5,1,3,9,7,2,1,5,7,9,3,6,8,2,4,8,3,2,4,7,5,6,9,1,9,6,4,1,8,2,7,3,5,3,4,5,8,2,9,1,6,7,6,2,8,7,5,1,3,4,9,7,9,1,3,6,4,2,5,8}
hARDpuzzleSOL[114]={7,9,4,3,8,2,1,5,6,1,8,5,9,6,4,7,3,2,6,2,3,1,7,5,9,8,4,4,1,9,5,3,7,6,2,8,3,6,2,4,1,8,5,7,9,8,5,7,6,2,9,4,1,3,9,7,6,8,5,3,2,4,1,2,3,1,7,4,6,8,9,5,5,4,8,2,9,1,3,6,7}
hARDpuzzleSOL[115]={8,1,3,7,2,4,9,6,5,4,6,9,5,8,1,2,7,3,2,7,5,3,9,6,1,4,8,6,5,8,4,3,2,7,9,1,7,9,2,6,1,8,3,5,4,1,3,4,9,5,7,8,2,6,9,8,1,2,4,5,6,3,7,3,4,7,8,6,9,5,1,2,5,2,6,1,7,3,4,8,9}
hARDpuzzleSOL[116]={1,4,2,8,7,3,9,6,5,7,5,3,4,6,9,1,2,8,6,8,9,1,5,2,4,7,3,5,2,7,9,4,8,6,3,1,4,3,1,6,2,7,5,8,9,8,9,6,5,3,1,2,4,7,3,7,5,2,1,4,8,9,6,9,1,4,3,8,6,7,5,2,2,6,8,7,9,5,3,1,4}
hARDpuzzleSOL[117]={4,9,5,2,6,3,7,8,1,2,7,3,9,8,1,4,5,6,1,6,8,5,7,4,9,2,3,6,1,9,7,4,5,2,3,8,7,3,4,8,2,6,1,9,5,8,5,2,3,1,9,6,4,7,9,2,7,1,5,8,3,6,4,5,4,1,6,3,2,8,7,9,3,8,6,4,9,7,5,1,2}
hARDpuzzleSOL[118]={8,1,6,9,7,5,2,4,3,4,3,2,6,8,1,7,5,9,7,5,9,3,4,2,6,8,1,9,2,1,5,6,4,3,7,8,5,4,7,8,3,9,1,6,2,3,6,8,2,1,7,5,9,4,1,7,5,4,2,8,9,3,6,6,9,4,1,5,3,8,2,7,2,8,3,7,9,6,4,1,5}
hARDpuzzleSOL[119]={8,7,2,9,4,6,1,3,5,5,1,4,8,3,7,2,9,6,3,9,6,2,5,1,4,8,7,9,8,7,1,2,5,6,4,3,6,2,5,3,9,4,7,1,8,1,4,3,6,7,8,5,2,9,7,5,1,4,8,9,3,6,2,4,3,8,7,6,2,9,5,1,2,6,9,5,1,3,8,7,4}
hARDpuzzleSOL[120]={6,2,9,7,4,1,5,3,8,5,8,4,2,3,9,6,1,7,1,7,3,5,6,8,4,2,9,2,3,7,8,9,6,1,5,4,4,5,1,3,2,7,9,8,6,9,6,8,4,1,5,2,7,3,3,1,5,9,7,4,8,6,2,8,9,2,6,5,3,7,4,1,7,4,6,1,8,2,3,9,5}
hARDpuzzleSOL[121]={8,2,4,5,7,1,3,6,9,6,3,1,4,9,2,7,8,5,5,9,7,3,8,6,4,2,1,1,8,2,7,4,5,6,9,3,7,6,9,8,2,3,1,5,4,4,5,3,1,6,9,8,7,2,9,4,6,2,1,8,5,3,7,3,1,8,9,5,7,2,4,6,2,7,5,6,3,4,9,1,8}
hARDpuzzleSOL[122]={2,3,7,1,4,9,6,8,5,8,1,5,7,6,2,4,3,9,4,6,9,8,3,5,1,2,7,1,8,4,9,2,6,5,7,3,9,5,2,4,7,3,8,1,6,3,7,6,5,8,1,2,9,4,6,9,8,3,1,4,7,5,2,5,2,1,6,9,7,3,4,8,7,4,3,2,5,8,9,6,1}
hARDpuzzleSOL[123]={6,7,9,4,1,8,5,3,2,2,3,4,6,5,9,7,1,8,1,8,5,7,3,2,4,6,9,3,9,2,1,6,5,8,4,7,7,5,1,3,8,4,2,9,6,8,4,6,2,9,7,1,5,3,5,2,3,8,4,6,9,7,1,9,1,7,5,2,3,6,8,4,4,6,8,9,7,1,3,2,5}
hARDpuzzleSOL[124]={6,8,9,5,7,1,4,3,2,4,2,1,3,6,8,7,9,5,5,3,7,9,4,2,6,1,8,2,5,6,4,1,3,8,7,9,7,1,8,6,9,5,2,4,3,9,4,3,2,8,7,1,5,6,8,9,5,1,2,4,3,6,7,3,7,4,8,5,6,9,2,1,1,6,2,7,3,9,5,8,4}
hARDpuzzleSOL[125]={9,8,6,4,1,3,2,5,7,2,7,4,5,9,8,3,6,1,1,3,5,2,6,7,9,4,8,6,1,9,7,5,4,8,3,2,7,5,2,3,8,6,1,9,4,8,4,3,1,2,9,5,7,6,5,9,7,8,4,1,6,2,3,3,2,1,6,7,5,4,8,9,4,6,8,9,3,2,7,1,5}
hARDpuzzleSOL[126]={5,7,8,6,1,3,2,4,9,4,2,6,8,9,5,1,3,7,9,1,3,4,7,2,8,6,5,8,9,5,3,4,1,7,2,6,1,3,7,2,6,9,5,8,4,2,6,4,5,8,7,9,1,3,7,4,2,1,5,6,3,9,8,6,5,1,9,3,8,4,7,2,3,8,9,7,2,4,6,5,1}
hARDpuzzleSOL[127]={3,7,1,2,8,9,5,6,4,9,5,2,3,4,6,8,1,7,8,6,4,5,7,1,2,3,9,7,4,9,8,1,3,6,2,5,1,2,3,6,5,4,9,7,8,5,8,6,7,9,2,1,4,3,6,1,8,4,3,5,7,9,2,2,3,7,9,6,8,4,5,1,4,9,5,1,2,7,3,8,6}
hARDpuzzleSOL[128]={3,1,9,2,4,7,5,6,8,2,4,5,3,8,6,7,1,9,8,7,6,1,9,5,3,2,4,5,8,2,6,3,4,9,7,1,4,6,7,5,1,9,8,3,2,9,3,1,8,7,2,4,5,6,6,2,4,9,5,3,1,8,7,1,9,3,7,6,8,2,4,5,7,5,8,4,2,1,6,9,3}
hARDpuzzleSOL[129]={7,2,1,9,6,8,3,4,5,6,3,5,7,1,4,9,8,2,8,4,9,5,3,2,1,7,6,2,1,7,6,4,3,5,9,8,4,9,6,8,5,1,2,3,7,3,5,8,2,9,7,6,1,4,1,8,2,3,7,5,4,6,9,5,6,3,4,8,9,7,2,1,9,7,4,1,2,6,8,5,3}
hARDpuzzleSOL[130]={1,2,3,4,7,8,6,9,5,7,9,8,6,5,1,3,2,4,5,4,6,9,3,2,8,1,7,6,8,9,7,2,4,1,5,3,3,1,2,8,6,5,4,7,9,4,5,7,1,9,3,2,6,8,8,6,1,5,4,9,7,3,2,2,7,5,3,8,6,9,4,1,9,3,4,2,1,7,5,8,6}
hARDpuzzleSOL[131]={2,3,4,1,8,6,5,9,7,5,7,6,4,9,2,1,8,3,1,8,9,3,5,7,4,2,6,6,1,7,5,2,9,3,4,8,3,9,5,6,4,8,2,7,1,8,4,2,7,1,3,9,6,5,4,2,1,8,6,5,7,3,9,7,5,8,9,3,4,6,1,2,9,6,3,2,7,1,8,5,4}
hARDpuzzleSOL[132]={5,9,2,7,3,1,8,4,6,7,3,6,8,2,4,9,5,1,8,1,4,6,9,5,7,3,2,6,5,3,4,7,9,2,1,8,1,4,9,2,5,8,3,6,7,2,8,7,3,1,6,5,9,4,3,6,1,5,8,2,4,7,9,4,2,5,9,6,7,1,8,3,9,7,8,1,4,3,6,2,5}
hARDpuzzleSOL[133]={5,8,1,2,7,6,4,3,9,3,7,9,4,1,5,8,2,6,4,2,6,3,8,9,7,1,5,2,5,3,6,4,7,1,9,8,1,9,8,5,2,3,6,7,4,7,6,4,8,9,1,3,5,2,8,3,2,1,5,4,9,6,7,9,1,5,7,6,8,2,4,3,6,4,7,9,3,2,5,8,1}
hARDpuzzleSOL[134]={4,9,3,6,2,8,7,1,5,6,1,8,5,3,7,4,2,9,7,5,2,4,9,1,3,8,6,2,4,6,1,8,5,9,3,7,1,8,7,9,4,3,5,6,2,9,3,5,7,6,2,8,4,1,8,7,4,2,5,6,1,9,3,5,2,9,3,1,4,6,7,8,3,6,1,8,7,9,2,5,4}
hARDpuzzleSOL[135]={3,6,8,7,2,1,9,5,4,4,5,1,9,6,8,2,7,3,7,2,9,5,4,3,1,8,6,2,3,5,6,8,7,4,9,1,6,8,7,4,1,9,5,3,2,1,9,4,2,3,5,7,6,8,5,1,6,3,9,4,8,2,7,8,7,2,1,5,6,3,4,9,9,4,3,8,7,2,6,1,5}
hARDpuzzleSOL[136]={9,4,8,3,5,7,6,1,2,5,7,3,2,1,6,4,8,9,2,6,1,4,8,9,3,7,5,8,5,4,1,9,3,7,2,6,6,3,9,8,7,2,1,5,4,7,1,2,6,4,5,8,9,3,3,8,7,9,2,4,5,6,1,1,2,6,5,3,8,9,4,7,4,9,5,7,6,1,2,3,8}
hARDpuzzleSOL[137]={8,9,2,7,5,4,1,3,6,7,3,1,6,9,8,5,4,2,6,4,5,2,1,3,8,7,9,2,7,4,8,3,9,6,5,1,5,8,3,1,6,7,2,9,4,9,1,6,5,4,2,3,8,7,4,5,7,3,2,6,9,1,8,1,2,8,9,7,5,4,6,3,3,6,9,4,8,1,7,2,5}
hARDpuzzleSOL[138]={8,3,5,2,4,6,1,9,7,7,6,4,3,1,9,2,8,5,1,2,9,8,5,7,6,3,4,6,8,1,9,7,2,5,4,3,2,9,7,5,3,4,8,1,6,4,5,3,1,6,8,7,2,9,3,4,8,6,2,5,9,7,1,9,7,6,4,8,1,3,5,2,5,1,2,7,9,3,4,6,8}
hARDpuzzleSOL[139]={7,8,2,6,3,9,5,4,1,4,1,5,2,8,7,6,3,9,6,3,9,4,5,1,2,8,7,3,9,8,1,7,5,4,2,6,2,4,1,9,6,8,7,5,3,5,7,6,3,4,2,1,9,8,1,5,3,8,2,6,9,7,4,8,6,7,5,9,4,3,1,2,9,2,4,7,1,3,8,6,5}
hARDpuzzleSOL[140]={3,1,4,6,7,9,8,2,5,5,8,9,3,2,1,4,6,7,6,7,2,4,8,5,3,9,1,8,2,5,7,4,6,1,3,9,7,9,6,2,1,3,5,8,4,4,3,1,9,5,8,2,7,6,2,4,8,1,6,7,9,5,3,9,5,7,8,3,4,6,1,2,1,6,3,5,9,2,7,4,8}
hARDpuzzleSOL[141]={4,1,8,7,2,5,3,9,6,3,7,5,8,6,9,2,4,1,6,9,2,4,3,1,5,7,8,5,8,7,2,4,6,1,3,9,9,6,3,5,1,7,8,2,4,2,4,1,9,8,3,6,5,7,8,3,4,1,7,2,9,6,5,1,2,9,6,5,4,7,8,3,7,5,6,3,9,8,4,1,2}
hARDpuzzleSOL[142]={4,6,2,7,9,8,3,1,5,1,9,7,4,5,3,6,8,2,8,5,3,1,2,6,9,7,4,9,2,1,6,7,4,8,5,3,5,7,4,3,8,9,1,2,6,6,3,8,5,1,2,7,4,9,2,4,9,8,6,1,5,3,7,7,8,6,2,3,5,4,9,1,3,1,5,9,4,7,2,6,8}
hARDpuzzleSOL[143]={6,9,7,5,8,2,3,1,4,3,1,8,7,4,6,9,2,5,5,2,4,1,9,3,8,6,7,9,7,5,6,3,4,2,8,1,1,4,6,8,2,5,7,9,3,2,8,3,9,7,1,4,5,6,7,5,2,3,6,8,1,4,9,8,3,1,4,5,9,6,7,2,4,6,9,2,1,7,5,3,8}
hARDpuzzleSOL[144]={6,8,4,1,5,3,2,9,7,9,2,1,7,6,8,3,4,5,3,5,7,9,4,2,8,1,6,2,1,3,8,9,6,5,7,4,5,7,9,2,1,4,6,8,3,8,4,6,3,7,5,1,2,9,4,9,2,6,3,1,7,5,8,7,6,8,5,2,9,4,3,1,1,3,5,4,8,7,9,6,2}
hARDpuzzlePROB[1]={0,0,1,2,4,0,3,9,0,3,0,0,1,5,0,8,7,2,2,8,9,3,0,7,5,4,0,0,1,4,6,7,5,0,0,3,5,6,3,8,9,0,0,1,7,0,0,0,4,0,3,6,5,8,1,0,5,7,8,6,2,3,4,0,2,7,9,0,0,0,8,0,4,3,8,0,2,1,0,6,9}
hARDpuzzlePROB[2]={9,2,4,8,1,5,3,0,7,3,1,6,0,7,0,0,5,0,0,7,0,0,9,3,4,2,0,1,0,5,3,0,8,0,0,6,2,6,7,0,4,0,5,8,3,4,8,0,7,0,6,1,0,2,8,0,1,5,6,0,2,3,0,0,3,9,2,0,4,6,0,0,6,5,2,1,3,0,8,7,4}
hARDpuzzlePROB[3]={5,7,1,0,4,0,6,2,0,8,6,0,2,0,5,9,1,4,2,9,0,1,0,6,0,0,7,0,4,2,7,1,8,3,6,5,0,5,0,9,6,4,2,7,0,0,1,6,3,0,0,0,9,0,6,3,9,5,8,0,7,4,2,1,0,0,4,9,7,0,0,6,4,8,7,0,2,0,1,5,0}
hARDpuzzlePROB[4]={0,0,2,5,9,0,1,6,8,0,0,6,1,2,3,0,0,7,5,7,1,4,0,6,0,0,9,0,0,8,7,5,4,6,0,3,3,9,0,0,0,8,7,4,1,6,4,7,9,0,1,2,8,0,7,0,9,8,1,0,5,3,4,0,1,0,6,4,0,9,7,2,2,0,4,3,7,0,8,0,6}
hARDpuzzlePROB[5]={0,9,4,0,0,0,0,8,0,7,0,0,6,2,1,0,0,9,0,2,0,9,8,0,7,1,5,8,0,9,0,1,0,4,6,3,0,1,2,4,0,9,0,5,7,4,3,5,7,6,8,0,9,2,2,6,0,0,7,5,9,3,4,9,8,3,2,4,6,5,0,1,5,0,7,1,0,3,6,0,8}
hARDpuzzlePROB[6]={0,1,2,8,6,4,0,0,5,0,0,4,1,5,3,7,8,2,8,0,3,9,2,0,6,4,1,0,8,0,5,7,2,0,3,6,0,2,9,6,4,0,0,5,7,5,0,6,3,1,0,8,0,4,0,0,5,2,0,1,0,0,3,0,3,7,0,9,6,5,1,8,0,4,8,7,0,5,2,6,0}
hARDpuzzlePROB[7]={9,8,6,0,1,5,2,0,0,3,7,0,0,8,4,6,1,5,0,0,0,2,6,3,7,8,9,7,6,3,8,0,9,0,4,0,0,5,4,1,3,0,9,6,0,1,0,8,0,0,6,3,2,0,4,2,0,6,9,0,0,5,0,8,0,9,5,4,2,1,0,6,6,1,5,3,7,0,4,0,2}
hARDpuzzlePROB[8]={4,0,2,6,1,0,5,8,7,0,0,3,8,5,2,9,0,1,0,1,5,9,7,4,3,0,2,9,5,0,3,2,7,0,0,6,0,2,8,5,6,0,7,3,0,6,3,7,1,4,0,2,9,0,5,4,9,0,8,1,6,7,0,0,0,1,7,3,6,0,0,0,3,7,0,0,0,5,0,2,8}
hARDpuzzlePROB[9]={9,0,2,5,4,7,6,3,0,0,1,4,2,8,0,7,0,5,0,0,7,6,1,9,2,8,4,3,7,0,0,2,5,8,4,9,0,4,5,9,7,8,0,0,3,1,9,0,0,3,6,5,7,0,7,6,0,0,9,0,0,5,0,8,2,3,7,0,4,0,1,0,4,0,0,8,0,1,3,2,7}
hARDpuzzlePROB[10]={0,4,0,2,8,5,0,9,7,0,0,0,4,0,6,1,5,2,2,0,5,9,7,0,8,6,0,4,7,3,8,0,9,5,0,0,0,5,8,0,1,2,4,3,0,1,0,2,5,4,3,9,7,0,3,0,7,1,9,0,6,4,0,8,0,4,0,5,7,2,1,3,5,0,6,3,0,4,0,8,9}
hARDpuzzlePROB[11]={3,0,9,0,0,0,1,7,8,7,0,6,8,4,1,0,0,5,8,5,0,3,9,7,6,2,4,2,0,0,0,5,6,7,4,9,1,0,5,0,7,0,3,8,0,9,7,4,0,8,0,0,6,0,4,1,7,5,3,2,8,9,0,0,8,0,4,1,0,2,5,7,0,9,2,7,6,0,4,0,3}
hARDpuzzlePROB[12]={4,9,0,0,3,0,5,8,0,6,3,0,7,8,0,0,2,9,5,8,0,1,0,0,7,6,0,0,2,0,9,0,4,0,3,7,0,7,9,8,5,6,2,1,0,1,6,4,0,0,3,0,9,5,7,4,8,3,0,1,9,0,2,0,1,6,5,2,7,3,4,8,0,5,3,4,9,8,0,0,6}
hARDpuzzlePROB[13]={2,1,0,0,0,0,0,0,4,3,9,0,4,2,8,0,1,5,0,4,0,1,5,9,2,3,7,0,0,4,5,6,1,9,2,0,5,2,3,0,9,7,0,4,0,1,6,9,3,4,2,7,5,0,9,0,6,0,1,0,3,0,0,4,0,2,9,8,6,5,0,1,7,8,0,0,3,5,4,6,9}
hARDpuzzlePROB[14]={4,5,1,7,9,2,3,8,0,6,0,2,5,8,0,4,1,0,0,8,7,0,6,0,0,9,2,0,4,9,3,0,0,0,5,0,8,7,5,2,4,0,1,6,3,0,3,0,8,1,5,7,0,9,0,2,8,0,5,7,6,0,4,7,0,4,6,3,0,9,0,5,5,0,3,9,2,0,8,7,0}
hARDpuzzlePROB[15]={0,1,0,0,5,0,8,3,2,0,0,3,1,2,6,5,7,0,9,0,2,7,0,3,0,4,0,5,6,1,3,7,9,2,8,4,0,7,0,8,1,5,6,9,3,3,8,9,4,0,2,0,0,0,0,0,0,0,0,1,3,6,7,0,9,5,6,3,0,0,0,8,7,3,6,2,4,8,9,5,1}
hARDpuzzlePROB[16]={0,8,0,4,6,0,7,5,9,5,2,4,1,9,0,6,0,3,7,0,0,8,5,3,4,0,2,0,3,5,2,1,0,9,0,0,6,1,0,0,7,0,5,3,4,9,0,8,0,0,4,1,2,6,3,4,1,7,2,9,8,0,0,2,9,7,6,8,0,0,4,1,0,0,0,3,4,0,2,9,7}
hARDpuzzlePROB[17]={0,0,3,7,5,0,0,1,6,0,0,0,9,0,6,4,2,8,9,0,6,4,2,1,3,7,5,7,3,0,1,0,0,5,4,2,4,9,5,2,8,0,6,0,0,6,2,0,0,4,5,7,8,9,0,1,0,6,0,3,0,5,4,5,7,0,8,9,2,1,6,3,3,0,2,0,0,4,8,9,0}
hARDpuzzlePROB[18]={2,6,3,0,5,9,4,0,0,0,0,8,0,1,4,7,6,2,7,0,1,8,2,6,3,9,0,0,3,0,1,6,0,2,0,4,4,2,5,0,3,7,8,1,0,1,8,6,2,0,0,0,0,3,0,7,4,5,8,1,6,2,9,6,0,9,4,7,2,0,0,8,8,0,0,0,9,3,1,4,0}
hARDpuzzlePROB[19]={6,1,0,7,0,0,5,2,3,3,2,5,1,0,0,0,8,9,7,8,9,2,5,3,1,0,4,9,4,3,5,0,1,8,0,2,0,0,2,0,9,7,3,4,1,8,0,0,0,0,4,0,5,0,1,5,6,0,7,2,0,0,0,2,9,7,0,3,8,6,1,5,4,0,8,0,1,0,2,9,7}
hARDpuzzlePROB[20]={2,5,0,0,8,0,1,4,0,0,3,8,1,7,4,9,0,5,4,0,7,9,5,2,0,3,6,9,0,4,0,0,0,0,0,0,5,6,2,3,1,7,4,9,8,1,7,0,4,0,8,0,5,2,0,9,5,8,4,6,2,1,0,3,4,6,0,2,0,0,8,0,0,0,1,5,3,9,7,6,4}
hARDpuzzlePROB[21]={1,0,7,2,5,0,6,8,4,0,9,8,3,0,6,0,1,0,6,4,2,8,0,7,9,0,5,4,1,5,0,3,8,7,2,6,8,0,0,0,6,2,3,5,1,3,0,6,0,7,1,0,0,0,0,5,4,0,9,0,0,6,8,7,6,3,1,8,4,5,0,2,9,0,0,6,2,0,0,7,3}
hARDpuzzlePROB[22]={5,8,7,3,0,0,0,6,0,2,1,0,0,7,5,3,0,4,4,9,3,6,2,0,0,5,0,9,0,8,7,6,2,4,1,5,6,5,2,0,3,1,7,0,8,0,0,0,5,8,9,2,0,6,0,4,0,2,9,0,0,7,1,7,2,0,1,5,6,0,0,3,3,0,1,8,4,0,5,2,9}
hARDpuzzlePROB[23]={8,6,2,3,7,9,0,5,0,3,1,0,6,2,5,9,8,0,5,0,7,1,0,4,2,6,3,0,0,0,9,1,8,7,0,0,9,3,8,0,0,2,4,0,0,6,7,1,0,5,3,0,0,0,0,0,3,5,9,1,6,4,2,0,5,9,2,4,6,3,7,8,2,4,6,8,0,0,0,0,1}
hARDpuzzlePROB[24]={6,0,4,0,7,2,3,0,1,0,0,0,8,9,6,0,7,4,0,9,5,1,4,0,0,0,0,9,5,2,4,0,0,6,1,0,8,3,7,6,0,5,9,0,2,1,4,0,3,2,9,7,0,8,4,6,0,7,3,1,2,8,5,3,7,1,0,0,8,0,6,9,5,2,8,9,0,4,0,3,0}
hARDpuzzlePROB[25]={3,0,5,0,6,2,4,8,0,0,4,0,3,9,5,0,0,7,6,2,9,0,0,7,0,5,3,0,0,0,7,1,0,8,9,4,1,9,7,0,0,4,2,0,0,0,6,8,2,3,9,5,7,1,9,0,2,0,7,1,3,6,0,7,3,4,6,5,8,9,1,2,5,1,0,9,0,0,7,0,8}
hARDpuzzlePROB[26]={0,7,1,3,5,0,6,8,4,6,3,0,8,0,4,0,9,7,4,0,9,7,0,0,5,2,0,9,0,7,0,1,3,0,0,8,5,4,8,6,9,7,3,1,2,0,0,2,4,8,5,9,7,0,1,2,0,0,7,6,8,3,0,8,9,0,1,4,0,7,0,5,0,5,6,0,3,0,2,4,0}
hARDpuzzlePROB[27]={7,1,9,8,6,5,0,0,3,6,5,0,0,3,4,7,0,9,4,0,2,0,0,0,8,6,5,9,2,3,6,0,8,0,7,1,0,0,7,9,5,0,0,4,0,0,4,6,1,7,3,9,8,2,3,7,0,4,2,0,1,0,0,0,9,0,0,8,1,6,3,7,8,6,0,3,9,7,0,5,4}
hARDpuzzlePROB[28]={7,1,9,0,0,0,6,8,0,8,0,2,5,7,0,3,9,1,6,5,3,1,9,8,0,2,4,4,7,5,2,6,0,9,0,0,3,8,0,9,4,7,5,6,0,2,9,0,0,0,3,0,4,7,0,0,8,0,1,9,0,7,0,1,0,7,6,8,4,2,5,9,9,0,4,0,2,5,0,0,3}
hARDpuzzlePROB[29]={8,6,2,9,0,5,7,0,3,3,0,4,6,7,8,2,9,1,9,0,1,2,4,0,5,6,0,5,1,9,0,0,0,0,0,4,0,8,7,3,5,4,0,0,9,6,0,0,0,9,1,0,5,2,7,2,5,1,8,9,4,3,6,4,9,8,0,3,6,1,2,0,0,0,0,0,0,7,0,8,5}
hARDpuzzlePROB[30]={0,3,4,0,1,8,5,0,2,8,7,5,0,6,0,0,0,9,0,1,0,4,0,9,7,8,3,0,0,6,0,2,0,0,9,1,7,2,9,0,3,4,0,5,0,1,5,3,0,8,6,0,4,7,5,0,1,3,9,2,6,0,8,2,6,7,8,4,1,9,0,5,3,9,0,0,7,5,1,0,4}
hARDpuzzlePROB[31]={0,3,4,0,7,1,8,6,0,0,6,2,3,9,5,7,0,0,0,1,9,8,4,0,3,0,2,0,9,3,4,0,2,5,7,0,6,8,0,1,3,7,0,0,4,2,4,7,5,6,9,1,0,3,0,5,6,0,0,0,4,1,0,4,7,8,6,0,3,9,2,0,9,0,1,7,5,4,0,3,0}
hARDpuzzlePROB[32]={4,0,6,0,7,0,8,1,0,7,8,5,0,1,4,2,3,9,2,9,0,8,3,5,0,0,0,9,7,0,0,2,3,6,8,1,5,0,3,1,9,8,7,4,0,8,1,2,4,0,7,9,0,0,0,4,0,2,8,1,0,0,6,6,5,7,3,0,9,0,2,8,0,0,8,7,5,0,3,9,0}
hARDpuzzlePROB[33]={9,0,0,3,0,0,5,7,8,0,0,1,5,0,4,0,6,3,3,8,5,6,9,7,0,2,1,8,4,2,9,0,3,6,0,5,6,1,0,2,4,5,0,3,7,0,3,7,0,0,1,2,9,4,0,0,8,1,2,6,3,0,9,0,5,6,0,0,0,0,8,0,2,9,3,7,5,0,1,4,6}
hARDpuzzlePROB[34]={0,8,0,4,9,3,7,0,0,9,4,0,2,7,0,0,8,0,0,1,2,0,6,5,9,4,0,0,9,4,0,1,7,6,5,0,3,6,7,5,0,0,1,0,8,2,5,1,9,8,0,3,7,4,4,3,5,0,2,9,0,6,0,6,0,0,7,0,8,4,1,5,1,7,8,6,5,0,2,0,9}
hARDpuzzlePROB[35]={1,6,8,2,0,3,0,5,0,9,4,3,0,0,5,0,6,2,5,0,7,0,6,4,8,3,1,7,3,1,0,2,9,0,4,8,2,5,0,3,0,8,1,0,6,0,0,6,7,5,0,9,0,0,0,9,0,5,1,6,2,8,7,8,0,2,4,3,7,6,0,5,6,7,0,0,9,0,3,0,4}
hARDpuzzlePROB[36]={0,0,2,0,3,0,9,7,4,9,3,4,7,5,0,1,0,8,6,0,0,4,9,8,2,0,3,7,9,0,0,0,4,3,0,6,0,1,0,8,2,6,0,0,7,4,2,6,3,0,9,0,8,1,1,5,3,0,6,7,0,4,9,0,6,9,1,4,5,0,3,2,0,4,7,0,8,0,6,1,5}
hARDpuzzlePROB[37]={1,9,0,8,0,4,5,6,7,2,6,5,3,9,7,0,1,0,4,0,8,0,1,5,3,2,0,5,3,1,7,8,0,0,9,4,0,2,4,5,3,1,0,8,0,7,8,6,2,0,0,1,0,3,3,0,7,0,5,0,6,4,2,8,0,0,0,6,3,9,0,1,6,4,0,1,7,0,0,0,5}
hARDpuzzlePROB[38]={0,0,7,8,5,0,0,3,0,3,5,0,9,6,7,0,2,8,2,9,0,1,0,4,5,6,7,7,1,0,5,2,9,0,0,6,0,0,3,0,7,0,0,5,4,5,6,2,0,4,8,1,0,9,0,0,6,7,9,0,8,0,0,8,3,5,4,1,6,7,9,2,4,7,9,2,0,5,6,1,0}
hARDpuzzlePROB[39]={1,0,8,0,7,2,6,0,0,0,4,5,8,0,0,9,7,3,3,6,7,9,0,5,2,0,1,0,7,3,0,6,4,8,1,9,9,8,0,0,3,7,5,6,0,6,1,4,5,8,0,0,2,7,0,0,0,7,9,8,0,5,0,8,5,0,0,2,1,7,3,0,7,2,1,6,0,3,4,9,0}
hARDpuzzlePROB[40]={3,5,2,0,0,8,0,6,9,9,1,6,0,0,0,2,8,7,8,0,4,9,0,2,0,5,3,5,0,0,4,0,0,7,0,6,7,0,9,6,2,5,3,1,0,0,2,8,0,3,1,9,0,0,0,6,0,3,9,4,8,7,1,0,9,7,0,1,6,5,3,2,1,8,3,2,5,0,0,9,4}
hARDpuzzlePROB[41]={2,0,4,0,1,7,0,0,6,3,0,0,6,5,9,4,2,8,9,5,6,8,0,0,7,3,1,7,9,2,5,0,1,0,6,0,4,1,3,7,0,6,0,8,0,8,6,0,2,4,3,1,7,9,6,4,7,0,3,0,8,9,0,5,0,9,0,6,0,0,1,0,1,0,8,0,7,0,6,4,3}
hARDpuzzlePROB[42]={5,8,4,1,3,9,0,2,0,3,0,9,0,7,0,0,5,1,6,7,0,4,0,5,9,3,8,0,1,5,9,0,2,0,0,0,2,9,6,0,0,4,8,7,5,0,3,8,7,0,0,1,9,2,9,0,0,0,6,1,0,0,7,1,5,2,8,4,0,3,6,9,8,6,7,2,0,3,5,0,4}
hARDpuzzlePROB[43]={0,8,6,0,0,4,0,9,2,7,1,3,6,0,9,0,8,0,0,4,2,5,1,0,0,6,0,8,3,0,0,7,5,2,1,6,2,7,0,0,6,0,5,4,8,1,0,5,4,8,0,3,0,9,4,9,0,2,0,6,8,3,7,0,5,0,8,9,1,6,0,4,6,2,8,3,0,7,0,5,1}
hARDpuzzlePROB[44]={0,0,8,4,7,5,6,2,9,9,0,2,3,1,0,0,5,4,0,7,0,9,2,0,3,1,8,4,2,1,0,0,0,8,6,7,7,0,0,6,4,1,0,0,5,0,5,3,2,8,7,0,9,0,2,9,5,8,6,4,1,0,0,0,4,0,7,5,0,0,8,2,0,3,7,1,9,0,5,4,6}
hARDpuzzlePROB[45]={4,1,3,0,6,0,5,8,0,0,6,9,3,8,0,1,2,4,0,0,2,1,4,9,7,6,0,0,0,4,5,7,8,9,0,0,1,7,8,0,0,2,0,0,6,9,0,5,6,0,1,8,4,7,3,8,1,9,2,0,4,0,5,2,0,7,8,0,3,6,0,0,5,0,6,7,1,0,2,3,8}
hARDpuzzlePROB[46]={0,5,0,4,8,0,0,6,2,4,8,0,6,2,3,0,1,0,0,6,0,0,0,7,4,8,3,8,0,0,9,6,2,3,5,1,0,3,5,0,4,8,0,7,6,2,1,6,7,3,5,0,9,0,0,0,1,3,0,0,6,2,8,6,2,3,8,1,0,7,4,5,7,4,8,2,5,0,0,0,9}
hARDpuzzlePROB[47]={9,1,0,2,3,0,8,4,6,0,4,0,9,0,8,0,7,3,7,8,0,5,0,6,0,9,2,1,2,6,8,9,4,0,3,0,0,0,0,0,7,0,2,1,4,4,5,7,1,2,3,0,6,8,0,0,1,4,0,2,0,0,9,2,3,4,7,8,0,6,5,0,8,6,9,0,5,1,4,0,7}
hARDpuzzlePROB[48]={0,9,8,4,0,6,1,0,0,2,0,0,7,0,0,6,4,3,4,6,0,1,0,2,7,0,9,0,2,7,0,6,9,4,3,0,6,0,0,3,2,1,0,5,7,9,0,5,8,7,0,2,1,6,0,4,6,0,8,7,3,9,1,8,0,2,9,1,3,5,0,4,3,0,9,6,0,5,0,7,2}
hARDpuzzlePROB[49]={8,2,4,0,6,7,0,0,1,0,0,1,0,0,2,7,6,8,5,6,7,8,0,9,0,4,0,4,8,0,0,5,3,0,7,6,0,0,3,6,2,8,5,0,0,6,9,5,0,7,1,8,0,2,3,0,8,1,9,6,4,2,7,0,1,9,0,3,4,0,8,0,0,0,6,7,8,5,3,1,9}
hARDpuzzlePROB[50]={8,2,0,4,5,6,7,3,1,3,7,6,0,0,1,0,4,9,0,4,0,9,0,3,2,8,6,6,9,8,5,0,0,0,2,0,2,0,5,0,1,4,9,7,0,4,1,0,8,2,0,3,6,5,9,0,3,1,0,2,0,5,7,1,5,2,7,0,0,4,0,3,7,0,4,3,9,0,8,0,0}
hARDpuzzlePROB[51]={4,0,1,5,8,6,7,0,9,0,5,6,2,7,0,1,0,3,0,9,7,4,0,3,5,6,8,6,7,3,0,5,2,9,8,0,0,0,0,3,6,0,2,1,5,1,2,0,8,9,4,0,7,0,0,6,2,7,0,5,8,0,1,7,0,0,0,0,8,0,5,2,5,4,8,9,0,1,6,3,0}
hARDpuzzlePROB[52]={1,0,5,3,4,7,0,0,9,8,2,3,0,9,6,7,4,5,0,9,0,0,5,0,6,1,3,0,7,6,0,8,4,0,9,0,2,0,0,7,0,1,4,3,8,4,8,1,9,0,2,5,7,0,9,0,8,6,0,3,0,0,2,5,1,7,8,2,9,0,0,4,0,3,0,0,1,5,9,8,7}
hARDpuzzlePROB[53]={7,3,1,0,8,6,0,0,0,4,5,0,0,2,9,3,1,0,0,0,2,5,0,1,4,7,6,9,0,0,3,0,0,0,4,2,6,7,8,1,0,2,5,3,9,0,0,4,8,9,5,7,6,0,0,6,3,0,7,8,1,9,4,1,4,9,6,5,3,2,0,7,0,0,0,9,1,4,0,5,3}
hARDpuzzlePROB[54]={0,0,7,0,0,0,5,6,9,8,2,0,6,5,9,0,0,4,5,6,9,0,0,7,8,0,3,9,5,0,3,6,1,2,4,7,0,1,0,9,0,8,3,5,6,4,0,6,2,7,0,0,1,8,3,7,1,5,9,4,6,0,0,0,0,4,0,8,0,7,3,5,6,8,5,0,3,0,4,9,1}
hARDpuzzlePROB[55]={0,3,0,8,0,1,7,4,0,2,0,6,5,3,0,1,0,0,7,1,8,2,4,9,6,5,0,0,9,4,6,2,0,8,1,7,5,6,2,0,7,0,0,3,0,1,0,0,0,9,0,2,6,5,8,2,3,7,1,4,0,9,6,0,5,9,3,8,2,4,0,1,0,7,1,0,5,0,3,2,0}
hARDpuzzlePROB[56]={1,0,0,6,2,8,0,9,7,3,0,7,4,0,5,2,8,6,2,6,8,3,9,0,1,0,5,8,7,6,2,3,9,0,1,4,4,0,3,5,0,0,8,7,0,0,5,1,0,7,0,6,2,3,7,0,9,1,5,2,4,0,0,5,8,2,7,0,6,0,0,0,6,1,0,0,8,0,0,5,2}
hARDpuzzlePROB[57]={1,0,8,0,9,0,6,5,0,9,5,2,0,8,6,1,0,3,7,0,3,5,1,2,0,0,4,3,0,9,7,0,1,8,0,5,4,7,0,8,3,5,2,1,0,0,1,0,2,4,9,0,6,0,2,8,0,1,7,3,5,9,0,5,0,0,6,2,8,0,3,0,6,3,1,9,0,4,7,0,8}
hARDpuzzlePROB[58]={9,1,3,7,4,0,8,5,0,0,5,6,8,0,2,0,3,0,0,0,2,3,0,9,7,1,6,0,3,0,4,0,7,5,6,0,5,6,0,1,0,0,2,0,0,4,2,7,5,6,8,3,9,0,2,9,5,6,7,1,4,0,3,0,8,4,2,3,0,0,7,9,3,0,1,9,8,0,6,2,0}
hARDpuzzlePROB[59]={1,5,0,6,0,7,9,4,0,3,0,7,8,1,9,0,6,5,8,0,0,0,4,2,1,3,7,9,3,0,7,0,5,0,0,1,0,8,4,3,6,1,0,0,2,5,0,0,9,0,4,3,7,0,0,9,0,1,0,6,0,5,4,4,7,0,2,5,3,6,1,9,6,1,5,0,9,8,0,2,3}
hARDpuzzlePROB[60]={5,8,7,0,9,6,0,4,2,1,4,0,2,7,5,9,0,8,3,0,0,0,0,1,7,5,6,2,6,0,1,3,7,0,8,0,4,0,1,6,5,0,3,2,0,0,0,8,9,4,0,5,6,1,8,0,3,7,0,4,2,9,5,6,0,0,0,2,9,0,1,0,9,5,2,8,1,0,6,0,4}
hARDpuzzlePROB[61]={6,0,9,2,7,4,3,1,5,7,0,0,0,8,0,2,4,6,0,0,0,6,1,3,8,0,9,0,6,7,0,3,2,4,5,8,2,4,0,7,5,8,0,9,3,8,0,5,9,0,6,0,0,7,4,7,8,3,9,0,0,6,2,0,0,0,4,6,7,0,8,0,1,9,0,8,0,5,7,3,4}
hARDpuzzlePROB[62]={2,0,9,0,0,5,3,7,8,0,0,8,2,9,7,1,4,0,4,0,7,0,6,0,5,2,9,0,9,4,5,0,0,2,0,1,0,7,0,4,8,0,6,0,5,5,3,6,9,0,1,7,8,0,6,8,3,7,1,9,4,5,0,0,2,0,6,3,4,0,0,7,7,0,1,8,0,2,9,6,3}
hARDpuzzlePROB[63]={7,0,0,5,9,4,0,0,8,9,2,8,1,3,0,4,5,0,0,5,4,6,0,0,0,7,9,4,9,0,8,7,5,6,3,1,6,1,0,0,0,0,8,0,7,0,3,0,0,1,6,9,2,5,2,0,0,0,5,0,7,8,3,5,8,9,7,4,3,1,6,0,3,0,1,2,6,8,5,0,4}
hARDpuzzlePROB[64]={6,0,0,0,0,7,9,4,1,3,4,9,6,5,1,8,0,2,7,0,0,9,2,4,0,0,3,0,2,0,3,9,0,1,0,0,0,7,0,0,1,2,6,9,0,1,9,6,7,4,8,0,3,5,4,0,7,2,8,0,3,0,0,9,0,5,1,7,3,4,2,6,2,3,1,0,6,9,7,5,0}
hARDpuzzlePROB[65]={0,5,7,3,0,1,9,0,0,0,2,0,4,7,0,0,5,6,4,3,6,2,5,9,7,1,0,0,1,3,0,0,7,4,6,2,6,7,0,0,0,5,8,9,0,9,0,4,6,3,2,0,0,1,7,0,1,5,0,3,6,8,9,2,6,8,7,0,4,0,0,0,3,9,5,8,1,6,0,4,7}
hARDpuzzlePROB[66]={3,0,5,1,9,6,4,2,7,4,7,2,8,0,0,0,6,9,0,0,1,0,4,7,8,5,3,0,0,4,7,2,9,0,0,0,9,2,0,6,0,0,7,1,5,0,6,8,3,1,5,0,0,4,1,4,0,5,7,0,9,3,0,0,0,7,0,3,2,6,4,1,2,3,9,4,6,0,0,7,8}
hARDpuzzlePROB[67]={7,6,8,0,0,0,0,0,0,4,0,0,0,3,1,6,5,8,0,1,5,6,2,8,0,4,9,6,5,9,2,0,0,3,7,1,1,3,0,9,7,6,0,2,5,2,0,7,5,1,0,9,6,4,8,0,3,1,6,5,0,0,2,5,4,6,0,9,2,1,0,7,0,2,0,3,0,7,5,8,0}
hARDpuzzlePROB[68]={1,7,0,4,3,0,2,0,6,0,2,9,7,1,5,8,3,4,8,3,4,6,0,2,7,0,0,4,0,0,8,6,3,5,0,7,7,6,3,5,2,1,9,4,0,5,0,0,9,4,0,0,1,0,3,0,6,1,8,9,0,0,2,9,1,0,0,7,0,3,0,5,2,4,7,0,5,0,1,8,0}
hARDpuzzlePROB[69]={7,0,1,4,8,3,0,2,9,0,8,3,0,0,0,0,7,5,6,2,4,9,0,5,8,1,3,0,3,6,0,2,4,1,0,7,0,7,9,0,0,1,5,8,2,0,1,5,0,9,8,0,6,4,5,4,8,2,1,7,9,3,0,0,6,0,8,5,0,0,4,1,1,9,2,0,0,6,7,0,0}
hARDpuzzlePROB[70]={8,1,4,5,0,9,0,0,6,9,0,7,0,3,6,4,0,1,2,3,0,7,0,4,8,0,5,6,9,0,4,8,0,0,5,3,1,7,5,3,6,2,9,4,0,3,0,8,0,0,0,7,6,0,0,6,0,0,4,5,2,8,9,4,2,0,6,9,0,5,3,7,5,8,9,0,7,3,0,1,0}
hARDpuzzlePROB[71]={0,0,6,8,0,0,2,1,5,8,4,7,1,2,0,9,0,3,5,1,0,9,0,6,0,7,4,9,3,0,4,1,0,6,8,7,0,8,0,6,7,0,0,5,0,7,0,1,5,9,0,4,3,2,4,7,3,0,0,1,5,9,0,6,0,8,3,0,9,7,4,1,0,5,9,7,8,0,0,2,6}
hARDpuzzlePROB[72]={0,9,6,4,0,0,7,1,5,8,3,0,0,0,6,4,9,0,0,1,5,7,9,2,6,8,0,1,0,9,8,3,0,0,2,4,5,4,2,0,6,1,3,7,8,3,7,8,0,2,0,0,6,1,9,0,4,6,0,0,2,3,7,6,0,1,3,7,0,8,0,0,7,0,3,2,4,0,1,5,0}
hARDpuzzlePROB[73]={0,0,8,7,5,1,0,0,0,6,0,3,4,0,9,5,1,8,5,2,1,0,6,3,0,7,0,0,5,7,2,0,0,0,9,1,0,6,0,0,1,4,7,2,3,2,1,4,9,3,0,6,8,0,9,3,2,0,4,0,1,0,0,7,4,5,1,9,2,8,3,0,0,8,6,0,7,5,2,4,9}
hARDpuzzlePROB[74]={1,0,0,2,9,0,8,3,6,8,9,2,6,3,1,4,5,0,0,4,6,0,7,5,0,0,0,6,5,0,4,1,0,0,0,0,0,3,0,5,6,2,7,1,0,0,1,7,3,8,9,6,4,5,5,2,3,7,4,6,9,8,1,7,0,1,0,5,0,2,6,4,4,0,9,0,0,8,0,0,3}
hARDpuzzlePROB[75]={3,8,2,9,5,0,0,0,7,6,4,1,2,3,7,8,0,9,0,7,5,1,0,6,0,2,3,8,0,4,0,9,2,7,0,5,5,0,7,8,0,3,2,1,0,0,0,3,7,1,5,9,0,0,0,0,0,4,2,8,3,9,1,4,2,9,3,6,1,0,7,0,0,3,8,5,0,0,6,4,0}
hARDpuzzlePROB[76]={1,9,3,5,8,4,0,6,0,0,2,7,0,3,0,4,5,8,5,0,4,2,6,7,0,3,9,3,4,2,1,0,9,6,8,0,0,0,0,4,5,3,2,0,0,7,5,0,0,0,8,9,4,3,0,1,0,8,9,2,3,7,0,8,0,0,3,0,6,5,2,1,2,3,6,0,1,5,0,0,4}
hARDpuzzlePROB[77]={7,0,0,1,3,9,4,5,0,4,3,5,0,6,8,2,9,1,8,0,1,0,4,2,0,7,0,3,1,7,0,5,4,8,0,0,0,0,4,8,0,6,9,3,0,6,0,0,2,7,3,5,1,0,0,4,8,6,9,5,0,2,3,9,7,3,0,0,1,0,8,0,2,5,6,3,0,7,0,4,9}
hARDpuzzlePROB[78]={4,0,5,7,2,3,0,9,0,3,1,0,0,0,9,2,6,7,7,9,2,8,1,6,3,5,4,6,0,1,3,7,0,4,2,0,0,7,0,1,6,2,0,0,8,8,2,0,5,9,4,7,1,6,0,0,0,0,8,7,0,0,5,5,0,9,2,4,0,0,7,3,1,4,0,6,3,0,9,8,0}
hARDpuzzlePROB[79]={0,5,0,9,2,0,6,0,7,7,6,2,1,3,8,4,0,5,1,4,0,6,0,5,3,0,0,4,0,0,5,6,2,1,3,9,6,0,3,0,9,7,2,5,8,9,2,0,8,0,0,7,4,0,2,0,4,3,0,6,5,0,1,0,7,0,0,4,0,8,6,0,8,3,6,7,5,1,9,2,0}
hARDpuzzlePROB[80]={8,6,3,4,9,0,5,0,1,2,9,5,0,7,8,4,0,6,7,0,0,5,3,0,9,2,8,4,0,9,0,2,0,8,0,7,6,7,2,8,5,0,3,0,0,0,0,0,0,4,7,0,5,2,1,4,7,0,0,5,2,6,9,5,2,8,0,6,9,1,4,0,9,3,0,2,1,0,7,8,0}
hARDpuzzlePROB[81]={0,5,3,0,6,1,9,7,0,4,9,2,0,5,8,1,0,0,0,0,7,9,3,4,2,8,0,3,2,1,8,0,6,5,4,9,9,8,0,0,2,3,6,1,0,6,7,4,1,0,5,0,3,0,0,3,8,5,0,2,0,9,6,5,4,0,6,0,7,0,2,1,2,1,0,3,4,0,7,0,0}
hARDpuzzlePROB[82]={4,0,3,9,0,1,0,5,0,8,0,1,5,7,0,0,4,3,2,6,5,3,0,8,9,1,0,0,0,0,0,9,4,3,0,2,1,2,6,7,8,0,0,0,4,9,0,0,2,5,6,7,8,1,5,8,0,6,1,7,4,0,9,0,4,9,0,2,5,1,7,6,0,0,7,4,3,9,8,0,5}
hARDpuzzlePROB[83]={1,0,3,0,8,9,5,4,6,7,0,0,0,1,0,8,3,9,0,9,4,3,5,6,0,1,0,9,1,6,8,4,0,0,2,5,2,0,8,9,7,5,1,0,3,5,0,7,6,0,1,4,9,0,0,8,1,2,3,7,9,0,0,0,7,0,5,0,4,0,8,1,4,5,0,1,6,8,3,0,0}
hARDpuzzlePROB[84]={0,1,2,0,7,4,0,3,0,7,0,4,9,5,8,6,1,0,8,6,9,3,2,1,5,4,0,0,0,6,7,3,0,8,5,4,0,5,3,0,0,2,7,0,9,0,0,8,5,4,6,1,2,0,0,4,7,2,9,5,3,0,1,2,0,5,1,8,0,4,7,0,3,8,0,4,0,0,2,0,5}
hARDpuzzlePROB[85]={4,3,0,1,2,0,8,6,7,0,2,1,0,8,9,5,4,0,5,6,8,7,4,3,0,2,0,9,0,6,3,0,1,0,0,8,0,5,0,9,0,0,0,0,4,3,0,7,2,5,4,0,0,0,8,7,4,5,0,2,6,1,9,0,1,0,4,9,7,3,0,2,2,9,3,8,0,6,4,7,5}
hARDpuzzlePROB[86]={8,5,0,7,3,1,2,0,9,7,6,0,2,8,0,4,0,0,3,0,9,5,0,6,7,8,1,9,8,5,4,6,7,3,0,0,4,7,0,0,0,2,5,9,8,1,3,2,8,0,5,6,7,0,2,9,0,0,7,0,0,5,6,0,0,8,9,5,3,1,2,0,0,1,7,0,2,0,9,0,3}
hARDpuzzlePROB[87]={0,6,2,1,7,9,8,0,0,5,9,0,0,2,0,7,0,6,3,7,8,0,4,0,1,0,2,0,2,3,0,0,6,4,8,1,8,1,4,9,3,2,0,5,0,6,5,0,4,8,1,9,0,3,2,8,0,5,0,4,0,7,9,1,4,5,0,0,7,2,6,0,0,3,9,0,6,8,5,0,4}
hARDpuzzlePROB[88]={4,1,0,7,5,3,0,0,8,8,5,7,9,0,2,4,0,6,0,9,0,0,8,6,1,0,7,0,0,5,2,0,8,6,9,1,9,6,8,0,4,1,2,7,3,1,7,2,3,0,0,0,8,0,5,0,0,0,2,7,3,0,9,6,3,1,0,9,5,7,0,0,7,2,0,1,0,4,8,6,5}
hARDpuzzlePROB[89]={2,3,4,0,9,0,7,1,0,0,0,0,4,2,0,8,9,0,8,0,5,1,6,0,2,4,3,9,0,1,8,5,6,3,7,0,4,8,0,3,0,2,9,5,1,5,7,3,9,4,0,6,0,8,3,5,2,7,0,4,0,6,9,6,1,9,0,0,5,4,0,7,0,0,8,0,1,0,5,0,2}
hARDpuzzlePROB[90]={1,0,4,0,3,7,0,6,5,8,6,9,2,4,5,0,0,1,0,3,0,0,0,0,9,2,4,0,1,0,3,5,2,4,8,7,3,4,7,8,0,9,6,5,2,2,5,8,4,0,6,0,0,9,5,0,1,7,6,4,0,9,3,0,0,0,1,9,3,0,0,0,4,9,3,0,2,8,1,7,0}
hARDpuzzlePROB[91]={0,5,9,8,4,1,6,3,0,0,7,0,0,0,6,4,0,5,3,4,6,7,0,5,8,0,2,9,1,5,6,7,8,0,0,4,0,0,3,2,1,0,9,5,8,0,2,8,9,5,3,7,6,0,0,0,0,4,6,9,1,7,3,1,0,4,0,0,0,2,8,0,0,3,7,1,8,2,5,4,0}
hARDpuzzlePROB[92]={4,5,0,6,2,0,9,3,0,7,3,0,9,5,0,4,1,2,1,0,9,4,0,7,8,0,0,0,7,5,8,4,3,0,0,1,2,4,0,1,6,5,7,8,9,0,6,0,0,9,2,5,0,3,5,1,0,0,0,6,2,9,0,3,0,0,0,8,4,1,0,5,6,8,2,0,1,9,3,7,4}
hARDpuzzlePROB[93]={0,2,0,1,0,0,7,4,9,0,4,9,6,0,0,8,0,1,0,1,7,0,9,0,5,6,3,7,6,5,2,4,9,3,0,8,3,0,2,8,0,0,0,0,6,0,8,1,7,3,0,9,5,2,9,0,6,3,0,4,2,8,5,2,0,8,9,6,7,1,3,4,1,3,4,0,0,0,0,9,7}
hARDpuzzlePROB[94]={0,0,0,3,0,1,9,6,8,6,8,3,2,0,9,4,7,1,1,0,9,4,6,8,5,0,0,7,4,5,1,8,0,6,3,9,0,3,1,7,0,0,2,0,5,2,0,8,9,0,5,7,0,4,4,5,6,8,0,3,1,9,0,0,9,0,0,0,7,3,4,0,0,1,7,6,0,4,8,5,0}
hARDpuzzlePROB[95]={6,0,0,3,5,0,0,9,0,2,0,8,6,7,9,4,3,1,0,0,1,4,2,8,7,6,0,0,8,9,7,3,5,0,0,6,0,2,3,8,1,6,9,0,7,7,1,6,0,0,2,3,5,8,0,4,0,5,9,0,6,8,3,9,6,5,2,0,0,1,0,0,8,3,7,1,0,4,0,2,0}
hARDpuzzlePROB[96]={0,0,0,4,3,8,2,0,1,2,1,6,7,0,0,8,0,0,0,0,4,0,6,2,5,7,9,3,8,2,6,1,5,4,9,0,7,0,1,2,8,0,3,5,0,4,6,5,0,9,7,0,2,0,6,2,0,0,4,3,7,1,0,0,7,3,9,2,1,6,8,4,1,0,8,5,0,0,9,0,2}
hARDpuzzlePROB[97]={5,0,7,8,0,4,3,2,6,2,4,6,1,3,5,0,0,0,9,8,3,6,7,2,0,0,5,0,0,1,2,6,9,7,5,8,6,2,9,7,0,8,0,4,3,0,0,0,3,4,1,6,0,2,1,6,0,0,0,0,8,0,9,3,0,0,5,8,6,0,7,1,8,7,2,9,1,0,0,6,0}
hARDpuzzlePROB[98]={2,0,9,0,6,5,0,3,8,4,6,0,3,0,1,0,5,9,3,7,5,8,4,0,2,6,1,0,3,1,5,0,0,6,0,0,8,2,7,6,1,3,9,4,0,0,0,6,2,9,7,0,0,0,7,0,4,0,5,2,3,9,6,6,5,0,9,3,8,1,0,4,1,0,3,0,7,0,0,8,2}
hARDpuzzlePROB[99]={0,9,8,0,0,4,3,5,6,7,1,0,2,0,6,4,8,0,4,0,5,0,9,3,2,7,1,0,0,2,4,7,1,0,0,0,0,4,0,9,3,5,6,2,8,3,5,9,6,8,0,7,0,0,5,7,0,3,4,8,0,9,2,9,2,1,5,0,7,0,4,0,8,0,0,1,2,0,5,6,7}
hARDpuzzlePROB[100]={5,0,6,4,0,1,0,2,7,3,1,0,8,0,2,0,5,6,7,4,0,0,5,3,0,8,9,4,6,7,9,3,8,0,1,2,8,2,3,7,0,5,6,0,0,9,0,0,0,6,0,7,3,8,1,0,8,3,2,6,9,4,5,6,3,4,0,8,9,0,0,0,2,0,5,0,0,7,8,0,3}
hARDpuzzlePROB[101]={5,0,3,4,2,1,8,0,9,0,1,2,0,8,0,4,7,5,0,9,0,5,6,7,2,0,3,4,2,0,3,9,8,0,0,6,0,8,6,2,1,0,0,9,4,0,0,5,0,7,4,1,2,8,0,0,8,7,3,9,0,0,1,1,4,7,0,5,6,9,3,2,3,6,9,0,0,0,5,8,0}
hARDpuzzlePROB[102]={2,7,5,0,0,1,0,8,4,4,9,6,0,8,7,3,1,5,1,0,0,4,5,0,2,7,6,0,0,0,3,9,0,8,2,1,3,2,1,8,6,0,0,9,7,8,5,9,1,7,2,6,0,0,5,1,0,0,2,0,4,6,8,0,3,2,0,0,0,1,5,9,0,4,0,5,1,6,0,3,0}
hARDpuzzlePROB[103]={6,8,7,3,4,0,0,1,9,9,0,4,2,0,8,6,7,5,1,0,5,0,9,0,3,0,0,3,0,6,1,8,0,7,9,0,2,4,9,6,3,7,5,8,0,0,0,8,5,2,0,4,3,0,0,9,0,0,0,3,1,6,7,8,7,1,4,0,2,0,5,0,0,0,3,9,7,1,8,2,4}
hARDpuzzlePROB[104]={1,0,6,7,0,0,8,3,0,3,0,8,6,1,5,0,7,9,2,0,7,9,3,8,0,4,0,0,0,0,0,9,2,7,6,4,5,7,4,8,0,1,3,0,0,6,2,9,0,7,0,0,0,1,4,8,0,3,5,6,9,1,7,0,3,1,2,4,7,6,0,8,7,6,5,0,8,0,0,2,3}
hARDpuzzlePROB[105]={3,0,8,9,7,4,0,0,0,9,0,5,0,1,2,3,6,4,1,2,4,3,6,5,0,7,8,8,5,6,0,0,0,1,0,0,0,3,0,5,0,6,4,9,0,7,4,0,2,3,1,5,8,6,6,0,0,1,5,0,7,0,0,4,9,7,0,0,3,8,1,5,0,1,0,7,4,8,6,2,9}
hARDpuzzlePROB[106]={8,3,4,6,1,9,0,0,7,5,6,7,2,0,0,0,9,3,0,0,2,5,0,0,8,6,4,9,0,0,8,7,2,0,4,0,0,4,1,3,0,6,5,0,8,6,7,0,0,0,5,9,3,2,3,2,6,7,5,8,0,0,0,7,8,9,4,6,1,0,2,5,4,1,0,9,2,0,0,8,6}
hARDpuzzlePROB[107]={7,8,5,9,0,0,2,6,1,0,9,2,0,7,6,8,0,5,0,0,3,8,5,2,0,7,4,0,4,0,7,0,5,0,0,2,2,1,6,4,3,8,0,0,9,5,0,0,2,0,1,0,4,8,0,5,7,0,0,4,1,8,0,8,3,4,6,1,9,5,2,0,6,2,0,0,8,7,4,9,3}
hARDpuzzlePROB[108]={0,0,4,8,5,9,1,7,6,6,8,5,4,1,7,2,0,0,7,0,1,3,0,2,0,0,4,0,7,0,0,0,3,8,0,0,4,2,0,0,0,6,7,9,5,8,1,9,5,0,4,3,6,0,1,0,0,6,3,5,0,2,0,9,5,2,0,4,8,6,1,3,3,6,7,0,9,0,4,5,8}
hARDpuzzlePROB[109]={9,8,6,5,4,3,7,0,0,0,5,3,1,2,8,4,6,0,2,1,4,0,0,0,5,0,3,0,6,0,9,3,5,0,4,7,3,4,8,0,0,2,0,5,0,0,0,9,4,0,6,1,3,2,6,2,5,8,7,0,0,9,4,4,0,0,2,5,9,0,1,8,8,0,1,3,6,0,0,7,5}
hARDpuzzlePROB[110]={0,6,3,2,0,8,1,5,0,2,9,8,7,5,1,4,0,6,0,0,7,0,4,3,0,9,8,6,0,1,0,8,0,3,2,9,9,8,5,3,1,0,0,7,4,3,4,2,0,7,6,0,0,1,8,5,0,1,0,0,9,6,0,7,3,0,4,0,9,8,1,5,0,0,0,8,6,5,7,4,0}
hARDpuzzlePROB[111]={0,2,5,7,0,0,6,1,0,4,0,8,3,1,0,0,5,2,1,9,7,0,5,6,0,3,8,7,4,3,9,8,5,1,2,0,6,8,0,0,7,0,3,9,5,0,1,0,6,3,2,0,4,0,0,0,0,5,9,4,0,6,3,2,0,4,8,0,0,9,7,1,0,3,6,1,2,0,5,8,4}
hARDpuzzlePROB[112]={6,0,8,4,1,7,2,0,9,4,9,1,0,5,8,7,0,3,7,2,5,0,0,9,8,4,1,0,0,2,6,0,0,9,3,4,1,0,3,9,4,2,0,8,7,9,0,0,5,7,3,0,1,0,0,0,6,7,9,0,4,2,0,0,0,7,8,3,6,1,9,5,0,5,9,0,2,0,3,0,6}
hARDpuzzlePROB[113]={5,7,3,0,9,0,0,1,0,2,1,9,6,4,0,0,8,3,0,0,6,5,1,3,9,7,2,1,0,0,9,0,6,8,2,4,8,3,0,0,7,5,0,9,1,9,6,4,0,0,0,7,3,5,3,4,0,8,2,0,0,6,7,6,2,8,7,5,1,0,0,9,7,0,1,0,6,0,2,5,0}
hARDpuzzlePROB[114]={0,0,0,3,0,2,1,5,6,1,8,0,9,0,4,0,3,0,6,2,0,1,7,5,9,8,4,0,1,9,5,3,7,0,2,0,3,6,2,4,0,8,0,7,9,0,5,7,6,2,0,0,1,3,9,7,6,8,5,0,2,0,1,0,3,1,7,4,0,8,0,0,0,4,0,2,0,1,3,6,7}
hARDpuzzlePROB[115]={8,1,0,7,2,0,9,6,0,4,6,0,5,8,1,2,0,3,0,7,5,0,9,0,1,4,8,6,0,0,4,3,2,7,0,1,7,9,2,6,0,8,0,0,0,0,3,4,9,5,7,8,2,0,0,8,1,2,4,5,6,0,7,0,0,7,8,6,9,5,1,0,5,2,0,0,0,3,4,0,9}
hARDpuzzlePROB[116]={1,4,2,8,7,0,9,6,0,0,0,3,4,6,0,1,2,0,6,8,9,0,5,0,0,7,0,5,0,7,9,0,0,0,3,1,0,0,0,6,0,7,5,8,9,8,0,0,5,3,1,2,0,0,3,7,5,2,1,4,8,9,6,0,1,4,3,0,6,7,5,2,2,6,8,7,9,5,0,0,4}
hARDpuzzlePROB[117]={4,9,5,2,0,0,0,8,1,2,0,3,9,0,0,4,0,6,0,0,8,5,7,4,9,0,3,6,0,9,0,4,0,2,3,8,7,3,0,0,2,6,1,9,5,8,5,2,0,0,9,0,4,7,0,2,7,1,5,8,3,6,4,5,0,1,6,3,2,0,0,9,0,8,0,4,0,7,5,1,0}
hARDpuzzlePROB[118]={0,0,6,9,7,5,0,0,3,4,3,0,6,8,1,7,5,9,7,5,9,0,0,2,6,0,0,0,2,1,5,0,4,0,0,8,0,0,7,8,3,0,1,6,0,3,6,8,2,1,7,5,9,0,1,7,5,4,2,0,0,3,0,6,9,0,0,5,3,8,0,7,2,8,0,0,9,6,4,1,5}
hARDpuzzlePROB[119]={8,7,2,9,0,6,1,3,5,0,1,4,0,3,0,2,0,6,0,9,0,0,5,1,4,0,7,9,8,7,0,2,0,6,4,0,6,0,5,0,9,4,7,1,8,1,0,3,6,7,8,5,0,0,7,5,1,4,8,9,0,6,0,4,3,0,0,6,2,9,5,1,2,0,0,5,1,0,8,0,0}
hARDpuzzlePROB[120]={6,2,0,7,4,1,0,0,8,5,8,4,0,3,9,0,1,7,0,0,0,5,6,8,0,2,9,2,0,7,0,9,6,1,5,0,4,5,0,0,2,7,9,0,6,9,6,8,4,1,5,0,0,3,3,1,5,9,0,0,8,6,2,8,9,2,6,0,3,7,0,0,7,4,0,1,8,2,0,0,0}
hARDpuzzlePROB[121]={8,2,0,5,7,0,3,0,9,0,3,1,4,9,0,0,8,5,5,0,7,0,8,6,4,2,1,1,8,2,0,0,5,6,9,3,0,6,9,8,2,3,0,5,0,4,5,0,0,0,9,8,7,2,9,0,0,2,1,8,0,0,7,3,1,8,0,5,0,0,4,6,0,7,0,6,3,4,9,0,8}
hARDpuzzlePROB[122]={2,0,7,1,0,0,6,8,5,8,1,5,0,0,0,4,3,9,4,6,0,0,3,0,0,2,0,1,0,4,9,2,6,5,7,0,9,0,2,4,7,0,8,0,6,3,7,6,5,8,0,2,9,4,6,0,8,3,1,4,7,0,2,5,2,0,6,9,0,0,0,8,0,4,3,0,5,0,9,6,1}
hARDpuzzlePROB[123]={0,7,9,4,1,8,0,0,0,0,0,4,6,5,0,7,0,8,1,8,5,7,3,0,4,6,0,3,0,0,1,6,5,8,4,0,7,5,0,0,0,4,2,9,6,8,0,6,0,0,7,1,5,3,5,0,3,8,4,6,9,7,1,9,1,7,0,2,3,0,0,4,4,0,0,9,7,1,0,2,5}
hARDpuzzlePROB[124]={6,8,9,5,7,1,0,3,0,4,2,0,3,6,8,0,0,5,0,3,7,9,4,0,6,1,8,0,5,6,0,0,3,0,7,9,7,1,8,0,9,5,2,0,3,0,4,3,2,8,7,0,0,0,0,9,5,1,2,4,3,0,7,3,0,0,8,5,6,9,2,1,1,6,2,7,0,0,0,0,0}
hARDpuzzlePROB[125]={9,8,0,4,1,0,2,5,7,2,7,0,5,9,8,0,6,0,1,3,5,2,6,0,9,0,8,6,0,9,0,5,4,8,3,2,0,0,0,3,8,0,1,9,4,0,0,3,0,0,9,5,7,0,5,9,7,8,4,1,6,0,3,0,2,0,0,7,5,4,8,9,4,6,8,0,3,0,0,1,0}
hARDpuzzlePROB[126]={5,7,0,6,1,3,2,0,0,4,2,0,8,9,0,0,3,0,9,1,0,4,0,2,8,6,5,0,0,0,3,4,1,0,2,6,1,3,7,2,0,9,0,8,4,2,6,4,5,8,7,9,1,3,0,4,0,0,5,0,0,9,8,6,5,1,0,3,0,0,7,2,3,8,9,0,2,0,6,0,1}
hARDpuzzlePROB[127]={3,0,1,0,8,9,5,0,4,9,0,2,0,4,6,8,0,0,8,6,0,0,7,1,0,3,9,0,4,9,8,0,3,6,0,0,1,2,0,6,5,4,0,7,0,5,8,6,7,9,2,1,4,3,0,0,8,4,3,5,7,9,2,0,3,7,0,6,0,0,5,1,4,9,0,1,2,7,0,8,0}
hARDpuzzlePROB[128]={3,1,9,2,4,7,5,6,0,2,0,5,0,8,6,7,1,0,8,7,0,0,9,5,3,2,0,0,8,2,6,3,4,0,0,1,4,6,7,5,1,0,8,3,0,9,0,0,8,7,2,0,5,6,6,0,4,0,5,0,0,8,7,1,0,3,7,6,0,2,0,0,7,5,0,0,2,1,0,9,3}
hARDpuzzlePROB[129]={7,0,1,0,6,0,3,4,5,6,3,5,7,1,4,9,8,2,0,0,0,0,0,2,1,0,0,2,0,7,0,4,3,5,9,0,0,9,6,0,5,1,2,3,0,3,0,8,0,0,7,6,1,4,0,8,2,3,0,5,4,0,9,5,6,0,4,8,9,7,0,1,9,7,0,1,2,6,8,0,3}
hARDpuzzlePROB[130]={1,2,3,4,0,8,6,9,5,7,9,0,6,5,1,3,0,4,5,0,6,9,0,2,8,1,0,6,8,0,7,2,4,1,5,0,3,1,0,0,6,0,4,7,9,4,5,7,0,9,3,2,0,8,8,0,1,5,0,9,7,0,2,2,0,5,0,0,6,9,0,1,0,0,0,0,1,7,0,0,6}
hARDpuzzlePROB[131]={0,3,4,0,0,0,0,9,7,5,7,6,4,9,2,1,8,0,0,8,9,3,5,0,4,2,6,0,1,0,0,0,0,3,0,8,0,0,5,6,4,8,2,0,0,8,4,2,7,1,3,9,6,5,4,0,0,8,6,5,7,3,9,0,0,0,9,3,4,0,1,2,9,6,3,2,7,0,8,5,0}
hARDpuzzlePROB[132]={0,9,0,0,3,1,8,0,6,0,3,6,0,2,4,9,5,0,0,1,4,6,9,5,7,3,2,0,0,3,4,7,9,2,0,0,1,0,9,0,0,0,3,6,7,2,8,7,0,1,6,0,0,4,3,6,0,0,0,2,4,7,9,4,2,5,9,0,7,0,8,3,9,0,8,1,4,3,6,0,5}
hARDpuzzlePROB[133]={5,0,0,0,0,6,4,0,9,3,7,9,0,1,5,8,0,0,4,2,6,3,8,0,7,0,0,0,5,3,0,4,7,0,9,8,0,9,8,5,2,3,6,7,4,7,6,4,0,0,1,0,5,2,8,0,2,1,5,4,0,6,0,9,1,5,7,6,8,0,0,3,0,4,0,9,3,0,5,8,1}
hARDpuzzlePROB[134]={0,9,0,6,2,8,0,1,5,6,1,8,5,0,7,4,0,0,7,0,2,4,0,1,3,0,6,0,4,6,1,8,5,9,0,0,0,8,7,0,0,3,5,6,2,9,3,5,7,0,0,8,4,1,0,7,4,0,0,6,0,9,3,5,2,0,0,0,4,6,7,8,3,0,1,8,7,9,2,5,0}
hARDpuzzlePROB[135]={0,6,8,0,2,0,9,5,0,4,0,0,9,0,8,2,0,3,7,2,0,5,4,3,1,8,6,2,3,0,6,8,7,4,0,1,6,0,7,0,1,9,5,3,2,0,9,0,2,3,5,7,0,8,5,1,6,0,0,4,0,0,0,8,0,2,1,5,6,3,0,0,9,0,3,8,7,0,6,1,5}
hARDpuzzlePROB[136]={0,0,8,0,5,7,6,0,0,5,7,3,2,1,6,4,0,9,0,6,0,0,8,9,3,7,5,8,5,4,1,9,0,7,2,0,0,3,0,8,0,0,1,5,4,7,0,2,0,4,5,0,0,3,3,0,7,0,2,4,5,6,0,1,2,6,5,3,8,9,4,0,4,9,0,7,0,1,0,3,8}
hARDpuzzlePROB[137]={8,0,2,7,5,4,1,3,6,7,0,1,0,9,0,5,4,0,6,0,0,2,1,0,8,7,9,0,7,4,8,3,9,0,5,0,5,8,0,1,0,7,2,9,0,9,1,0,0,0,0,3,8,7,4,5,7,3,2,6,0,1,0,1,2,8,9,7,5,0,0,3,0,0,9,4,0,0,7,2,5}
hARDpuzzlePROB[138]={0,0,5,2,4,6,1,9,7,7,6,0,0,1,9,0,8,5,0,2,9,0,5,0,6,3,0,6,8,1,9,0,0,0,0,3,2,9,7,5,3,4,8,1,6,0,5,0,1,0,8,7,2,0,3,0,8,0,2,5,9,7,0,0,0,6,4,8,1,3,5,0,5,0,0,7,9,0,4,6,8}
hARDpuzzlePROB[139]={7,8,2,0,3,0,0,4,1,4,1,5,2,8,7,6,3,9,6,0,9,4,5,1,0,8,0,3,9,8,1,0,0,0,2,0,2,4,0,9,6,8,0,5,3,5,7,0,3,4,2,1,0,8,1,0,0,8,0,6,9,7,4,8,6,7,0,9,4,3,0,2,0,0,0,7,1,0,0,0,0}
hARDpuzzlePROB[140]={0,0,4,6,7,0,8,2,5,5,8,9,3,0,1,0,6,0,0,7,2,4,8,5,3,9,1,8,2,5,7,4,0,0,0,9,7,9,0,0,1,3,5,8,4,4,3,1,0,0,0,2,7,6,2,4,8,0,0,7,9,5,3,0,0,0,0,3,0,6,1,0,1,0,3,5,9,0,7,4,0}
hARDpuzzlePROB[141]={4,1,8,0,2,5,3,0,6,0,7,5,8,6,9,2,0,1,6,0,2,0,3,1,0,7,8,5,0,0,0,4,0,0,3,9,9,6,3,5,1,7,0,2,4,0,4,0,9,0,0,6,5,7,0,3,0,0,7,0,9,0,5,1,2,9,6,0,4,7,0,0,7,5,6,3,9,8,4,1,0}
hARDpuzzlePROB[142]={4,0,2,7,9,8,0,1,5,1,0,0,4,5,3,6,0,2,8,5,0,1,0,6,9,0,4,9,2,1,6,0,0,8,5,3,5,7,0,0,0,0,1,2,0,6,0,0,5,1,2,7,4,0,0,4,9,8,6,1,5,0,7,0,8,6,2,3,0,4,0,1,0,1,5,0,4,7,2,6,0}
hARDpuzzlePROB[143]={6,9,7,5,0,2,3,0,0,0,0,0,7,0,6,9,2,5,0,0,0,1,0,3,0,6,7,0,7,5,6,3,0,0,8,1,1,4,0,8,2,5,7,9,0,2,8,3,9,0,1,4,5,6,7,5,2,0,6,8,1,0,9,8,3,0,4,5,9,0,0,2,0,6,9,0,1,7,0,3,8}
hARDpuzzlePROB[144]={6,8,4,0,0,3,0,9,7,9,2,1,7,6,8,3,0,0,0,5,0,9,4,2,8,1,6,2,1,3,8,0,6,5,0,4,5,7,0,2,0,4,6,0,0,8,0,0,0,7,5,1,2,0,0,0,2,6,0,1,7,5,8,7,0,8,5,2,9,0,3,0,1,3,0,4,0,0,9,6,2}


modenow=modeselect
TEMPNUM=0
tempitmode=nil
tempitmode={}
tempitmode.PROB={}
tempitmode.SOL={}
if modeselect==1 then
TEMPNUM=math.random(1,#SimplepuzzleSOL)
tempitmode.PROB=SimplepuzzlePROB[TEMPNUM]
tempitmode.SOL=SimplepuzzleSOL[TEMPNUM]
 
return tempitmode
elseif modeselect==2 then
TEMPNUM=math.random(1,#EASYpuzzleSOL)
tempitmode.PROB=EASYpuzzlePROB[TEMPNUM]
tempitmode.SOL=EASYpuzzleSOL[TEMPNUM]
 
return tempitmode

elseif modeselect==3 then
TEMPNUM=math.random(1,#medpuzzleSOL)
tempitmode.PROB=medpuzzlePROB[TEMPNUM]
tempitmode.SOL=medpuzzleSOL[TEMPNUM]
 
return tempitmode

else
TEMPNUM=math.random(1,#hARDpuzzleSOL)
tempitmode.PROB=hARDpuzzlePROB[TEMPNUM]
tempitmode.SOL=hARDpuzzleSOL[TEMPNUM]
 
return tempitmode

end
--print("rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr")
--print("this has input2::::::::::::::::::::::::::::::::::::::::::::::::")
-- print_r(tempitmode) --problem here how is zero here?


end
-- gamezfeedme=nil
-- gamezfeedme={}
-- gamezfeedme=selectmode(modenow)
-- --print("selectmodeoutput>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>1")
-- --print_r(gamezfeedme)
-- --removethesemany=53+5+4 --true value
--removethesemany=0 --true value
-- gameon(gamezfeedme,removethesemany)
-- killall()
-- gamezfeedme=nil
-- gamezfeedme={}
-- gamezfeedme=selectmode(modenow)
-- --removethesemany=35 --35=18
-- gameon(gamezfeedme,removethesemany)
--print("this has input::::::::::::::::::::::::::::::::::::::::::::::::")
--print_r(gamezfeedme)


function anotherfunct(event)   
 if "began" == event.phase then
	  butonHolderanother.alpha=1

 timeKeep:pause() 
 upclockon =0
ky= timeKeep:getElapsedSeconds()
print(ky)
timeKeep:addTime(-ky)
			timingtex.isVisible=true
--lastpress=event.target.digit
 elseif "ended" == event.phase then
	  butonHolderanother.alpha=.7
--gamezfeedme=selectmode(1)

killall()
gamezfeedme=nil
gamezfeedme={}
gamezfeedme=selectmode(modenow)
--print("selectmodeoutput>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>1")
--print_r(gamezfeedme)
--print_r(selectmode(1))
print("selectmodeoutput>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>simple array")
--print_r(simp)
--removethesemany=60 --35=18

print("this is the shit that is feed")
print_r(gamezfeedme)
gameon(gamezfeedme)
 butonHolderanother:toFront()
 
end
end

      butonHolderanother = display.newImage( "anotherpuz.png" ) -- create a new rectangle and store it in the letterHolder array
   butonHolderanother:scale( .25, .25 ) -- assign a random color
   butonHolderanother.x = _W/2 -- display the rectangle in a random x position on screen
   butonHolderanother.y =   _H+5
   butonHolderanother.alpha=.8
   butonHolderanother.isVisible=false
     --grateA:insert( butonHoldercancel) 
	-- butonHolderanother:addEventListener( "touch", anotherfunct )
	 
	 
	 
	 function levelsetter()
	 
	 	 
	 grateC=nil
	  grateC = display.newGroup()



  
   bacg = display.newImage( "11.jpg" )
bacg.anchorX=0
bacg.anchorY=0
bacg.x  = -10
bacg.y  = -50
bacg:scale( .5, .5 )
bacg:addEventListener("touch", function()  return true end)
bacg:addEventListener("tap", function()  return true end)
  grateC:insert( bacg )
   			
rb1r = display.newRect( 0, 0, _W*5, _H*5 )
 rb1r:setFillColor( 0, 0, 0 ,0)
--rb1r:toFront()

  grateC:insert( rb1r )
    t2ztext = display.newText( "Select Game Level:", _W/2, 120-50,native.systemFont, 20 )
t2ztext:setFillColor( .2, 1, .3 )
t2ztext.anchorX=.5
t2ztext.anchorY=.5
    grateC:insert( t2ztext )
  
  function butonHoldersimpled(event)   
 if "began" == event.phase then
 print("back hit>>>>>>>>>>>>>>")
	  event.alpha=1

--lastpress=event.target.digit
 elseif "ended" == event.phase then
	  event.alpha=.6
--gamezfeedme=selectmode(1)
  if grateC==nil then
else
grateC:removeSelf()
grateC = nil
end

 killall()
gamezfeedme=nil
gamezfeedme={}
gamezfeedme=selectmode(1)
removethesemany=30 --35=18
gameon(gamezfeedme)
print("this has input::::::::::::::::::::::::::::::::::::::::::::::::")
end
end
  
  
    function butonHoldereasyc(event)   
 if "began" == event.phase then
 print("back hit>>>>>>>>>>>>>>")
	  event.alpha=1

--lastpress=event.target.digit
 elseif "ended" == event.phase then
	  event.alpha=.6
--gamezfeedme=selectmode(1)
  if grateC==nil then
else
grateC:removeSelf()
grateC = nil
end
 killall()
gamezfeedme=nil
gamezfeedme={}
gamezfeedme=selectmode(2)
removethesemany=55 --35=18
gameon(gamezfeedme)
print("this has input::::::::::::::::::::::::::::::::::::::::::::::::")
 
end
end
  
  
      function butonHoldermeds(event)   
 if "began" == event.phase then
 print("back hit>>>>>>>>>>>>>>")
	  event.alpha=1

--lastpress=event.target.digit
 elseif "ended" == event.phase then
	  event.alpha=.6
--gamezfeedme=selectmode(1)
  if grateC==nil then
else
grateC:removeSelf()
grateC = nil
end
 killall()
gamezfeedme=nil
gamezfeedme={}
gamezfeedme=selectmode(3)
removethesemany=60 --35=18
gameon(gamezfeedme)
print("this has input::::::::::::::::::::::::::::::::::::::::::::::::")
 
end
end
  
        function butonHolderhasrd(event)   
 if "began" == event.phase then
 print("back hit>>>>>>>>>>>>>>")
	  event.alpha=1

--lastpress=event.target.digit
 elseif "ended" == event.phase then
	  event.alpha=.6
--gamezfeedme=selectmode(1)
  if grateC==nil then
else
grateC:removeSelf()
grateC = nil
end
 killall()
gamezfeedme=nil
gamezfeedme={}
gamezfeedme=selectmode(4)
removethesemany=62 --35=18
gameon(gamezfeedme)
print("this has input::::::::::::::::::::::::::::::::::::::::::::::::")
end
end
  
  
  
timeKeep:pause() 
 upclockon =0
ky= timeKeep:getElapsedSeconds()
print(ky)
timeKeep:addTime(-ky)

  
  	 wpmaGlobalAdmob.showAdmobInterstitialAd() 
wpmaGlobalAdmob.loadAdmobInterstitialAd() 
  
  sccale=.41
        butonHoldersimple = display.newImage( "simple.png" ) -- create a new rectangle and store it in the letterHolder array
   butonHoldersimple:scale( sccale, sccale ) -- assign a random color
   butonHoldersimple.x = _W/2 -- display the rectangle in a random x position on screen
   butonHoldersimple.y =   120
   butonHoldersimple.alpha=1
     --grateA:insert( butonHoldercancel) 
	    butonHoldersimple:addEventListener( "touch", butonHoldersimpled )
	    grateC:insert( butonHoldersimple )
	
     
	 butonHoldereasy = display.newImage( "easy.png" ) -- create a new rectangle and store it in the letterHolder array
   butonHoldereasy:scale( sccale, sccale ) -- assign a random color
   butonHoldereasy.x = _W/2 -- display the rectangle in a random x position on screen
   butonHoldereasy.y =   120+(60*1)
   butonHoldereasy.alpha=1
      
     --grateA:insert( butonHoldercancel) 
	 butonHoldereasy:addEventListener( "touch", butonHoldereasyc )
	   grateC:insert( butonHoldereasy )
	 	 butonHoldermed = display.newImage( "medium.png" ) -- create a new rectangle and store it in the letterHolder array
   butonHoldermed:scale( sccale, sccale ) -- assign a random color
   butonHoldermed.x = _W/2 -- display the rectangle in a random x position on screen
   butonHoldermed.y =   120+(60*2)
   butonHoldermed.alpha=1
    
     --grateA:insert( butonHoldercancel) 
	 butonHoldermed:addEventListener( "touch", butonHoldermeds )
	   grateC:insert( butonHoldermed )
	 	 	 butonHolderhard = display.newImage( "hard.png" ) -- create a new rectangle and store it in the letterHolder array
   butonHolderhard:scale( sccale, sccale ) -- assign a random color
   butonHolderhard.x = _W/2 -- display the rectangle in a random x position on screen
   butonHolderhard.y =   120+(60*3)
   butonHolderhard.alpha=1
     --grateA:insert( butonHoldercancel) 
	
	 butonHolderhard:addEventListener( "touch", butonHolderhasrd )
   grateC:insert(butonHolderhard)
	 end
	 

  -- --gameresultsplash(3)
  -- print(countloop)
  -- print(countloopz)
  -- print(countloopx)
  
 -- levelsetter()
  
  
   
	 function SCOREB()
	 
	 	 
	 grateC=nil
	  grateC = display.newGroup()



  
   bacg = display.newImage( "11.jpg" )
bacg.anchorX=0
bacg.anchorY=0
bacg.x  = -10
bacg.y  = -50
bacg:scale( .5, .5 )
bacg:addEventListener("touch", function()  return true end)
bacg:addEventListener("tap", function()  return true end)
  grateC:insert( bacg )
   			
rb1r = display.newRect( 0, 0, _W*5, _H*5 )
 rb1r:setFillColor( 0, 0, 0 ,0)
--rb1r:toFront()

  grateC:insert( rb1r )
  
     SCORE = display.newImage( "SB111.png" )
SCORE.anchorX=.5
SCORE.anchorY=.5
SCORE.x  = _W/2
SCORE.y  = _H/2-60
SCORE:scale( .30, .30 )
SCORE.alpha=.75
  
   grateC:insert( SCORE )
  
  
  
  	 wpmaGlobalAdmob.showAdmobInterstitialAd() 
wpmaGlobalAdmob.loadAdmobInterstitialAd() 
  
  
  
    t2ztext = display.newText( "Simple                  "..scorenow[1].."              "..scorenow2[1].text, 32, 120-50+75+10,native.systemFont, 12 )
t2ztext:setFillColor( 0, 0, 0 )
t2ztext.anchorX=0
t2ztext.anchorY=.5

 
    t3ztext = display.newText( "Easy                     "..scorenow[2].."               "..scorenow2[2].text, 32, 120-50+75+40+10,native.systemFont, 12 )
t3ztext:setFillColor( 0, 0, 0 )
t3ztext.anchorX=0
t3ztext.anchorY=.5

  t4ztext = display.newText( "Medium               "..scorenow[3].."                "..scorenow2[3].text, 35, 120-50+75+40+38+10,native.systemFont, 12 )
t4ztext:setFillColor( 0, 0, 0 ) 
t4ztext.anchorX=0
t4ztext.anchorY=.5

  t5ztext = display.newText( "Hard                     "..scorenow[4].."               "..scorenow2[4].text, 32, 120-50+75+40+40+33+10,native.systemFont, 12 )
t5ztext:setFillColor( 0, 0, 0 )
t5ztext.anchorX=0
t5ztext.anchorY=.5

    grateC:insert( t2ztext )
    grateC:insert( t3ztext )
    grateC:insert( t4ztext )
    grateC:insert( t5ztext )
  
        function butonBCKAa(event)   
 if "began" == event.phase then
 print("back hit>>>>>>>>>>>>>>")
	  event.alpha=1

--lastpress=event.target.digit
 elseif "ended" == event.phase then
	  event.alpha=.6
--gamezfeedme=selectmode(1)
  if grateC==nil then
else
grateC:removeSelf()
grateC = nil
end
  initpage()
end
end
  
  
  
  
  
  
  sccale=.4
        butonBCKA = display.newImage( "Bck2.png" ) -- create a new rectangle and store it in the letterHolder array
   butonBCKA:scale( sccale, sccale ) -- assign a random color
   butonBCKA.x = _W/2 -- display the rectangle in a random x position on screen
   butonBCKA.y =   120+200
   butonBCKA.alpha=.8
     --grateA:insert( butonHoldercancel) 
	    butonBCKA:addEventListener( "touch", butonBCKAa )
	    grateC:insert( butonBCKA )
	
   
	 end
	
  
 -- SCOREB()
  
  
  
	 
	 function initpage()
	 
	 	 
	 grateC=nil
	  grateC = display.newGroup()

timeKeep:pause() 
 upclockon =0
ky= timeKeep:getElapsedSeconds()
print(ky)
timeKeep:addTime(-ky)

  
   bacg = display.newImage( "11.jpg" )
bacg.anchorX=0
bacg.anchorY=0
bacg.x  = -10
bacg.y  = -50
bacg:scale( .5, .5 )
bacg:addEventListener("touch", function()  return true end)
bacg:addEventListener("tap", function()  return true end)
  grateC:insert( bacg )
   			
rb1r = display.newRect( 0, 0, _W*5, _H*5 )
 rb1r:setFillColor( 0, 0, 0 ,0)
--rb1r:toFront()

  grateC:insert( rb1r )
    t2ztext = display.newText( "", _W/2, 120-50+50,native.systemFont, 20 )
t2ztext:setFillColor( .2, 1, .3 )
t2ztext.anchorX=.5
t2ztext.anchorY=.5
    grateC:insert( t2ztext )
  
  function butonHolderexitz(event)   
 if "began" == event.phase then
 print("back hit>>>>>>>>>>>>>>")
	  event.alpha=1

--lastpress=event.target.digit
 elseif "ended" == event.phase then
	  event.alpha=.6
--gamezfeedme=selectmode(1)
  if grateC==nil then
else
grateC:removeSelf()
grateC = nil
end
native.requestExit()
end
end
  
  function butonHolderscorebz(event)   
 if "began" == event.phase then
 print("back hit>>>>>>>>>>>>>>")
	  event.alpha=1

--lastpress=event.target.digit
 elseif "ended" == event.phase then
	  event.alpha=.6
--gamezfeedme=selectmode(1)
  if grateC==nil then
else
grateC:removeSelf()
grateC = nil
end
SCOREB()
end
end
   function butonHoldernewgamez(event)   
 if "began" == event.phase then
 print("back hit>>>>>>>>>>>>>>")
	  event.alpha=1

--lastpress=event.target.digit
 elseif "ended" == event.phase then
	  event.alpha=.6
--gamezfeedme=selectmode(1)
  if grateC==nil then
else
grateC:removeSelf()
grateC = nil
end
 levelsetter()
end
end
   
   
    function openlnk(event)   
 if "began" == event.phase then
 print("back hit>>>>>>>>>>>>>>")
	  event.alpha=1

--lastpress=event.target.digit
 elseif "ended" == event.phase then
	  event.alpha=.9
--gamezfeedme=selectmode(1)
  system.openURL(mylink)  
 
end
end
   
   
      logo = display.newImage( "log2.png" ) -- create a new rectangle and store it in the letterHolder array
   logo:scale( .25, .3 ) -- assign a random color
   logo.x = _W/2 -- display the rectangle in a random x position on screen
   logo.y =   120-40
   logo.alpha=.9
    logo:addEventListener( "touch", openlnk )
   grateC:insert( logo )
  
  sccale=.5
        butonHoldernewgame = display.newImage( "gameon.png" ) -- create a new rectangle and store it in the letterHolder array
   butonHoldernewgame:scale( sccale, sccale ) -- assign a random color
   butonHoldernewgame.x = _W/2 -- display the rectangle in a random x position on screen
   butonHoldernewgame.y =   120+50
   butonHoldernewgame.alpha=1
     --grateA:insert( butonHoldercancel) 
	    butonHoldernewgame:addEventListener( "touch", butonHoldernewgamez )
	    grateC:insert( butonHoldernewgame )
	
     
	 butonHolderscoreb = display.newImage( "sb1.png" ) -- create a new rectangle and store it in the letterHolder array
   butonHolderscoreb:scale( sccale, sccale ) -- assign a random color
   butonHolderscoreb.x = _W/2 -- display the rectangle in a random x position on screen
   butonHolderscoreb.y =   120+(60*1)+50
   butonHolderscoreb.alpha=1
      
     --grateA:insert( butonHoldercancel) 
	 butonHolderscoreb:addEventListener( "touch", butonHolderscorebz)
	   grateC:insert( butonHolderscoreb )
	   
	 	 butonHolderexit = display.newImage( "ext.png" ) -- create a new rectangle and store it in the letterHolder array
   butonHolderexit:scale( sccale, sccale ) -- assign a random color
   butonHolderexit.x = _W/2 -- display the rectangle in a random x position on screen
   butonHolderexit.y =   120+(60*2)+50
   butonHolderexit.alpha=1
    
     --grateA:insert( butonHoldercancel) 
	 butonHolderexit:addEventListener( "touch", butonHolderexitz )
	   grateC:insert( butonHolderexit )
	   
	 	
	 end
	 
 initpage()
 
 local function onSystemEvent( event )

    local eventType = event.type

    if ( eventType == "applicationStart" ) then
	-- notifications.cancelNotification() 

        --occurs when the application is launched and all code in "main.lua" is executed
    elseif ( eventType == "applicationExit" ) then
	
	-- notifications.cancelNotification() 
	
	-- if settings[1].CHECKALARMONOFF==0 then
-- -- notifications.cancelNotification()
-- time1 = os.date( "!*t", os.time() + notificationTime1 )
-- notificationID1 = notifications.scheduleNotification( time1, options1Z )

-- time2 = os.date( "!*t", os.time() + notificationTime2 )
-- notificationID2 = notifications.scheduleNotification( time2, options1Z )
-- else
-- if settings[1].roll3=="PM" then
-- talhr=settings[1].roll1+12
-- else
-- talhr=settings[1].roll1
-- end
-- alarmer(talhr,settings[1].roll2)
-- end
	
	

        --occurs when the user or OS task manager quits the application
    elseif ( eventType == "applicationSuspend" ) then
	
	        suspendTime = os.time()
       
    
-- notifications.cancelNotification() 
	-- if settings[1].CHECKALARMONOFF==0 then
-- notifications.cancelNotification()
-- time1 = os.date( "!*t", os.time() + notificationTime1 )
-- notificationID1 = notifications.scheduleNotification( time1, options1Z )

-- time2 = os.date( "!*t", os.time() + notificationTime2 )
-- notificationID2 = notifications.scheduleNotification( time2, options1Z )
-- else
-- if settings[1].roll3=="PM" then
-- talhr=settings[1].roll1+12
-- else
-- talhr=settings[1].roll1
-- end
-- alarmer(talhr,settings[1].roll2)
-- end
 


        --perform all necessary actions for when the device suspends the application, i.e. during a phone call
    elseif ( eventType == "applicationResume" ) then
	
	-- notifications.cancelNotification() 
	
	
	   if upclockon ==1 then
         
		 resumeTime = os.time()  
		  
		 deltaTimesec=  math.round((resumeTime - suspendTime))
						resumeTime = 0
						
						timeKeep:pause()
						
timeKeep:addTime(deltaTimesec)
timeKeep:resume()
updateTimer()
		
		end
				suspendTime = 0 
				
        --perform all necessary actions for when the app resumes from a suspended state
    elseif ( eventType == "applicationOpen" ) then
	-- notifications.cancelNotification() 
        --occurs when the application is asked to open a URL resource (Android and iOS only)
    end
end

Runtime:addEventListener( "system", onSystemEvent )


 local function myUnhandledErrorListener( event )

    local iHandledTheError = true

    if iHandledTheError then
        print( "Handling the unhandled error", event.errorMessage )
    else
        print( "Not handling the unhandled error", event.errorMessage )
    end
    
    return iHandledTheError
end

Runtime:addEventListener("unhandledError", myUnhandledErrorListener)

 
 