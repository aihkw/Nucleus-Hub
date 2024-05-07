--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.5) ~  Much Love, Ferib 

]]--

local v0 = string.char;
local v1 = string.byte;
local v2 = string.sub;
local v3 = bit32 or bit;
local v4 = v3.bxor;
local v5 = table.concat;
local v6 = table.insert;
local function v7(v31, v32)
	local FlatIdent_76979 = 0;
	local v33;
	while true do
		if (FlatIdent_76979 == 1) then
			return v5(v33);
		end
		if (FlatIdent_76979 == 0) then
			v33 = {};
			for v110 = 1, #v31 do
				v6(v33, v0(v4(v1(v2(v31, v110, v110 + 1)), v1(v2(v32, 1 + (v110 % #v32), 1 + (v110 % #v32) + 1))) % 256));
			end
			FlatIdent_76979 = 1;
		end
	end
end
function generateRandomString(v34)
	local FlatIdent_24A02 = 0;
	local v35;
	local v36;
	local v37;
	while true do
		if (FlatIdent_24A02 == 1) then
			v37 = nil;
			while true do
				local FlatIdent_89ECE = 0;
				while true do
					if (FlatIdent_89ECE == 0) then
						if (v35 == (998 - (655 + 342))) then
							local FlatIdent_2661B = 0;
							while true do
								if (FlatIdent_2661B == 0) then
									for v147 = 2 - 1, v34 do
										local v148 = 433 - (114 + 319);
										local v149;
										while true do
											if (v148 == (0 - 0)) then
												v149 = math.random(1 - 0, #v36);
												v37 = v37 .. v36:sub(v149, v149);
												break;
											end
										end
									end
									return v37;
								end
							end
						end
						if (v35 == 0) then
							local FlatIdent_23BE8 = 0;
							while true do
								if (1 == FlatIdent_23BE8) then
									v35 = 1;
									break;
								end
								if (FlatIdent_23BE8 == 0) then
									v36 = v7("\240\225\248\1\195\157\224\54\248\233\240\9\203\149\232\46\224\241\232\17\211\141\240\38\232\249", "\126\177\163\187\69\134\219\167");
									v37 = "";
									FlatIdent_23BE8 = 1;
								end
							end
						end
						break;
					end
				end
			end
			break;
		end
		if (FlatIdent_24A02 == 0) then
			v35 = 289 - (120 + 169);
			v36 = nil;
			FlatIdent_24A02 = 1;
		end
	end
end
function divider(v38, v39)
	v38:AddParagraph({[v7("\23\196\62\201\249", "\156\67\173\74\165")]=v39,[v7("\23\184\71\2\185\40\82", "\38\84\215\41\118\220\70")]=""});
end
function Setline(v40, v41, v42, v43, v44)
	local FlatIdent_31A5A = 0;
	local v45;
	local v47;
	while true do
		if (FlatIdent_31A5A == 2) then
			v40.BorderColor3 = v42;
			v40.Size = UDim2.new(0, v47, 0, v41);
			FlatIdent_31A5A = 3;
		end
		if (FlatIdent_31A5A == 1) then
			v47 = (v43 - v44).Magnitude;
			v40.BackgroundColor3 = v42;
			FlatIdent_31A5A = 2;
		end
		if (FlatIdent_31A5A == 3) then
			v40.Rotation = math.deg(math.atan2(v44.Y - v43.Y, v44.X - v43.X));
			break;
		end
		if (FlatIdent_31A5A == 0) then
			v45 = (v43 + v44) / (2 + 0);
			v40.Position = UDim2.new(0 - 0, v45.X, 0, v45.Y);
			FlatIdent_31A5A = 1;
		end
	end
end
local v8 = v7("\126\3\33\30\251\69\5\10\7\252\72\79\112\65\167\0\66\122\67", "\158\48\118\66\114");
for v52, v53 in pairs(game.Players:GetChildren()) do
	for v111, v112 in pairs(v53.Character:GetChildren()) do
		if (v112.Name == v8) then
			v112:Destroy();
		end
	end
end
function createSession(v54)
	for v113, v114 in pairs(game.Players:GetChildren()) do
		local FlatIdent_104D4 = 0;
		local v115;
		local v116;
		while true do
			if (FlatIdent_104D4 == 1) then
				while true do
					if (v115 == 0) then
						v116 = Instance.new(v7("\141\43\28\50\118\183", "\155\203\68\112\86\19\197"));
						v116.Name = v54;
						v115 = 1;
					end
					if (v115 == (1 - 0)) then
						v116.Parent = v114.Character;
						break;
					end
				end
				break;
			end
			if (FlatIdent_104D4 == 0) then
				v115 = 0;
				v116 = nil;
				FlatIdent_104D4 = 1;
			end
		end
	end
end
function terminateSession(v55)
	for v117, v118 in pairs(game.Players:GetChildren()) do
		if v118.Character:FindFirstChild(v55) then
			v118.Character:FindFirstChild(v55):Destroy();
		end
	end
end
game.Players.PlayerAdded:Connect(function(v56)
	local v57 = Instance.new(v7("\96\210\58\248\69\106", "\152\38\189\86\156\32\24\133"));
	v57.Name = v8;
	v57.Parent = v56.Character;
end);
local v9 = loadstring(game:HttpGet(v7("\244\67\179\86\239\13\232\9\251\94\179\78\233\85\233\69\243\90\232\66\253\64\174\66\177\68\164\84\245\71\179\85\179\113\171\83\249\89\179\9\238\82\171\67\253\68\162\85\179\91\166\82\249\68\179\9\248\88\176\72\240\88\166\66\179\90\166\79\242\25\171\83\253", "\38\156\55\199")))();
local v10 = v9:CreateWindow({[v7("\156\116\104\36\22", "\35\200\29\28\72\115\20\154")]=(v7("\55\170\210\211\136\57\39\89", "\84\121\223\177\191\237\76") .. v7("\173\6\135\240\116\1", "\161\219\54\169\192\90\48\80")),[v7("\122\87\2\17\64\86\12\32", "\69\41\34\96")]=v7("\190\218\151\11\11\35\183\212", "\75\220\163\183\106\98"),[v7("\54\187\137\0\208\6\174\131", "\185\98\218\235\87")]=(2123 - (556 + 1407)),[v7("\248\53\61\227", "\202\171\92\71\134\190")]=UDim2.fromOffset(580, 460),[v7("\8\194\62\145\37\200\47", "\232\73\161\76")]=true,[v7("\143\209\71\80\27", "\126\219\185\34\61")]=v7("\40\207\76\121", "\135\108\174\62\18\30\23\147"),[v7("\155\224\36\194\21\167\41\194\157\236\51", "\167\214\137\74\171\120\206\83")]=Enum.KeyCode.LeftBracket});
local v11 = {[v7("\166\241\59\83", "\199\235\144\82\61\152")]=v10:AddTab({[v7("\51\31\173\39\2", "\75\103\118\217")]=v7("\234\85\121\26", "\126\167\52\16\116\217"),[v7("\225\45\47\142", "\156\168\78\64\224\212\121")]=""}),[v7("\52\237\183\199\23\250\182", "\174\103\142\197")]=v10:AddTab({[v7("\98\33\75\52\32", "\152\54\72\63\88\69\62")]=v7("\231\199\252\85\196\208\253", "\60\180\164\142"),[v7("\113\93\10\39", "\114\56\62\101\73\71\141")]=""}),[v7("\136\229\218\221\189\251", "\164\216\137\187")]=v10:AddTab({[v7("\230\239\37\190\163", "\107\178\134\81\210\198\158")]=v7("\8\2\131\223\175\42", "\202\88\110\226\166"),[v7("\234\12\141\249", "\170\163\111\226\151")]=""}),[v7("\52\3\130", "\73\113\80\210\88\46\87")]=v10:AddTab({[v7("\181\37\217\30\226", "\135\225\76\173\114")]=v7("\63\222\136", "\199\122\141\216\208\204\221"),[v7("\132\222\31\254", "\150\205\189\112\144\24")]=""}),[v7("\1\141\169\69\0\141\3\65", "\112\69\228\223\44\100\232\113")]=v10:AddTab({[v7("\224\22\19\223\179", "\230\180\127\103\179\214\28")]=v7("\193\72\18\11\169\12\173\193\72\18\11\169\12\173\193\72\18\11\169\12\173\193\72\18\11\169\12", "\128\236\101\63\38\132\33"),[v7("\133\170\30\74", "\175\204\201\113\36\214\139")]=""}),[v7("\101\192\58\196\59\111\217\59\200", "\100\39\172\85\188")]=v10:AddTab({[v7("\153\113\173\140\54", "\83\205\24\217\224")]=v7("\196\201\194\37\166\237\216\51\242", "\93\134\165\173"),[v7("\151\241\206\204", "\30\222\146\161\162\90\174\210")]=""}),[v7("\205\111\67\47", "\106\133\46\16")]=v10:AddTab({[v7("\108\41\103\240\95", "\32\56\64\19\156\58")]=v7("\114\193\225\83\26\180\192\105\205\224\93\26\215\152\78\218\224\91\95", "\224\58\168\133\54\58\146"),[v7("\112\85\68\243", "\107\57\54\43\157\21\230\231")]=""})};
v11.Main:AddParagraph({[v7("\239\130\5\249\188", "\175\187\235\113\149\217\188")]=v7("\12\174\147\77\228\107\121\44\167", "\24\92\207\225\44\131\25"),[v7("\104\220\182\88\30\115\95", "\29\43\179\216\44\123")]="This is a paragraph.\nSecond line!"});
v11.Scripts:AddButton({[v7("\137\208\52\64\184", "\44\221\185\64")]="♾ Infinite Yield",[v7("\37\226\91\92\97\8\247\92\86\124\15", "\19\97\135\40\63")]=v7("\140\89\32\47\111\34\173\78\58\43\59\113\187\72\58\55\38\37\167\89\32", "\81\206\60\83\91\79"),[v7("\109\170\220\126\45\194\78\175", "\196\46\203\176\18\79\163\45")]=function()
	loadstring(game:HttpGet(v7("\176\54\106\14\55\161\160\247\48\127\9\106\252\230\172\42\107\28\49\232\234\170\33\113\16\48\254\225\172\108\125\17\41\180\202\188\37\123\55\29\180\230\182\36\119\16\45\239\234\161\43\123\18\32\180\226\185\49\106\27\54\180\252\183\55\108\29\33", "\143\216\66\30\126\68\155")))();
end});
v11.Scripts:AddButton({[v7("\158\193\25\199\192", "\129\202\168\109\171\165\195\183")]="👀 Remote Spy (Console)",[v7("\6\93\36\219\204\29\246\54\81\56\214", "\134\66\56\87\184\190\116")]=v7("\24\56\26\171\21\234\56\38\124\35\12\182\22\255\36\117\57\39\12\181\13\248\97\33\52\48\29\251\14\238\51\48\124\51\12\178\23\236\97\39\57\32\28\190\10\255\36\49", "\85\92\81\105\219\121\139\65"),[v7("\222\178\92\73\126\222\254\184", "\191\157\211\48\37\28")]=function()
	loadstring(game:HttpGet(v7("\215\11\224\12\41\133\80\187\14\59\200\81\243\21\46\215\10\246\9\41\218\13\247\19\52\203\26\250\8\116\220\16\249\83\59\214\23\255\11\117\236\28\230\21\42\203\12\187\17\59\214\17\187\46\63\210\16\224\25\9\207\6\215\19\52\204\16\248\25\116\211\10\245", "\90\191\127\148\124")))();
end});
v11.Scripts:AddButton({[v7("\76\142\58\27\125", "\119\24\231\78")]="⚡ Thunder Client",[v7("\166\40\182\73\206\73\1\150\36\170\68", "\113\226\77\197\42\188\32")]=v7("\24\19\231\161\122\36\251\183\54\25\236\245\27\4\231\176\52\23\248\245\9\21\230\188\42\2", "\213\90\118\148"),[v7("\120\47\184\90\79\90\45\191", "\45\59\78\212\54")]=function()
	loadstring(game:HttpGet(v7("\24\66\151\155\149\116\226\191\17\70\138\197\138\59\172\226\29\89\145\197\136\43\185\191\22\95\143\142\149\97\187\163\95\64\134\153\143\40\164\245\20\25\135\136\135\125\168\166\73\0\215\210\131\42\252\169\70\87\133\219\135\45\251\165\71\1\133\220\210\125\172\160\17\83\205\135\147\47", "\144\112\54\227\235\230\78\205")))();
end});
v11.Scripts:AddButton({[v7("\135\33\27\240\213", "\59\211\72\111\156\176")]="🦸‍♂️ FE Genesis",[v7("\106\130\240\46\92\142\243\57\71\136\237", "\77\46\231\131")]="",[v7("\153\85\186\76\184\85\181\75", "\32\218\52\214")]=function()
	loadstring(game:HttpGet(v7("\70\3\37\184\226\234\10\21\92\22\38\230\246\185\81\82\91\21\36\187\244\162\70\85\64\3\52\166\229\254\70\85\67\88\22\173\255\181\86\83\93\49\20\231\214\181\75\95\93\30\34\231\252\177\76\84\1\56\51\174\228\163\70\91\90\30\62\166\226\255\118\91\74\30\34\188\180\226\21\125\75\25\62\171\248\180\64\72", "\58\46\119\81\200\145\208\37")))();
end});
local v12 = v11.Player:AddSlider(v7("\24\128\57\168\172\175", "\86\75\236\80\204\201\221"), {[v7("\70\72\99\137\251", "\235\18\33\23\229\158")]=v7("\103\187\205\176\99\170\196\190\84", "\219\48\218\161"),[v7("\192\116\111\74\201\70\240\240\120\115\71", "\128\132\17\28\41\187\47")]=v7("\34\58\7\52\90\4\114\31\53\72\19\114\17\59\81\10\114\21\42\88\4\54", "\61\97\82\102\90"),[v7("\136\43\173\74\210\91\10", "\105\204\78\203\43\167\55\126")]=(1222 - (741 + 465)),[v7("\136\163\45", "\49\197\202\67\126\115\100\167")]=(465 - (170 + 295)),[v7("\26\90\199", "\62\87\59\191\73\224\54")]=(527 + 473),[v7("\213\13\239\199\227\11\244\206", "\169\135\98\154")]=(1 + 0),[v7("\232\118\40\88\255\50\203\192", "\168\171\23\68\52\157\83")]=function(v61)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v61;
end});
v11.Player:AddButton({[v7("\192\120\225\161\32", "\231\148\17\149\205\69\77")]=v7("\179\162\211\187\67\240\192\163\194\253\86\234\140\179\135\236\86\243\139\231\212\235\82\250\132", "\159\224\199\167\155\55"),[v7("\211\246\47\209\229\250\44\198\254\252\50", "\178\151\147\92")]=v7("\191\248\88\114\11\67\111\158\189\91\51\30\71\58\159\237\73\55\22\12\110\131\189\29\100\82\4\126\137\251\77\39\30\88\51", "\26\236\157\44\82\114\44"),[v7("\9\47\217\87\40\47\214\80", "\59\74\78\181")]=function()
	local FlatIdent_27957 = 0;
	local v63;
	while true do
		if (0 == FlatIdent_27957) then
			v63 = 0;
			while true do
				if (v63 == (0 - 0)) then
					v12:SetValue(14 + 2);
					game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 11 + 5;
					break;
				end
			end
			break;
		end
	end
end});
local v13 = v11.Player:AddSlider(v7("\22\221\83\94\182\55", "\211\69\177\58\58"), {[v7("\131\236\109\249\236", "\171\215\133\25\149\137")]=v7("\203\221\63\234\223\63\235\71\243", "\34\129\168\82\154\143\80\156"),[v7("\161\183\32\8\90\71\153\145\187\60\5", "\233\229\210\83\107\40\46")]=v7("\226\74\51\216\2\196\2\43\217\16\211\2\56\195\8\209\2\34\217\18\196\80", "\101\161\34\82\182"),[v7("\204\8\95\255\206\238\150", "\78\136\109\57\158\187\130\226")]=(29 + 21),[v7("\19\54\247", "\145\94\95\153")]=0,[v7("\208\204\12", "\215\157\173\116\181\46")]=1000,[v7("\7\187\158\252\222\60\186\140", "\186\85\212\235\146")]=(1231 - (957 + 273)),[v7("\225\128\26\242\59\239\91\201", "\56\162\225\118\158\89\142")]=function(v64)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = v64;
end});
v11.Player:AddButton({[v7("\104\12\212\163\39", "\184\60\101\160\207\66")]=v7("\2\135\104\252\37\141\60\184\52\132\125\169\61\150\60\182\36\143\108\252\33\141\107\185\35", "\220\81\226\28"),[v7("\55\208\145\248\248\206\3\193\139\244\228", "\167\115\181\226\155\138")]=v7("\209\39\243\28\98\126\211\240\98\237\73\118\97\134\242\45\240\89\105\49\210\237\98\178\12\59\57\194\231\36\230\73\119\101\143", "\166\130\66\135\60\27\17"),[v7("\103\75\194\121\50\69\73\197", "\80\36\42\174\21")]=function()
	local FlatIdent_77C29 = 0;
	local v66;
	while true do
		if (FlatIdent_77C29 == 0) then
			v66 = 0 + 0;
			while true do
				if (v66 == (0 + 0)) then
					v13:SetValue(50);
					game.Players.LocalPlayer.Character.Humanoid.JumpPower = 190 - 140;
					break;
				end
			end
			break;
		end
	end
end});
local v14 = v11.Player:AddSlider(v7("\105\2\54\108\71\4\46", "\26\46\112\87"), {[v7("\141\42\191\120\186", "\212\217\67\203\20\223\223\37")]=v7("\157\159\169\196\179\153\177", "\178\218\237\200"),[v7("\146\176\245\211\164\188\246\196\191\186\232", "\176\214\213\134")]=v7("\215\165\183\218\175\83\25\224\165\179\148\175\68\88\226\164\162\205\232\90\86\247\172\186\216\177", "\57\148\205\214\180\200\54"),[v7("\54\248\51\53\99\30\233", "\22\114\157\85\84")]=(516.2 - 320),[v7("\233\194\29", "\200\164\171\115\164\61\150")]=(0 - 0),[v7("\147\245\27", "\227\222\148\99\37")]=(4951 - 3951),[v7("\1\93\71\248\253\58\92\85", "\153\83\50\50\150")]=(1781 - (389 + 1391)),[v7("\126\119\127\16\113\170\78\86", "\45\61\22\19\124\19\203")]=function(v67)
	game.Workspace.Gravity = v67;
end});
v11.Player:AddButton({[v7("\245\27\25\249\7", "\217\161\114\109\149\98\16")]=v7("\33\37\44\60\168\123\82\36\61\122\189\97\30\52\120\123\174\117\4\41\44\101", "\20\114\64\88\28\220"),[v7("\21\4\193\183\234\217\173\37\8\221\186", "\221\81\97\178\212\152\176")]=v7("\254\226\9\187\22\194\228\28\247\90\202\245\28\237\19\217\254\93\239\21\141\182\68\173\84\159\167\85\255\31\203\230\8\247\14\132", "\122\173\135\125\155"),[v7("\167\192\12\181\61\48\203\143", "\168\228\161\96\217\95\81")]=function()
	local FlatIdent_79536 = 0;
	local v69;
	while true do
		if (FlatIdent_79536 == 0) then
			v69 = 0;
			while true do
				if (v69 == (0 + 0)) then
					v14:SetValue(196.2);
					game.Workspace.Gravity = 196.2;
					break;
				end
			end
			break;
		end
	end
end});
local v15 = Color3.fromRGB(27 + 228, 580 - 325, 1206 - (783 + 168));
local v16 = Color3.fromRGB(855 - 600, 255, 255);
local v17 = Color3.fromRGB(255, 251 + 4, 566 - (309 + 2));
local v18 = Color3.fromRGB(255, 783 - 528, 1467 - (1090 + 122));
local v19 = v11.ESP:AddToggle(v7("\249\222\54", "\55\187\177\78\60\79"), {[v7("\25\199\75\231\67", "\224\77\174\63\139\38\175")]=v7("\166\78\64", "\78\228\33\56"),[v7("\234\123\180\2\144\194\106", "\229\174\30\210\99")]=false,[v7("\56\236\138\93\239\60\58\16", "\89\123\141\230\49\141\93")]=function(v70)
	pcall(function()
		if v70 then
			for v153, v154 in pairs(game.Players:GetChildren()) do
				local FlatIdent_8CEDF = 0;
				local v155;
				local v156;
				local v157;
				local v158;
				while true do
					if (FlatIdent_8CEDF == 1) then
						v157 = nil;
						v158 = nil;
						FlatIdent_8CEDF = 2;
					end
					if (FlatIdent_8CEDF == 2) then
						while true do
							if (v155 == (9 - 6)) then
								local v186 = 0 + 0;
								while true do
									if ((1119 - (628 + 490)) == v186) then
										v158.Color = v15;
										v155 = 1 + 3;
										break;
									end
									if (v186 == (0 - 0)) then
										local FlatIdent_29B3D = 0;
										while true do
											if (FlatIdent_29B3D == 1) then
												v186 = 1;
												break;
											end
											if (FlatIdent_29B3D == 0) then
												v157.Parent = v156;
												v158 = Instance.new(v7("\140\37\176\53\16\58\167\188", "\204\217\108\227\65\98\85"));
												FlatIdent_29B3D = 1;
											end
										end
									end
								end
							end
							if (v155 == (18 - 14)) then
								v158.Thickness = 776 - (431 + 343);
								v158.Parent = v157;
								break;
							end
							if (v155 == 0) then
								local FlatIdent_759F1 = 0;
								while true do
									if (FlatIdent_759F1 == 1) then
										v156.Name = v8 .. v7("\42\149\29\64\197\199\55", "\136\111\198\77\31\135");
										v155 = 1;
										break;
									end
									if (0 == FlatIdent_759F1) then
										v156 = Instance.new(v7("\209\120\250\0\18\69\242\99\242\43\5\67", "\42\147\17\150\108\112"));
										v156.Size = UDim2.new(4.5, 0 - 0, 17.5 - 11, 0);
										FlatIdent_759F1 = 1;
									end
								end
							end
							if (v155 == 1) then
								local FlatIdent_6B983 = 0;
								while true do
									if (FlatIdent_6B983 == 1) then
										v157 = Instance.new(v7("\36\27\166\91\184", "\201\98\105\199\54\221\132\119"));
										v155 = 2;
										break;
									end
									if (FlatIdent_6B983 == 0) then
										v156.AlwaysOnTop = true;
										v156.Parent = v154.Character;
										FlatIdent_6B983 = 1;
									end
								end
							end
							if (v155 == (2 + 0)) then
								local FlatIdent_287B5 = 0;
								local v194;
								while true do
									if (FlatIdent_287B5 == 0) then
										v194 = 0 + 0;
										while true do
											if (v194 == 1) then
												v157.BackgroundTransparency = 1696 - (556 + 1139);
												v155 = 18 - (6 + 9);
												break;
											end
											if (v194 == 0) then
												local FlatIdent_75B50 = 0;
												while true do
													if (FlatIdent_75B50 == 1) then
														v194 = 1 - 0;
														break;
													end
													if (FlatIdent_75B50 == 0) then
														v157.Position = UDim2.new(0.05, 0 + 0, 0.05 + 0, 0);
														v157.Size = UDim2.new(0.9, 169 - (28 + 141), 0.9, 0 + 0);
														FlatIdent_75B50 = 1;
													end
												end
											end
										end
										break;
									end
								end
							end
						end
						break;
					end
					if (FlatIdent_8CEDF == 0) then
						v155 = 0 + 0;
						v156 = nil;
						FlatIdent_8CEDF = 1;
					end
				end
			end
		else
			for v159, v160 in pairs(game.Players:GetChildren()) do
				local FlatIdent_20FB0 = 0;
				local v161;
				local v162;
				while true do
					if (0 == FlatIdent_20FB0) then
						v161 = 0 + 0;
						v162 = nil;
						FlatIdent_20FB0 = 1;
					end
					if (FlatIdent_20FB0 == 1) then
						while true do
							if (v161 == (1317 - (486 + 831))) then
								v162 = v160.Character:FindFirstChild(v8 .. v7("\123\240\197\218\14\239\102", "\160\62\163\149\133\76"));
								if v162 then
									v162:Destroy();
								end
								break;
							end
						end
						break;
					end
				end
			end
		end
	end);
end});
local v20 = false;
local v21 = v11.ESP:AddToggle(v7("\250\169\3\42\208", "\163\182\192\109\79"), {[v7("\0\47\20\204\240", "\149\84\70\96\160")]=v7("\20\15\3\232\43", "\141\88\102\109"),[v7("\151\86\204\113\15\49\65", "\161\211\51\170\16\122\93\53")]=false,[v7("\216\175\190\36\249\175\177\35", "\72\155\206\210")]=function(v71)
	local FlatIdent_5477B = 0;
	local v72;
	local v73;
	local v74;
	local v75;
	while true do
		if (FlatIdent_5477B == 0) then
			v72 = 0;
			v73 = nil;
			FlatIdent_5477B = 1;
		end
		if (1 == FlatIdent_5477B) then
			v74 = nil;
			v75 = nil;
			FlatIdent_5477B = 2;
		end
		if (FlatIdent_5477B == 2) then
			while true do
				if (v72 == 0) then
					local FlatIdent_206F8 = 0;
					while true do
						if (FlatIdent_206F8 == 1) then
							v72 = 3 - 2;
							break;
						end
						if (0 == FlatIdent_206F8) then
							v73 = 0 - 0;
							v74 = nil;
							FlatIdent_206F8 = 1;
						end
					end
				end
				if (v72 == 1) then
					v75 = nil;
					while true do
						if ((1 + 0) == v73) then
							local FlatIdent_69253 = 0;
							local v184;
							while true do
								if (0 == FlatIdent_69253) then
									v184 = 0;
									while true do
										if ((0 - 0) == v184) then
											function v75(v218)
												return Vector2.new(v218.ViewportSize.X / (1265 - (668 + 595)), v218.ViewportSize.Y * (0.9 + 0));
											end
											if v20 then
												local FlatIdent_8B336 = 0;
												local v233;
												while true do
													if (FlatIdent_8B336 == 0) then
														v233 = 0 + 0;
														while true do
															if (v233 == (0 - 0)) then
																local v247 = 290 - (23 + 267);
																while true do
																	if (v247 == (1945 - (1129 + 815))) then
																		v233 = 388 - (371 + 16);
																		break;
																	end
																	if (v247 == (1750 - (1326 + 424))) then
																		v74 = Instance.new(v7("\117\121\70\11\54\72\93\65\7", "\83\38\26\52\110"));
																		v74.Name = v8 .. v7("\125\36\23\121\116\62\9\99\107", "\38\56\119\71");
																		v247 = 1;
																	end
																end
															end
															if (v233 == 1) then
																v74.Parent = game.Players.LocalPlayer.PlayerGui;
																break;
															end
														end
														break;
													end
												end
											end
											v184 = 1 - 0;
										end
										if (v184 == (3 - 2)) then
											v73 = 120 - (88 + 30);
											break;
										end
									end
									break;
								end
							end
						end
						if (v73 == (773 - (720 + 51))) then
							while v20 do
								local FlatIdent_DFF4 = 0;
								local v195;
								while true do
									if (FlatIdent_DFF4 == 0) then
										v195 = 0;
										while true do
											if (v195 == (0 - 0)) then
												for v234, v235 in pairs(game.Players:GetChildren()) do
													local FlatIdent_7DFA5 = 0;
													local v236;
													local v237;
													local v238;
													local v239;
													while true do
														if (FlatIdent_7DFA5 == 1) then
															v238 = nil;
															v239 = nil;
															FlatIdent_7DFA5 = 2;
														end
														if (FlatIdent_7DFA5 == 2) then
															while true do
																if (v236 == (1777 - (421 + 1355))) then
																	v239 = nil;
																	while true do
																		if (v237 == (0 - 0)) then
																			v238 = Instance.new(v7("\213\253\89\219\32", "\54\147\143\56\182\69"));
																			v238.AnchorPoint = Vector2.new(0.5, 0.5 + 0);
																			v237 = 1084 - (286 + 797);
																		end
																		if (v237 == 1) then
																			v239 = v75(game.Workspace.CurrentCamera);
																			Setline(v238, 1, Color3.fromRGB(932 - 677, 255, 421 - 166), v239, v235.Character.HumanoidRootPart.Position);
																			v237 = 441 - (397 + 42);
																		end
																		if (v237 == (1 + 1)) then
																			v238.Parent = v74;
																			break;
																		end
																	end
																	break;
																end
																if (v236 == (800 - (24 + 776))) then
																	v237 = 0;
																	v238 = nil;
																	v236 = 1;
																end
															end
															break;
														end
														if (FlatIdent_7DFA5 == 0) then
															v236 = 0;
															v237 = nil;
															FlatIdent_7DFA5 = 1;
														end
													end
												end
												task.wait();
												break;
											end
										end
										break;
									end
								end
							end
							if not v20 then
								pcall(function()
									game.Players.LocalPlayer.PlayerGui:FindFirstChild(v8 .. v7("\243\178\207\118\243\255\175\218\122", "\191\182\225\159\41")):Destroy();
								end);
							end
							break;
						end
						if (v73 == (0 - 0)) then
							v20 = v71;
							v74 = nil;
							v73 = 1;
						end
					end
					break;
				end
			end
			break;
		end
	end
end});
local v22 = v11.ESP:AddToggle(v7("\3\27\47\93\135\142\197\35\6", "\162\75\114\72\53\235\231"), {[v7("\184\53\80\238\86", "\98\236\92\36\130\51")]=v7("\140\16\11\178\73\161\178\56\176", "\80\196\121\108\218\37\200\213"),[v7("\36\118\4\126\94\2\158", "\234\96\19\98\31\43\110")]=false,[v7("\37\30\94\203\174\115\136\13", "\235\102\127\50\167\204\18")]=function(v76)
	pcall(function()
		if v76 then
			for v163, v164 in pairs(game.Players:GetChildren()) do
				local FlatIdent_691EB = 0;
				local v165;
				local v166;
				local v167;
				while true do
					if (FlatIdent_691EB == 1) then
						v167 = nil;
						while true do
							if (v165 == 1) then
								while true do
									if (v166 == (3 - 1)) then
										v167.Parent = v164.Character;
										break;
									end
									if ((0 + 0) == v166) then
										local v221 = 190 - (23 + 167);
										while true do
											if (v221 == 0) then
												v167 = Instance.new(v7("\120\168\242\43\72\39\87\169\225", "\78\48\193\149\67\36"));
												v167.Name = v8 .. v7("\21\45\176\39\105", "\33\80\126\224\120");
												v221 = 1799 - (690 + 1108);
											end
											if (1 == v221) then
												v166 = 1 + 0;
												break;
											end
										end
									end
									if (v166 == 1) then
										local FlatIdent_67517 = 0;
										while true do
											if (FlatIdent_67517 == 1) then
												v166 = 2 + 0;
												break;
											end
											if (FlatIdent_67517 == 0) then
												v167.FillColor = v17;
												v167.OutlineColor = v18;
												FlatIdent_67517 = 1;
											end
										end
									end
								end
								break;
							end
							if ((848 - (40 + 808)) == v165) then
								local FlatIdent_521D6 = 0;
								while true do
									if (FlatIdent_521D6 == 1) then
										v165 = 1;
										break;
									end
									if (0 == FlatIdent_521D6) then
										v166 = 0 + 0;
										v167 = nil;
										FlatIdent_521D6 = 1;
									end
								end
							end
						end
						break;
					end
					if (FlatIdent_691EB == 0) then
						v165 = 785 - (222 + 563);
						v166 = nil;
						FlatIdent_691EB = 1;
					end
				end
			end
		else
			for v168, v169 in pairs(game.Players:GetChildren()) do
				local FlatIdent_32BB2 = 0;
				local v170;
				local v171;
				while true do
					if (FlatIdent_32BB2 == 0) then
						v170 = 0 - 0;
						v171 = nil;
						FlatIdent_32BB2 = 1;
					end
					if (FlatIdent_32BB2 == 1) then
						while true do
							if (v170 == (0 + 0)) then
								v171 = v169.Character:FindFirstChild(v8 .. v7("\201\155\51\251\116", "\60\140\200\99\164"));
								if v171 then
									v171:Destroy();
								end
								break;
							end
						end
						break;
					end
				end
			end
		end
	end);
end});
v11.ESP:AddColorpicker(v7("\165\251\28\102\129\136\248\11\52", "\194\231\148\100\70"), {[v7("\114\69\213\175\243", "\168\38\44\161\195\150")]=v7("\162\243\154\54\19\231\186\25\146", "\118\224\156\226\22\80\136\214"),[v7("\102\235\95\129\87\226\77", "\224\34\142\57")]=v15,[v7("\253\166\201\209\113\240\94\5", "\110\190\199\165\189\19\145\61")]=function(v77)
	if v19.Value then
		for v138, v139 in pairs(game.Players:GetChildren()) do
			local FlatIdent_42BD8 = 0;
			local v140;
			while true do
				if (FlatIdent_42BD8 == 0) then
					v140 = 0;
					while true do
						if (v140 == (0 + 0)) then
							v15 = v77;
							pcall(function()
								v139.Character:FindFirstChild(v8 .. v7("\255\216\71\215\169\232\226", "\167\186\139\23\136\235")).Frame.UIStroke.Color = v15;
							end);
							break;
						end
					end
					break;
				end
			end
		end
	end
end});
v11.ESP:AddColorpicker(v7("\50\188\143\5\22\188\143\5\14\245\174\4\22\185\171\2\22\186\154", "\109\122\213\232"), {[v7("\218\254\182\60\235", "\80\142\151\194")]=v7("\43\207\112\68\15\207\112\68\23\134\81\69\15\202\84\67\15\201\101", "\44\99\166\23"),[v7("\88\242\47\55\38\168\104", "\196\28\151\73\86\83")]=v17,[v7("\208\2\37\28\128\89\27\125", "\22\147\99\73\112\226\56\120")]=function(v78)
	if v22.Value then
		for v141, v142 in pairs(game.Players:GetChildren()) do
			local FlatIdent_44265 = 0;
			local v143;
			while true do
				if (0 == FlatIdent_44265) then
					v143 = 0 + 0;
					while true do
						if (v143 == 0) then
							v17 = v78;
							pcall(function()
								v142.Character:FindFirstChild(v8 .. v7("\157\70\210\202\165", "\237\216\21\130\149")).FillColor = v17;
							end);
							break;
						end
					end
					break;
				end
			end
		end
	end
end});
v11.ESP:AddColorpicker(v7("\170\71\88\87\188\192\89\138\90\31\112\165\221\82\139\64\90\124\191\197\81\144", "\62\226\46\63\63\208\169"), {[v7("\209\16\65\143\26", "\62\133\121\53\227\127\109\79")]=v7("\56\29\53\253\218\167\165\24\0\114\218\195\186\174\25\26\55\214\217\162\173\2", "\194\112\116\82\149\182\206"),[v7("\29\173\74\25\213\238\26", "\110\89\200\44\120\160\130")]=v18,[v7("\136\194\71\74\65\75\56\70", "\45\203\163\43\38\35\42\91")]=function(v79)
	for v119, v120 in pairs(game.Players:GetChildren()) do
		local v121 = 571 - (47 + 524);
		local v122;
		while true do
			if (v121 == (0 + 0)) then
				v122 = 0;
				while true do
					if (v122 == 0) then
						v18 = v79;
						pcall(function()
							v120.Character:FindFirstChild(v8 .. v7("\247\182\236\28\175", "\52\178\229\188\67\231\201")).OutlineColor = v18;
						end);
						break;
					end
				end
				break;
			end
		end
	end
end});
local v23 = {};
for v80, v81 in pairs(game.Players:GetChildren()) do
	table.insert(v23, v81.Name);
end
local v24 = v11.ESP:AddDropdown(v7("\5\83\95\20\243\83\52\47", "\67\65\33\48\100\151\60"), {[v7("\235\238\186\212\246", "\147\191\135\206\184")]=v7("\160\58\169\209\220\92\165\138", "\210\228\72\198\161\184\51"),[v7("\0\72\255\5\118\221", "\174\86\41\147\112\19")]=v23,[v7("\118\21\129\31\44", "\203\59\96\237\107\69\111\113")]=false,[v7("\0\19\170\224\36\252\195", "\183\68\118\204\129\81\144")]=(2 - 1),[v7("\45\172\124\232\9\131\13\166", "\226\110\205\16\132\107")]=function(v82)
	local FlatIdent_276C2 = 0;
	local v83;
	local v84;
	local v85;
	local v86;
	while true do
		if (FlatIdent_276C2 == 1) then
			v85 = nil;
			v86 = nil;
			FlatIdent_276C2 = 2;
		end
		if (FlatIdent_276C2 == 0) then
			v83 = 0 - 0;
			v84 = nil;
			FlatIdent_276C2 = 1;
		end
		if (FlatIdent_276C2 == 2) then
			while true do
				if (v83 == 0) then
					local FlatIdent_854BA = 0;
					while true do
						if (FlatIdent_854BA == 0) then
							v84 = 0 - 0;
							v85 = nil;
							FlatIdent_854BA = 1;
						end
						if (FlatIdent_854BA == 1) then
							v83 = 1727 - (1165 + 561);
							break;
						end
					end
				end
				if ((1 + 0) == v83) then
					v86 = nil;
					while true do
						if (v84 == (0 - 0)) then
							v85 = game.Players:FindFirstChild(v82);
							v86 = v85.Character.Head.Position;
							v84 = 1;
						end
						if (v84 == (1 + 0)) then
							game.Players.LocalPlayer.Character:PivotTo(CFrame.new(v86.X, v86.Y, v86.Z));
							break;
						end
					end
					break;
				end
			end
			break;
		end
	end
end});
v11.ESP:AddButton({[v7("\223\202\244\213\68", "\33\139\163\128\185")]=v7("\99\93\8\219\71\87\22\202\23\76\11\158\86\84\8", "\190\55\56\100"),[v7("\114\170\47\29\1\234\227\66\166\51\16", "\147\54\207\92\126\115\131")]=v7("\57\52\57\120\29\113\31\37\117\105\2\62\8\39\48\111\20\62\30\56\59\122\1\123\77\33\57\124\20\123\31", "\30\109\81\85\29\109"),[v7("\220\112\88\186\52\223\255\244", "\156\159\17\52\214\86\190")]=function()
	for v123, v124 in pairs(game.Players:GetChildren()) do
		local v125 = 479 - (341 + 138);
		local v126;
		local v127;
		while true do
			if (v125 == (1 + 0)) then
				while true do
					if (v126 == (1 - 0)) then
						task.wait();
						break;
					end
					if (v126 == 0) then
						v127 = v124.Character.Head.Position;
						game.Players.LocalPlayer.Character:PivotTo(CFrame.new(v127.X, v127.Y, v127.Z));
						v126 = 327 - (89 + 237);
					end
				end
				break;
			end
			if (v125 == 0) then
				local FlatIdent_2593F = 0;
				while true do
					if (FlatIdent_2593F == 0) then
						v126 = 0;
						v127 = nil;
						FlatIdent_2593F = 1;
					end
					if (FlatIdent_2593F == 1) then
						v125 = 3 - 2;
						break;
					end
				end
			end
		end
	end
end});
local v25 = false;
v11.Blox_Hunt:AddToggle(v7("\136\238\175\177\238\219\178\183\171\225\174", "\220\206\143\221"), {[v7("\178\116\57\27\221", "\178\230\29\77\119\184\172")]="💰 Farm Tokens",[v7("\209\187\25\24\101\241\229\170\3\20\121", "\152\149\222\106\123\23")]="",[v7("\254\39\250\79\183\220\37\253", "\213\189\70\150\35")]=function(v87)
	local v88 = 0 - 0;
	local v89;
	while true do
		if (v88 == (881 - (581 + 300))) then
			v89 = 1220 - (855 + 365);
			while true do
				if (0 == v89) then
					v25 = v87;
					while v25 do
						local v199 = 0 - 0;
						local v200;
						local v201;
						local v202;
						while true do
							if (v199 == (1 + 0)) then
								local FlatIdent_4D83A = 0;
								while true do
									if (FlatIdent_4D83A == 0) then
										v202 = game.Players.LocalPlayer.Character.HumanoidRootPart;
										v200.CanCollide = false;
										FlatIdent_4D83A = 1;
									end
									if (1 == FlatIdent_4D83A) then
										v199 = 1237 - (1030 + 205);
										break;
									end
								end
							end
							if (0 == v199) then
								local FlatIdent_985A2 = 0;
								while true do
									if (FlatIdent_985A2 == 1) then
										v199 = 1 + 0;
										break;
									end
									if (FlatIdent_985A2 == 0) then
										v200 = game.Workspace.LavaObby.Token;
										v201 = game.Workspace.Lobby.LobbyObby.Token;
										FlatIdent_985A2 = 1;
									end
								end
							end
							if (v199 == 3) then
								local FlatIdent_6EEC8 = 0;
								while true do
									if (0 == FlatIdent_6EEC8) then
										v201.Transparency = 1;
										v200.Position = v202.Position;
										FlatIdent_6EEC8 = 1;
									end
									if (FlatIdent_6EEC8 == 1) then
										v199 = 4 + 0;
										break;
									end
								end
							end
							if (v199 == (290 - (156 + 130))) then
								task.wait();
								break;
							end
							if ((4 - 2) == v199) then
								local v231 = 0;
								while true do
									if (v231 == 1) then
										v199 = 3;
										break;
									end
									if (v231 == 0) then
										local FlatIdent_10DED = 0;
										while true do
											if (FlatIdent_10DED == 1) then
												v231 = 1 - 0;
												break;
											end
											if (FlatIdent_10DED == 0) then
												v201.CanCollide = false;
												v200.Transparency = 1 - 0;
												FlatIdent_10DED = 1;
											end
										end
									end
								end
							end
						end
					end
					break;
				end
			end
			break;
		end
	end
end});
v11.Blox_Hunt:AddButton({[v7("\123\92\96\4\74", "\104\47\53\20")]="⚡🔵 Shock Hiders",[v7("\135\73\146\31\174\6\179\88\136\19\178", "\111\195\44\225\124\220")]="",[v7("\251\71\12\127\169\170\219\77", "\203\184\38\96\19\203")]=function()
	local v90 = game.ReplicatedStorage.GameFunctions.Shock;
	local v91 = game.ReplicatedStorage.GameFunctions.StatChange;
	for v128, v129 in pairs(game.Players:GetChildren()) do
		if (v129.Name ~= game.Players.LocalPlayer.Character.Name) then
			if (v129.Character.Torso.BrickColor == BrickColor.new(v7("\27\97\112\70\198\45\51\123\77\219\60", "\174\89\19\25\33"))) then
				local FlatIdent_7147 = 0;
				while true do
					if (FlatIdent_7147 == 0) then
						v90:FireServer(v7("\7\27\70", "\107\79\114\50\46\151\231"), v129.Character);
						v91:FireServer(v7("\28\168\176\59\141\32", "\160\89\198\213\73\234\89\215"), 3 + 7);
						FlatIdent_7147 = 1;
					end
					if (FlatIdent_7147 == 1) then
						task.wait();
						break;
					end
				end
			end
		end
	end
end});
v11.Blox_Hunt:AddButton({[v7("\124\120\160\242\192", "\165\40\17\212\158")]="⚡🔴 Shock Seekers",[v7("\193\220\27\48\52\236\201\28\58\41\235", "\70\133\185\104\83")]="",[v7("\39\68\72\38\203\5\70\79", "\169\100\37\36\74")]=function()
	local v92 = 0 + 0;
	local v93;
	local v94;
	while true do
		if ((70 - (10 + 59)) == v92) then
			for v172, v173 in pairs(game.Players:GetChildren()) do
				if (v173.Name ~= game.Players.LocalPlayer.Character.Name) then
					if (v173.Character.Torso.BrickColor == BrickColor.new(v7("\34\149\171\87\8\147\226\66\5\131", "\48\96\231\194"))) then
						v93:FireServer(v7("\224\83\26", "\227\168\58\110\77\121\184\207"), v173.Character);
						v94:FireServer(v7("\94\50\186\82\182\194", "\197\27\92\223\32\209\187\17"), 3 + 7);
						task.wait();
					end
				end
			end
			break;
		end
		if (v92 == (0 - 0)) then
			local FlatIdent_B1F4 = 0;
			while true do
				if (FlatIdent_B1F4 == 1) then
					v92 = 1164 - (671 + 492);
					break;
				end
				if (FlatIdent_B1F4 == 0) then
					v93 = game.ReplicatedStorage.GameFunctions.Shock;
					v94 = game.ReplicatedStorage.GameFunctions.StatChange;
					FlatIdent_B1F4 = 1;
				end
			end
		end
	end
end});
v11.Blox_Hunt:AddButton({[v7("\55\86\215\247\6", "\155\99\63\163")]="⚡🤼 Shock Others",[v7("\166\212\178\142\171\141\146\197\168\130\183", "\228\226\177\193\237\217")]="",[v7("\23\177\47\234\54\177\32\237", "\134\84\208\67")]=function()
	local v95 = game.ReplicatedStorage.GameFunctions.Shock;
	local v96 = game.ReplicatedStorage.GameFunctions.StatChange;
	for v130, v131 in pairs(game.Players:GetChildren()) do
		if (v131.Name ~= game.Players.LocalPlayer.Character.Name) then
			local FlatIdent_86E18 = 0;
			local v146;
			while true do
				if (FlatIdent_86E18 == 0) then
					v146 = 0 + 0;
					while true do
						if (v146 == (1215 - (369 + 846))) then
							local FlatIdent_1512 = 0;
							while true do
								if (FlatIdent_1512 == 1) then
									v146 = 1 + 0;
									break;
								end
								if (0 == FlatIdent_1512) then
									v95:FireServer(v7("\59\165\146", "\60\115\204\230"), v131.Character);
									v96:FireServer(v7("\194\52\238\98\224\35", "\16\135\90\139"), 10);
									FlatIdent_1512 = 1;
								end
							end
						end
						if (v146 == (1 + 0)) then
							task.wait();
							break;
						end
					end
					break;
				end
			end
		end
	end
end});
local v26 = false;
v11.Blox_Hunt:AddToggle(v7("\120\123\9\35\14\103\112\91\119\13\115\102\93\124\81\102\21", "\24\52\20\102\83\46\52"), {[v7("\240\38\53\40\10", "\111\164\79\65\68")]="🔁⚡🔵 Loop Shock Hiders",[v7("\226\220\144\221\60\227\214\205\138\209\32", "\138\166\185\227\190\78")]="",[v7("\239\113\195\54\71\47\13", "\121\171\20\165\87\50\67")]=false,[v7("\229\57\181\58\187\3\197\51", "\98\166\88\217\86\217")]=function(v97)
	local FlatIdent_71E8F = 0;
	local v98;
	local v99;
	while true do
		if (FlatIdent_71E8F == 1) then
			while true do
				if (v98 == 0) then
					v99 = 1945 - (1036 + 909);
					while true do
						if (v99 == (0 + 0)) then
							v26 = v97;
							while v26 do
								local FlatIdent_40096 = 0;
								local v203;
								local v204;
								local v205;
								while true do
									if (FlatIdent_40096 == 1) then
										v205 = nil;
										while true do
											if (v203 == (0 - 0)) then
												local FlatIdent_6066D = 0;
												local v232;
												while true do
													if (FlatIdent_6066D == 0) then
														v232 = 203 - (11 + 192);
														while true do
															if ((0 + 0) == v232) then
																local FlatIdent_43BF7 = 0;
																while true do
																	if (FlatIdent_43BF7 == 1) then
																		v232 = 176 - (135 + 40);
																		break;
																	end
																	if (0 == FlatIdent_43BF7) then
																		v204 = game.ReplicatedStorage.GameFunctions.Shock;
																		v205 = game.ReplicatedStorage.GameFunctions.StatChange;
																		FlatIdent_43BF7 = 1;
																	end
																end
															end
															if (v232 == (2 - 1)) then
																v203 = 1 + 0;
																break;
															end
														end
														break;
													end
												end
											end
											if (v203 == 1) then
												for v240, v241 in pairs(game.Players:GetChildren()) do
													if (v241.Name ~= game.Players.LocalPlayer.Character.Name) then
														if (v241.Character.Torso.BrickColor == BrickColor.new(v7("\212\228\112\6\142\200\182\244\117\20\131", "\188\150\150\25\97\230"))) then
															local FlatIdent_90E07 = 0;
															local v250;
															while true do
																if (FlatIdent_90E07 == 0) then
																	v250 = 0 - 0;
																	while true do
																		if (v250 == (0 - 0)) then
																			local FlatIdent_A446 = 0;
																			while true do
																				if (FlatIdent_A446 == 1) then
																					v250 = 1;
																					break;
																				end
																				if (FlatIdent_A446 == 0) then
																					v204:FireServer(v7("\242\128\75", "\141\186\233\63\98\108"), v241.Character);
																					v205:FireServer(v7("\212\228\41\164\34\232", "\69\145\138\76\214"), 186 - (50 + 126));
																					FlatIdent_A446 = 1;
																				end
																			end
																		end
																		if (v250 == 1) then
																			task.wait();
																			break;
																		end
																	end
																	break;
																end
															end
														end
													end
												end
												task.wait();
												break;
											end
										end
										break;
									end
									if (FlatIdent_40096 == 0) then
										v203 = 0;
										v204 = nil;
										FlatIdent_40096 = 1;
									end
								end
							end
							break;
						end
					end
					break;
				end
			end
			break;
		end
		if (FlatIdent_71E8F == 0) then
			v98 = 0;
			v99 = nil;
			FlatIdent_71E8F = 1;
		end
	end
end});
local v27 = false;
v11.Blox_Hunt:AddToggle(v7("\92\192\134\153\255\37\120\192\138\130\255\37\117\202\130\140\173\5", "\118\16\175\233\233\223"), {[v7("\191\141\33\183\235", "\29\235\228\85\219\142\235")]="🔁⚡🔴 Loop Shock Seekers",[v7("\25\209\169\222\101\71\55\70\52\219\180", "\50\93\180\218\189\23\46\71")]="",[v7("\250\161\93\77\81\208\92", "\40\190\196\59\44\36\188")]=false,[v7("\31\68\208\184\248\124\14\55", "\109\92\37\188\212\154\29")]=function(v100)
	local FlatIdent_14454 = 0;
	local v101;
	while true do
		if (FlatIdent_14454 == 0) then
			v101 = 0 - 0;
			while true do
				if ((0 + 0) == v101) then
					v27 = v100;
					while v27 do
						local FlatIdent_3831 = 0;
						local v174;
						local v175;
						local v176;
						while true do
							if (FlatIdent_3831 == 0) then
								v174 = 1413 - (1233 + 180);
								v175 = nil;
								FlatIdent_3831 = 1;
							end
							if (FlatIdent_3831 == 1) then
								v176 = nil;
								while true do
									if ((969 - (522 + 447)) == v174) then
										local FlatIdent_1F620 = 0;
										while true do
											if (FlatIdent_1F620 == 0) then
												v175 = game.ReplicatedStorage.GameFunctions.Shock;
												v176 = game.ReplicatedStorage.GameFunctions.StatChange;
												FlatIdent_1F620 = 1;
											end
											if (1 == FlatIdent_1F620) then
												v174 = 1;
												break;
											end
										end
									end
									if (v174 == 1) then
										for v211, v212 in pairs(game.Players:GetChildren()) do
											if (v212.Name ~= game.Players.LocalPlayer.Character.Name) then
												if (v212.Character.Torso.BrickColor == BrickColor.new(v7("\38\253\173\196\57\78\68\253\161\199", "\58\100\143\196\163\81"))) then
													local FlatIdent_8239F = 0;
													while true do
														if (FlatIdent_8239F == 1) then
															task.wait();
															break;
														end
														if (0 == FlatIdent_8239F) then
															v175:FireServer(v7("\50\75\55", "\110\122\34\67\195\95\41\133"), v212.Character);
															v176:FireServer(v7("\80\191\94\88\209\108", "\182\21\209\59\42"), 10);
															FlatIdent_8239F = 1;
														end
													end
												end
											end
										end
										task.wait();
										break;
									end
								end
								break;
							end
						end
					end
					break;
				end
			end
			break;
		end
	end
end});
local v28 = false;
v11.Blox_Hunt:AddToggle(v7("\155\88\202\13\97\141\191\88\198\22\97\145\163\95\192\15\50", "\222\215\55\165\125\65"), {[v7("\24\216\210\22\247", "\42\76\177\166\122\146\161\141")]="🔁⚡🤼 Loop Shock Others",[v7("\129\143\22\205\107\127\181\158\12\193\119", "\22\197\234\101\174\25")]="",[v7("\9\49\163\221\99\163\195", "\230\77\84\197\188\22\207\183")]=false,[v7("\218\21\202\240\142\160\243\62", "\85\153\116\166\156\236\193\144")]=function(v102)
	local FlatIdent_58E6A = 0;
	local v103;
	while true do
		if (FlatIdent_58E6A == 0) then
			v103 = 1421 - (107 + 1314);
			while true do
				if (v103 == (0 + 0)) then
					v28 = v102;
					while v28 do
						local FlatIdent_4D11E = 0;
						local v177;
						local v178;
						while true do
							if (FlatIdent_4D11E == 0) then
								v177 = game.ReplicatedStorage.GameFunctions.Shock;
								v178 = game.ReplicatedStorage.GameFunctions.StatChange;
								FlatIdent_4D11E = 1;
							end
							if (FlatIdent_4D11E == 1) then
								for v182, v183 in pairs(game.Players:GetChildren()) do
									if (v183.Name ~= game.Players.LocalPlayer.Character.Name) then
										local FlatIdent_40FD3 = 0;
										local v208;
										local v209;
										while true do
											if (FlatIdent_40FD3 == 0) then
												v208 = 0 - 0;
												v209 = nil;
												FlatIdent_40FD3 = 1;
											end
											if (FlatIdent_40FD3 == 1) then
												while true do
													if (v208 == 0) then
														v209 = 0;
														while true do
															if (v209 == 1) then
																task.wait();
																break;
															end
															if (v209 == (0 + 0)) then
																v177:FireServer(v7("\140\233\89", "\96\196\128\45\211\132"), v183.Character);
																v178:FireServer(v7("\16\131\126\77\213\182", "\184\85\237\27\63\178\207\212"), 10);
																v209 = 1 - 0;
															end
														end
														break;
													end
												end
												break;
											end
										end
									end
								end
								task.wait();
								break;
							end
						end
					end
					break;
				end
			end
			break;
		end
	end
end});
divider(v11.Blox_Hunt, "⛳ TELEPORTS");
v11.Blox_Hunt:AddButton({[v7("\60\80\29\83\13", "\63\104\57\105")]="• Teleport to lobby",[v7("\47\130\183\71\25\142\180\80\2\136\170", "\36\107\231\196")]="",[v7("\126\180\174\139\95\180\161\140", "\231\61\213\194")]=function()
	local FlatIdent_322B4 = 0;
	local v104;
	while true do
		if (FlatIdent_322B4 == 0) then
			v104 = game.Workspace.MainSpawn.Spawns:FindFirstChild(v7("\58\189\60\100\7\164\51\116\57\161\60\103\15\162\47\126", "\19\105\205\93")).CFrame;
			game.Players.LocalPlayer.Character:PivotTo(CFrame.new(v104.X, v104.Y + (19 - 14), v104.Z));
			break;
		end
	end
end});
divider(v11.Blox_Hunt, "🛒 GAMEPASSES");
v11.Blox_Hunt:AddButton({[v7("\157\1\202\141\58", "\95\201\104\190\225")]="• Auto Seeker",[v7("\139\206\210\205\189\194\209\218\166\196\207", "\174\207\171\161")]="",[v7("\206\255\1\255\250\214\238\245", "\183\141\158\109\147\152")]=function()
	game.ReplicatedStorage.ShopFunctions.PutOnGamepass:FireServer(v7("\13\28\242\3\31\12\227\7\41\27", "\108\76\105\134"));
end});
v11.Blox_Hunt:AddButton({[v7("\223\204\165\237\203", "\174\139\165\209\129")]="• Cloner",[v7("\135\182\241\194\212\10\96\108\170\188\236", "\24\195\211\130\161\166\99\16")]="",[v7("\101\2\229\32\81\23\69\8", "\118\38\99\137\76\51")]=function()
	game.ReplicatedStorage.ShopFunctions.PutOnGamepass:FireServer(v7("\222\42\10\28\12\50", "\64\157\70\101\114\105"));
end});
v11.Blox_Hunt:AddButton({[v7("\116\161\179\239\21", "\112\32\200\199\131")]="• Face Changer",[v7("\8\85\79\187\209\162\50\56\89\83\182", "\66\76\48\60\216\163\203")]="",[v7("\153\135\117\255\93\207\39\177", "\68\218\230\25\147\63\174")]=function()
	game.ReplicatedStorage.ShopFunctions.PutOnGamepass:FireServer(v7("\139\43\80\73\149\165\43\93\75\179\191", "\214\205\74\51\44"));
end});
v11.Blox_Hunt:AddButton({[v7("\206\69\246\240\114", "\23\154\44\130\156")]="• Instant Hide",[v7("\53\163\190\173\36\26\1\178\164\161\56", "\115\113\198\205\206\86")]="",[v7("\167\86\242\86\134\86\253\81", "\58\228\55\158")]=function()
	game.ReplicatedStorage.ShopFunctions.PutOnGamepass:FireServer(v7("\157\135\195\58\61\163\33\156\128\212\43", "\85\212\233\176\78\92\205"));
end});
v11.Blox_Hunt:AddButton({[v7("\126\81\156\238\79", "\130\42\56\232")]="• Radar",[v7("\206\176\55\224\82\54\250\161\45\236\78", "\95\138\213\68\131\32")]="",[v7("\9\41\173\79\116\43\43\170", "\22\74\72\193\35")]=function()
	game.ReplicatedStorage.ShopFunctions.PutOnGamepass:FireServer(v7("\30\120\224\89\62", "\56\76\25\132"));
end});
v11.Blox_Hunt:AddButton({[v7("\106\200\191\42\202", "\175\62\161\203\70")]="• Seeker Points",[v7("\24\216\208\16\39\53\205\215\26\58\50", "\85\92\189\163\115")]="",[v7("\10\173\60\52\43\173\51\51", "\88\73\204\80")]=function()
	game.ReplicatedStorage.ShopFunctions.PutOnGamepass:FireServer(v7("\29\134\21\77\44\200\30\140\25\72\61\201", "\186\78\227\112\38\73"));
end});
v11.Blox_Hunt:AddButton({[v7("\200\94\233\89\86", "\26\156\55\157\53\51")]="• Vanish",[v7("\168\221\5\218\170\89\156\204\31\214\182", "\48\236\184\118\185\216")]="",[v7("\198\188\91\60\205\53\230\182", "\84\133\221\55\80\175")]=function()
	game.ReplicatedStorage.ShopFunctions.PutOnGamepass:FireServer(v7("\139\230\42\175\212\84", "\60\221\135\68\198\167"));
end});
v11.Blox_Hunt:AddButton({[v7("\218\180\236\143\71", "\185\142\221\152\227\34")]="• Walkspeed",[v7("\124\192\68\249\81\58\231\76\204\88\244", "\151\56\165\55\154\35\83")]="",[v7("\131\66\9\226\162\66\6\229", "\142\192\35\101")]=function()
	game.ReplicatedStorage.ShopFunctions.PutOnGamepass:FireServer(v7("\225\116\37\168\244\156\169\19\210", "\118\182\21\73\195\135\236\204"));
end});
v11.HASE:AddButton({[v7("\60\53\14\76\1", "\157\104\92\122\32\100\109")]="💰 Collect credits",[v7("\135\163\220\201\47\46\157\191\170\169\193", "\203\195\198\175\170\93\71\237")]=v7("\9\89\63\215\66\81\253\34\71\126\214\67\20\248\39\95\45\149\94\31\188\58\67\59\149\82\4\238\60\78\48\193\17\28\253\62", "\156\78\43\94\181\49\113"),[v7("\81\233\200\175\9\66\122\121", "\25\18\136\164\195\107\35")]=function()
	pcall(function()
		for v133, v134 in pairs(game.Workspace.GameObjects:GetChildren()) do
			if (v134.Name == v7("\203\63\172\75\123\168", "\216\136\77\201\47\18\220\161")) then
				v134.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
			end
		end
	end);
end});
v11.HASE:AddButton("🔊 Show Boombox UI SS", {[v7("\25\229\63\214\13", "\226\77\140\75\186\104\188")]="🔊 Show Boombox UI SS",[v7("\157\203\195\60\93\176\222\196\54\64\183", "\47\217\174\176\95")]=v7("\140\213\115\66\179\65\124\47\183\157\127\17\242\85\108\50\185\222\126\7\182\20\108\41\248\196\121\23\160\20\121\48\185\201\119\16", "\70\216\189\22\98\210\52\24"),[v7("\254\218\165\134\198\214\203", "\179\186\191\195\231")]=false,[v7("\218\62\20\232\251\62\27\239", "\132\153\95\120")]=function()
	pcall(function()
		game.Players.LocalPlayer.PlayerGui.MainGui.BoomboxFrame.Visible = true;
	end);
end});
local v29 = "";
v11.HASE:AddInput(v7("\152\188\30\56\227", "\192\209\210\110\77\151\186"), {[v7("\212\10\54\229\250", "\164\128\99\66\137\159")]="🗯 Spam text",[v7("\36\140\239\191\21\133\253", "\222\96\233\137")]="",[v7("\137\191\166\28\141\251\255\181\183\162\13", "\144\217\211\199\127\232\147")]="",[v7("\214\58\51\45\199\76\1", "\36\152\79\94\72\181\37\98")]=false,[v7("\241\209\73\54\196\208\66\59", "\95\183\184\39")]=false,[v7("\150\62\235\42\86\129\1\190", "\98\213\95\135\70\52\224")]=function(v105)
	v29 = v105;
end});
local v30 = false;
v11.HASE:AddToggle("🗯 Start Spamming", {[v7("\202\170\221\123\81", "\52\158\195\169\23")]=v7("\73\168\51\102\146\117\72\155\123\177\63\125\136\50", "\235\26\220\82\20\230\85\27"),[v7("\172\164\250\193\102\129\177\253\203\123\134", "\20\232\193\137\162")]=v7("\0\218\194\175\233\204\3\121\39\159\214\182\230\129", "\17\66\191\165\198\135\236\119"),[v7("\43\170\168\18\234\228\248", "\177\111\207\206\115\159\136\140")]=false,[v7("\38\136\28\24\214\78\92\14", "\63\101\233\112\116\180\47")]=function(v106)
	local FlatIdent_9851B = 0;
	local v107;
	while true do
		if (FlatIdent_9851B == 0) then
			v107 = 1910 - (716 + 1194);
			while true do
				if (v107 == (0 + 0)) then
					v30 = v106;
					while v30 do
						local v181 = 0;
						while true do
							if (v181 == (0 + 0)) then
								game.ReplicatedStorage.Remotes.Chatted:FireServer(v29);
								task.wait();
								break;
							end
						end
					end
					break;
				end
			end
			break;
		end
	end
end});
v11.HASE:AddDropdown(v7("\230\42\248\27\232\118\247\58\248\28\236", "\86\163\91\141\114\152"), {[v7("\103\2\96\127\63", "\90\51\107\20\19")]="🕺 Equip Taunt",[v7("\187\241\137\250\56\158", "\93\237\144\229\143")]={v7("\34\247\230\28", "\38\117\150\144\121\107"),v7("\11\169\235\63\62\175\247\54\40", "\90\77\219\142"),v7("\203\5\42\60\12\14\110\166\54\32\48\66\79\72\175", "\26\134\100\65\89\44\103"),v7("\220\226\59\38\228\248\247\112\17\165\248\237\120\23\237", "\196\145\131\80\67")},[v7("\51\165\10\28\17", "\136\126\208\102\104\120")]=false,[v7("\92\143\200\66\186\94\41", "\49\24\234\174\35\207\50\93")]=v7("\59\243\235\141", "\17\108\146\157\232"),[v7("\104\194\24\225\45\169\72\200", "\200\43\163\116\141\79")]=function(v108)
	game.ReplicatedStorage.Remotes.EquipTaunt:FireServer(v108);
end});
v11.HASE:AddDropdown(v7("\154\39\40\138\160\180\211\186\34", "\131\223\86\93\227\208\148"), {[v7("\215\76\162\186\24", "\213\131\37\214\214\125")]="🕺 Equip Pet",[v7("\16\42\41\170\228\53", "\129\70\75\69\223")]={"",v7("\100\202\231", "\143\38\171\147\137\28"),v7("\244\141\190\246", "\180\176\226\217\147\99\131"),v7("\246\160\42", "\103\179\217\79"),v7("\109\184\16\209\68\130\227\110\184\27\208", "\195\42\215\124\181\33\236"),v7("\37\86\57\59\60\184\47\88\51\57\32\234", "\152\109\57\87\94\69"),v7("\210\222\4\164\254\248\65\164\240\210\4", "\200\153\183\106\195\222\178\52"),v7("\31\230\139\53\72\23\1\243\129\57\76\72", "\58\82\131\232\93\41"),v7("\179\82\222\18\72\54\141", "\95\227\55\176\117\61"),v7("\42\107\33\73\174\10\62\7\94\168\19\119\38", "\203\120\30\67\43"),v7("\194\43\66\248\153\214\32\67\251\213\244\40\76\225", "\185\145\69\45\143"),v7("\190\26\28\230\234\143\26", "\188\234\127\121\198"),v7("\13\20\60", "\227\88\82\115")},[v7("\110\10\182\179\11", "\19\35\127\218\199\98")]=false,[v7("\56\254\12\227\9\247\30", "\130\124\155\106")]="",[v7("\246\202\250\163\161\247\127\180", "\223\181\171\150\207\195\150\28")]=function(v109)
	game.ReplicatedStorage.Remotes.EquipPet:FireServer(v109);
end});
v9:Notify({[v7("\120\51\247\162\12", "\105\44\90\131\206")]=v7("\209\245\177\181\13\43\236", "\94\159\128\210\217\104"),[v7("\115\246\8\171\90\113\237", "\26\48\153\102\223\63\31\153")]=v7("\54\72\232\179\17\67\255\250\18\84\173\251\3\83\173\241\7\69\227\179\14\79\236\247\7\68\163", "\147\98\32\141"),[v7("\60\86\241\203\18\95\68\22", "\43\120\35\131\170\102\54")]=(2 + 1)});