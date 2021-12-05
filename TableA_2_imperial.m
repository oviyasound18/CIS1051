function TableA_2_imperial
close all
clc
clear all
format short
 A = [%32	0.0886	0.01602	3305	-0.01	1021.2	-0.01	1075.4	1075.4	-3.00E-05	2.187
% 35	0.0999	0.01602	2948	2.99	1022.2	3	1073.7	1076.7	0.00607	2.1764
% 40	0.1217	0.01602	2445	8.02	1023.9	8.02	1070.9	1078.9	0.01617	2.1592
% 45	0.1475	0.01602	2037	13.04	1025.5	13.04	1068.1	1081.1	0.02618	2.1423
% 50	0.178	0.01602	1704	18.06	1027.2	18.06	1065.2	1083.3	0.03607	2.1259
% 52	0.1917	0.01603	1589	20.06	1027.8	20.07	1064.1	1084.2	0.04	2.1195
% 54	0.2064	0.01603	1482	22.07	1028.5	22.07	1063	1085.1	0.04391	2.1131
% 56	0.2219	0.01603	1383	24.08	1029.1	24.08	1061.9	1085.9	0.04781	2.1068
% 58	0.2386	0.01603	1292	26.08	1029.8	26.08	1060.7	1086.8	0.05159	2.1005
% 60	0.2563	0.01604	1207	28.08	1030.4	28.08	1059.6	1087.7	0.05555	2.0943
% 62	0.2751	0.01604	1129	30.09	1031.1	30.09	1058.5	1088.6	0.0594	2.0882
% 64	0.2952	0.01604	1056	32.09	1031.8	32.09	1057.3	1089.4	0.06323	2.0821
% 66	0.3165	0.01604	988.4	34.09	1032.4	34.09	1056.2	1090.3	0.06704	2.0761
% 68	0.3391	0.01605	925.8	36.09	1033.1	36.09	1055.1	1091.2	0.07084	2.0701
% 70	0.3632	0.01605	867.7	38.09	1033.7	38.09	1054	1092	0.07463	2.0642
% 72	0.3887	0.01606	813.7	40.09	1034.4	40.09	1052.8	1092.9	0.07839	2.0584
% 74	0.4158	0.01606	763.5	42.09	1035	42.09	1051.7	1093.8	0.08215	2.0526
% 76	0.4446	0.01606	716.8	44.09	1035.7	44.09	1050.6	1094.7	0.08589	2.0469
% 78	0.475	0.01607	673.3	46.09	1036.3	46.09	1049.4	1095.5	0.08961	2.0412
% 80	0.5073	0.01607	632.8	48.08	1037	48.09	1048.3	1096.4	0.09332	2.0356
% 82	0.5414	0.01608	595	50.08	1037.6	50.08	1047.2	1097.3	0.09701	2.03
% 84	0.5776	0.01608	559.8	52.08	1038.3	52.08	1046	1098.1	0.1007	2.0245
% 86	0.6158	0.01609	527	54.08	1038.9	54.08	1044.9	1099	0.1044	2.019
% 88	0.6562	0.01609	496.3	56.07	1039.6	56.07	1043.8	1099.9	0.108	2.0136
% 90	0.6988	0.0161	467.7	58.07	1040.2	58.07	1042.7	1100.7	0.1117	2.0083
% 92	0.7439	0.01611	440.9	60.06	1040.9	60.06	1041.5	1101.6	0.1153	2.003
% 94	0.7914	0.01611	415.9	62.06	1041.5	62.06	1040.4	1102.4	0.1189	1.9977
% 96	0.8416	0.01612	392.4	64.05	1041.2	64.06	1039.2	1103.3	0.1225	1.9925
% 98	0.8945	0.01612	370.5	66.05	1042.8	66.05	1038.1	1104.2	0.1261	1.9874
100	0.9503	0.01613	350	68.04	1043.5	68.05	1037	1105	0.1296	1.9822
110	1.276	0.01617	265.1	78.02	1046.7	78.02	1031.3	1109.3	0.1473	1.9574
120	1.695	0.01621	203	87.99	1049.9	88	1025.5	1113.5	0.1647	1.9336
130	2.225	0.01625	157.2	97.97	1053	97.98	1019.8	1117.8	0.1817	1.9109
140	2.892	0.01629	122.9	107.95	1056.2	107.96	1014	1121.9	0.1985	1.8892
150	3.722	0.01634	97	117.95	1059.3	117.96	1008.1	1126.1	0.215	1.8684
160	4.745	0.0164	77.2	127.94	1062.3	127.96	1002.2	1130.1	0.2313	1.8484
170	5.996	0.01645	62	137.95	1065.4	137.97	996.2	1134.2	0.2473	1.8293
180	7.515	0.01651	50.2	147.97	1068.3	147.99	990.2	1138.2	0.2631	1.8109
190	9.343	0.01657	41	158	1071.3	158.03	984.1	1142.1	0.2787	1.7932
200	11.529	0.01663	33.6	168.04	1074.2	168.07	977.9	1145.9	0.294	1.7762
210	14.13	0.0167	27.82	178.1	1077	178.1	971.6	1149.7	0.3091	1.7599
212	14.7	0.01672	26.8	180.1	1077.6	180.2	970.3	1150.5	0.3121	1.7567
220	17.19	0.01677	23.15	188.2	1079.8	188.2	965.3	1153.5	0.3241	1.7441
230	20.78	0.01685	19.39	198.3	1082.6	198.3	958.8	1157.1	0.3388	1.7289
240	24.97	0.01692	16.33	208.4	1085.3	208.4	952.3	1160.7	0.3534	1.7143
250	29.82	0.017	13.83	218.5	1087.9	218.6	945.6	1164.2	0.3677	1.7001
260	35.42	0.01708	11.77	228.6	1090.5	228.8	938.8	1167.6	0.3819	1.6864
270	41.85	0.01717	10.07	238.8	1093	239	932	1170.9	0.396	1.6731
280	49.18	0.01726	8.65	249	1095.4	249.2	924.9	1174.1	0.4099	1.6602
290	57.53	0.01735	7.47	259.3	1097.7	259.4	917.8	1177.2	0.4236	1.6477
300	66.98	0.01745	6.472	269.5	1100	269.7	910.4	1180.2	0.4372	1.6356
310	77.64	0.01755	5.632	279.8	1102.1	280.1	903	1183	0.4507	1.6238
320	89.6	0.01765	4.919	290.1	1104.2	290.4	895.3	1185.8	0.464	1.6123
330	103	0.01776	4.312	300.5	1106.2	300.8	887.5	1188.4	0.4772	1.601
340	117.93	0.01787	3.792	310.9	1108	311.3	879.5	1190.8	0.4903	1.5901
350	134.53	0.01799	3.346	321.4	1109.8	321.8	871.3	1193.1	0.5033	1.5793
360	152.92	0.01811	2.961	331.8	1111.4	332.4	862.9	1195.2	0.5162	1.5688
370	173.23	0.01823	2.628	342.4	1112.9	343	854.2	1197.2	0.5289	1.5585
380	195.6	0.01836	2.339	353	1114.3	353.6	845.4	1199	0.5416	1.5483
390	220.2	0.0185	2.087	363.6	1115.6	364.3	836.2	1200.6	0.5542	1.5383
400	247.1	0.01864	1.866	374.3	1116.6	375.1	826.8	1202	0.5667	1.5284
410	276.5	0.01878	1.673	385	1117.6	386	817.2	1203.1	0.5792	1.5187
420	308.5	0.01894	1.502	395.8	1118.3	396.9	807.2	1204.1	0.5915	1.5091
430	343.3	0.01909	1.352	406.7	1118.9	407.9	796.9	1204.8	0.6038	1.4995
440	381.2	0.01926	1.219	417.6	1119.3	419	786.3	1205.3	0.6161	1.49
450	422.1	0.01943	1.1011	428.6	1119.5	430.2	775.4	1205.6	0.6282	1.4806
460	466.3	0.01961	0.9961	439.7	1119.6	441.4	764.1	1205.5	0.6404	1.4712
470	514.1	0.0198	0.9025	450.9	1119.4	452.8	752.4	1205.2	0.6525	1.4618
480	565.5	0.02	0.8187	462.2	1118.9	464.3	740.3	1204.6	0.6646	1.4524
490	620.7	0.02021	0.7436	473.6	1118.3	475.9	727.8	1203.7	0.6767	1.443
500	680	0.02043	0.6761	485.1	1117.4	487.7	714.8	1202.5	0.6888	1.4335
520	811.4	0.02091	0.5605	508.5	1114.8	511.7	687.3	1198.9	0.713	1.4145
540	961.5	0.02145	0.4658	532.6	1111	536.4	657.5	1193.8	0.7374	1.395
560	1131.8	0.02207	0.3877	548.4	1105.8	562	625	1187	0.762	1.3749
580	1324.3	0.02278	0.3225	583.1	1098.9	588.6	589.3	1178	0.7872	1.354
600	1541	0.02363	0.2677	609.9	1090	616.7	549.7	1166.4	0.813	1.3317
620	1784.4	0.02465	0.2209	638.3	1078.5	646.4	505	1151.4	0.8398	1.3075
640	2057.1	0.02593	0.1805	668.7	1063.2	678.6	453.4	1131.9	0.8681	1.2803
660	2362	0.02767	0.1446	702.3	1042.3	714.4	391.1	1105.5	0.899	1.2483
680	2705	0.03032	0.1113	741.7	1011	756.9	309.8	1066.7	0.935	1.2068
700	3090	0.03666	0.0744	801.7	947.7	822.7	167.5	990.2	0.9902	1.1346
705.4	3204	0.05053	0.05053	872.6	872.6	902.5	0	902.5	1.058	1.058];


    T = A(:,1); 
    P= A(:,2);
    vf = A(:,3);
    vg= A(:,4);
    uf = A(:,5);
    ug = A(:,6);
    hf = A(:,7);
    fg = A(:,8);
    hg = A(:,9);
    sf = A(:,10);
    sg = A(:,11);

prompt = 'What value are you looking for? P,vf,vg,uf,ug,hf,fg(hfg),hg,sf,sg,x,v,u,s,h, or vu [T]: ';
str = input(prompt,'s');

 if str == 'P'
    prompt2 = 'What value do you have? T,vf,vg,uf,ug,hf,fg,hg,sf, or sg [T]: ';
    str2= input(prompt2, 's');
    if str2 == 'T'
        prompt3 = 'What is the value for Temperature?: ';
    x = input(prompt3)
        P_k = interp1(T,P,x)
    else
     if str2 == 'vf'
        prompt3 = 'What is the value for vf?: ';
    x = input(prompt3)
     %disp(vf)
%      disp(P)
%      disp(x)
%      vfs = vf(7:end)
%      Ps = P(7:end)
    P_x= interp1(vf,P,x)
         else if str2 == 'vg'
        prompt3 = 'What is the value for vg?: ';
    x = input(prompt3)
    P_x = interp1(vg,P,x)
         else if str2 == 'hf'
        prompt3 = 'What is the value for hf?: ';
    x = input(prompt3)
    P_x = interp1(hf,P,x)
             else if str2 == 'fg'
        prompt3 = 'What is the value for fg?: ';
    x = input(prompt3)
    P_x = interp1(fg,P,x)
                 else if str2 == 'hg'
        prompt3 = 'What is the value for hg: ';
    x = input(prompt3)
    P_x = interp1(hg,P,x)
                     else if str2 == 'sf'
        prompt3 = 'What is the value for sf: ';
    x = input(prompt3)
    P_x = interp1(sf,P,x)
    else if str2 == 'sg'
        prompt3 = 'What is the value for sg?: ';
    x = input(prompt3)
    P_x = interp1(sg,P,x)
    else if str2 == 'uf'
        prompt3 = 'What is the value for uf?: ';
    x = input(prompt3)
    P_x = interp1(uf,P,x)
    else if str2 == 'ug'
        prompt3 = 'What is the value for ug?: ';
    x = input(prompt3)
    P_x = interp1(ug,P,x)
        end; end; end; end; end; end; end; end; end; end; end
           
 

 
 if  str == 'vf'
     format long
    prompt2 = 'What value do you have? T,vg,uf,ug,hf,fg,hg,sf, or sg [T,vg]: ';
    str2= input(prompt2, 's');
     if str2 == 'T'
        prompt3 = 'What is the value for T?: ';
    x = input(prompt3)
        vf_x = interp1(T,vf,x)
    else
     if str2 == 'P'
        prompt3 = 'What is the value for P?: ';
    x = input(prompt3)
    vf_x = interp1(P,vf,x)
     else if str2 == 'vg'
        prompt3 = 'What is the value for vg?: ';
    x = input(prompt3)
    vf_x = interp1(vg,vf,x)
         else if str2 == 'hf'
        prompt3 = 'What is the value for hf?: ';
    x = input(prompt3)
    vf_x = interp1(hf,vf,x)
             else if str2 == 'fg'
        prompt3 = 'What is the value for fg?: ';
    x = input(prompt3)
    vf_x = interp1(fg,vf,x)
                 else if str2 == 'hg'
        prompt3 = 'What is the value for hg?: ';
    x = input(prompt3)
    vf_x = interp1(hg,vf,x)
                     else if str2 == 'sf'
        prompt3 = 'What is the value for sf?: ';
    x = input(prompt3)
    vf_x = interp1(sf,vf,x)
    else if str2 == 'sg'
        prompt3 = 'What is the value for sg?: ';
    x = input(prompt3)
    vf_x = interp1(sg,vf,x)
    else if str2 == 'uf'
        prompt3 = 'What is the value for uf?: ';
    x = input(prompt3)
    vf_x = interp1(uf,vf,x)
    else if str2 == 'ug'
        prompt3 = 'What is the value for ug?: ';
    x = input(prompt3)
    vf_x = interp1(ug,vf,x)
        end; end; end; end; end; end; end; end; end; end; end;
 
 if  str == 'vg'
    prompt2 = 'What value do you have? T,vf,uf,ug,hf,fg,hg,sf, or sg [T,vg]: ';
    str2= input(prompt2, 's');
     if str2 == 'T'
        prompt3 = 'What is the value for T?: ';
    x = input(prompt3)
        vg_x = interp1(T,vg,x)
    else
     if str2 == 'vf'
        prompt3 = 'What is the value for vf?: ';
    x = input(prompt3)
    vg_x = interp1(vf,vg,x)
     else if str2 == 'P'
        prompt3 = 'What is the value for P?: ';
    x = input(prompt3)
    vg_x = interp1(P,vg,x)
         else if str2 == 'hf'
        prompt3 = 'What is the value for hf?: ';
    x = input(prompt3)
    vg_x = interp1(hf,vg,x)
             else if str2 == 'fg'
        prompt3 = 'What is the value for fg?: ';
    x = input(prompt3)
    vg_x = interp1(fg,vg,x)
                 else if str2 == 'hg'
        prompt3 = 'What is the value for hg?: ';
    x = input(prompt3)
    vg_x = interp1(hg,vg,x)
                     else if str2 == 'sf'
        prompt3 = 'What is the value for sf?: ';
    x = input(prompt3)
    vg_x = interp1(sf,vg,x)
    else if str2 == 'sg'
        prompt3 = 'What is the value for sg?: ';
    x = input(prompt3)
    vg_x = interp1(sg,vg,x)
    else if str2 == 'uf'
        prompt3 = 'What is the value for uf?: ';
    x = input(prompt3)
    vg_x = interp1(uf,vg,x)
    else if str2 == 'ug'
        prompt3 = 'What is the value for ug?: ';
    x = input(prompt3)
    vg_x = interp1(ug,vg,x)
        end; end; end; end; end; end; end; end; end; end; end
if  str == 'uf'
    prompt2 = 'What value do you have? T,vf,vg,ug,hf,fg,hg,sf, or sg [T,vg]: ';
    str2= input(prompt2, 's');
 if str2 == 'T'
        prompt3 = 'What is the value for T?: ';
    x = input(prompt3)
        uf_x = interp1(T,uf,x)
    else
     if str2 == 'vf'
        prompt3 = 'What is the value for vf?: ';
    x = input(prompt3)
    uf_x = interp1(vf,uf,x)
     else if str2 == 'vg'
        prompt3 = 'What is the value for vg?: ';
    x = input(prompt3)
    uf_x = interp1(vg,uf,x)
         else if str2 == 'hf'
        prompt3 = 'What is the value for hf?: ';
    x = input(prompt3)
    uf_x = interp1(hf,uf,x)
             else if str2 == 'fg'
        prompt3 = 'What is the value for fg?: ';
    x = input(prompt3)
    uf_x = interp1(fg,uf,x)
                 else if str2 == 'hg'
        prompt3 = 'What is the value for hg?: ';
    x = input(prompt3)
    uf_x = interp1(hg,uf,x)
                     else if str2 == 'sf'
        prompt3 = 'What is the value for sf?: ';
    x = input(prompt3)
    uf_x = interp1(sf,uf,x)
    else if str2 == 'sg'
        prompt3 = 'What is the value for sg?: ';
    x = input(prompt3)
    uf_x = interp1(sg,uf,x)
    else if str2 == 'P'
        prompt3 = 'What is the value for P?: ';
    x = input(prompt3)
    uf_x = interp1(P,uf,x)
    else if str2 == 'ug'
        prompt3 = 'What is the value for ug?: ';
    x = input(prompt3)
    uf_x = interp1(ug,uf,x)
        end; end; end; end; end; end; end; end; end; end; end;
if  str == 'ug'
    prompt2 = 'What value do you have? T,vf,vg,uf,hf,fg,hg,sf, or sg [T,vg]: ';
    str2= input(prompt2, 's');
 if str2 == 'T'
        prompt3 = 'What is the value for T?: ';
    x = input(prompt3)
        ug_x = interp1(T,ug,x)
    else
     if str2 == 'vf'
        prompt3 = 'What is the value for vf?: ';
    x = input(prompt3)
    ug_x = interp1(vf,ug,x)
     else if str2 == 'vg'
        prompt3 = 'What is the value for vg?: ';
    x = input(prompt3)
    ug_x = interp1(vg,ug,x)
         else if str2 == 'hf'
        prompt3 = 'What is the value for hf?: ';
    x = input(prompt3)
    ug_x = interp1(hf,ug,x)
             else if str2 == 'fg'
        prompt3 = 'What is the value for fg?: ';
    x = input(prompt3)
    ug_x = interp1(fg,ug,x)
                 else if str2 == 'hg'
        prompt3 = 'What is the value for hg?: ';
    x = input(prompt3)
    ug_x = interp1(hg,ug,x)
                     else if str2 == 'sf'
        prompt3 = 'What is the value for sf?: ';
    x = input(prompt3)
    ug_x = interp1(sf,ug,x)
    else if str2 == 'sg'
        prompt3 = 'What is the value for sg?: ';
    x = input(prompt3)
    ug_x = interp1(sg,ug,x)
    else if str2 == 'uf'
        prompt3 = 'What is the value for uf?: ';
    x = input(prompt3)
    ug_x = interp1(uf,ug,x)
    else if str2 == 'P'
        prompt3 = 'What is the value for P?: ';
    x = input(prompt3)
    ug_x = interp1(P,ug,x)
        end; end; end; end; end; end; end; end; end; end; end 
 if  str == 'hf'
    prompt2 = 'What value do you have? T,vf,vg,uf,ug,fg,hg,sf, or sg [T,vg]: ';
    str2= input(prompt2, 's');
     if str2 == 'T'
        prompt3 = 'What is the value for T?: ';
    x = input(prompt3)
        P_k = interp1(T,hf,x)
    else
     if str2 == 'vf'
        prompt3 = 'What is the value for vf?: ';
    x = input(prompt3)
    hf_x = interp1(vf,hf,x)
     else if str2 == 'vg'
        prompt3 = 'What is the value for vg?: ';
    x = input(prompt3)
    hf_x = interp1(vg,hf,x)
         else if str2 == 'P'
        prompt3 = 'What is the value for P?: ';
    x = input(prompt3)
    hf_x = interp1(P,hf,x)
             else if str2 == 'fg'
        prompt3 = 'What is the value for fg?: ';
    x = input(prompt3)
    hf_x = interp1(fg,hf,x)
                 else if str2 == 'hg'
        prompt3 = 'What is the value for hg?: ';
    x = input(prompt3)
    hf_x = interp1(hg,hf,x)
                     else if str2 == 'sf'
        prompt3 = 'What is the value for sf?: ';
    x = input(prompt3)
    hf_x = interp1(sf,hf,x)
    else if str2 == 'sg'
        prompt3 = 'What is the value for sg?: ';
    x = input(prompt3)
    hf_x = interp1(sg,hf,x)
    else if str2 == 'uf'
        prompt3 = 'What is the value for uf?: ';
    x = input(prompt3)
    hf_x = interp1(uf,hf,x)
    else if str2 == 'ug'
        prompt3 = 'What is the value for ug?: ';
    x = input(prompt3)
    hf_x = interp1(ug,hf,x)
        end; end; end; end; end; end; end; end; end; end; end
 if  str == 'fg'
    prompt2 = 'What value do you have? T,vf,vg,uf,ug,hf,hg,sf, or sg [T,vg]: ';
    str2= input(prompt2, 's');
 if str2 == 'T'
        prompt3 = 'What is the value for T?: ';
    x = input(prompt3)
        hfg_x = interp1(T,fg,x)
    else
     if str2 == 'vf'
        prompt3 = 'What is the value for vf?: ';
    x = input(prompt3)
    hfg_x = interp1(vf,fg,x)
     else if str2 == 'vg'
        prompt3 = 'What is the value for vg?: ';
    x = input(prompt3)
    hfg_x = interp1(vg,fg,x)
         else if str2 == 'hf'
        prompt3 = 'What is the value for hf?: ';
    x = input(prompt3)
    hfg_x = interp1(hf,fg,x)
             else if str2 == 'P'
        prompt3 = 'What is the value for P?: ';
    x = input(prompt3)
    hfg_x = interp1(P,fg,x)
                 else if str2 == 'hg'
        prompt3 = 'What is the value for hg?: ';
    x = input(prompt3)
    hfg_x = interp1(hg,fg,x)
                     else if str2 == 'sf'
        prompt3 = 'What is the value for sf?: ';
    x = input(prompt3)
    hfg_x = interp1(sf,fg,x)
    else if str2 == 'sg'
        prompt3 = 'What is the value for sg?: ';
    x = input(prompt3)
    hfg_x = interp1(sg,fg,x)
    else if str2 == 'uf'
        prompt3 = 'What is the value for uf?: ';
    x = input(prompt3)
    hfg_x = interp1(uf,fg,x)
    else if str2 == 'ug'
        prompt3 = 'What is the value for ug?: ';
    x = input(prompt3)
    hfg_x = interp1(ug,fg,x)
        end; end; end; end; end; end; end; end; end; end; end 
    if  str == 'hg'
    prompt2 = 'What value do you have? T,vf,vg,uf,ug,hf,fg,hg,sf, or sg [T,vg]: ';
    str2= input(prompt2, 's');
 if str2 == 'T'
        prompt3 = 'What is the value for P?: ';
    x = input(prompt3)
        hg_x = interp1(T,hg,x)
    else
     if str2 == 'vf'
        prompt3 = 'What is the value for vf?: ';
    x = input(prompt3)
    hg_x = interp1(vf,hg,x)
     else if str2 == 'vg'
        prompt3 = 'What is the value for vg?: ';
    x = input(prompt3)
    hg_x = interp1(vg,hg,x)
         else if str2 == 'hf'
        prompt3 = 'What is the value for hg?: ';
    x = input(prompt3)
    hg_x = interp1(hf,hg,x)
             else if str2 == 'fg'
        prompt3 = 'What is the value for fg?: ';
    x = input(prompt3)
    hg_x = interp1(fg,hg,x)
                 else if str2 == 'P'
        prompt3 = 'What is the value for P?: ';
    x = input(prompt3)
    hg_x = interp1(P,hg,x)
                     else if str2 == 'sf'
        prompt3 = 'What is the value for sf?: ';
    x = input(prompt3)
    hg_x = interp1(sf,hg,x)
    else if str2 == 'sg'
        prompt3 = 'What is the value for sg?: ';
    x = input(prompt3)
    hg_x = interp1(sg,hg,x)
    else if str2 == 'uf'
        prompt3 = 'What is the value for uf?: ';
    x = input(prompt3)
    hg_x = interp1(uf,hg,x)
    else if str2 == 'ug'
        prompt3 = 'What is the value for ug?: ';
    x = input(prompt3)
    hg_x = interp1(ug,hg,x)
        end; end; end; end; end; end; end; end; end; end; end
        
         if  str == 'sf'
    prompt2 = 'What value do you have? T,vf,vg,uf,ug,hf,fg,hg, or sg [T,vg]: ';
    str2= input(prompt2, 's');
 if str2 == 'T'
        prompt3 = 'What is the value for T?: ';
    x = input(prompt3)
        sf_x = interp1(T,sf,x)
    else
     if str2 == 'vf'
        prompt3 = 'What is the value for vg?: ';
    x = input(prompt3)
    sf_x = interp1(vf,sf,x)
     else if str2 == 'vg'
        prompt3 = 'What is the value for vg?: ';
    x = input(prompt3)
    sf_x = interp1(vg,sf,x)
         else if str2 == 'hf'
        prompt3 = 'What is the value for hf?: ';
    x = input(prompt3)
    sf_x = interp1(hf,sf,x)
             else if str2 == 'fg'
        prompt3 = 'What is the value for fg?: ';
    x = input(prompt3)
    sf_x = interp1(fg,sf,x)
                 else if str2 == 'hg'
        prompt3 = 'What is the value for hg?: ';
    x = input(prompt3)
    sf_x = interp1(hg,sf,x)
                     else if str2 == 'P'
        prompt3 = 'What is the value for P?: ';
    x = input(prompt3)
    sf_x = interp1(P,sf,x)
    else if str2 == 'sg'
        prompt3 = 'What is the value for sg?: ';
    x = input(prompt3)
    sf_x = interp1(sg,sf,x)
    else if str2 == 'uf'
        prompt3 = 'What is the value for uf?: ';
    x = input(prompt3)
    sf_x = interp1(uf,sf,x)
    else if str2 == 'ug'
        prompt3 = 'What is the value for ug?: ';
    x = input(prompt3)
    sf_x = interp1(ug,sf,x)
        end; end; end; end; end; end; end; end; end; end; end 
         if  str == 'sg'
    prompt2 = 'What value do you have? T,vf,vg,uf,ug,hf,fg,hg,sf, [T,vg]: ';
    str2= input(prompt2, 's');
 if str2 == 'T'
        prompt3 = 'What is the value for T?: ';
    x = input(prompt3)
        sg_x = interp1(T,sg,x)
    else
     if str2 == 'vf'
        prompt3 = 'What is the value for vf?: ';
    x = input(prompt3)
    sg_x = interp1(vf,sg,x)
     else if str2 == 'vg'
        prompt3 = 'What is the value for vg?: ';
    x = input(prompt3)
    sg_x = interp1(vg,sg,x)
         else if str2 == 'hf'
        prompt3 = 'What is the value for hf?: ';
    x = input(prompt3)
    sg_x = interp1(hf,sg,x)
             else if str2 == 'fg'
        prompt3 = 'What is the value for fg?: ';
    x = input(prompt3)
    sg_x = interp1(fg,sg,x)
                 else if str2 == 'hg'
        prompt3 = 'What is the value for hg?: ';
    x = input(prompt3)
    sg_x = interp1(hg,P,x)
                     else if str2 == 'sf'
        prompt3 = 'What is the value for sf?: ';
    x = input(prompt3)
    sg_x = interp1(sf,sg,x)
    else if str2 == 'P'
        prompt3 = 'What is the value for P?: ';
    x = input(prompt3)
    sg_x = interp1(P,sg,x)
    else if str2 == 'uf'
        prompt3 = 'What is the value for uf?: ';
    x = input(prompt3)
    sg_x = interp1(uf,sg,x)
    else if str2 == 'ug'
        prompt3 = 'What is the value for ug?: ';
    x = input(prompt3)
    sg_x = interp1(ug,sg,x)
        end; end; end; end; end; end; end; end; end; end; end

if str=='v'
    format long
prompt4= " What is the x value? ";
x = input(prompt4)
prompt5= " What is the T value? ";
y = input(prompt5)

v_f=interp1(T,vf,y);

v_g=interp1(T,vg,y);

v_k = x*(v_g-v_f)+v_f
end
if str=='u'
prompt4= " What is the u value? ";
x = input(prompt4)
prompt5= " What is the T value? ";
y = input(prompt5)

u_f=interp1(T,uf,y);

u_g=interp1(T,ug,y);

u_k = x*(u_g-u_f)+u_f
end
if str=='h'
    format long
prompt4= " What is the x value? ";
x = input(prompt4)
prompt5= " What is the T value? ";
y = input(prompt5)

v_f=interp1(T,hf,y);

v_g=interp1(T,hg,y);

h_k = x*(v_g-v_f)+v_f
end
if str=='s'
    format long
prompt4= " What is the x value? ";
x = input(prompt4)
prompt5= " What is the T value? ";
y = input(prompt5)

v_f=interp1(T,sf,y);

v_g=interp1(T,sg,y);

s_k = x*(v_g-v_f)+v_f
end

if str=='x'
    prompt2 = 'What value do you have? v, u, h, s: ';
    str2= input(prompt2, 's');
    if str2 == 'v'
prompt4= " What is the v value? ";
x = input(prompt4)
prompt5= " What is the T value? ";
y = input(prompt5)

v_f=interp1(T,vf,y);

v_g=interp1(T,vg,y);

x_k = (x-v_f)/(v_g-v_f);
ans = round(x_k,3)
    end
    if str2 == 'u'
prompt4= " What is the u value? ";
x = input(prompt4)
prompt5= " What is the T value? ";
y = input(prompt5)

v_f=interp1(T,uf,y);

v_g=interp1(T,ug,y);

x_k = (x-v_f)/(v_g-v_f);
ans = round(x_k,3)
    end
    if str2 == 's'
prompt4= " What is the s value? ";
x = input(prompt4)
prompt5= " What is the T value? ";
y = input(prompt5)

v_f=interp1(T,sf,y);

v_g=interp1(T,sg,y);

x_k = (x-v_f)/(v_g-v_f);
ans = round(x_k,3)
    end
    if str2 == 'h'
prompt4= " What is the h value? ";
x = input(prompt4)
prompt5= " What is the T value? ";
y = input(prompt5)

v_f=interp1(T,hf,y);

v_g=interp1(T,hg,y);

x_k = (x-v_f)/(v_g-v_f);
ans = round(x_k,3)
    end
end


if str=='uv'
prompt4= " What is the v value? ";
x = input(prompt4)


v_f=interp1(vg,ug,x)

%v_g=interp1(P,vg,y)

%x_k = (x-v_f)/(v_g-v_f);
ans = round(v_f,6)
end
prompt1 = 'Are you finished with reading Tables? Y/N [Y] ';
str1 = input(prompt1,'s');
if str1 == 'Y'
    sprintf(" Thank you for using my code. Good luck in Thermo")
else if str1 =='N'
        prompt2 = "Do you need this table again? Y/N [Y]: ";
        str2 = input(prompt2,'s');
        if str2 =="Y"
            TableA_2_imperial
        else if str2 == "N"
                Table_reading
            end
        end
        
end
    end

end