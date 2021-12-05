function TableA_11_R134a_Pressure_Imperial
clear all
clc
format short

%           P     T      vf      vg      uf      ug       hf       fg     hg      sf     sg
%                                                                            
A = [		5	-53.48	0.01113	8.3508	-3.74	86.07	-3.73	97.53	93.79	-0.009	0.2311
			10	-29.71	0.01143	4.3581	2.89	89.3	2.91	94.45	97.37	0.0068	0.2265
			15	-14.25	0.01164	2.9747	7.36	91.4	7.4	92.27	99.66	0.0171	0.2242
			20	-2.48	0.01181	2.2661	10.84	93	10.89	90.5	101.39	0.0248	0.2227
			30	15.38	0.01209	1.5408	16.24	95.4	16.31	87.65	103.96	0.0364	0.2209
			40	29.04	0.01232	1.1692	20.48	97.23	20.57	85.31	105.88	0.0452	0.2197
			50	40.27	0.01252	0.9422	24.02	98.71	24.14	83.29	107.43	0.0523	0.2189
			60	49.89	0.0127	0.7887	27.1	99.96	27.24	81.48	108.72	0.0584	0.2183
			70	58.35	0.01286	0.6778	29.85	101.05	30.01	79.82	109.83	0.0638	0.2179
			80	65.93	0.01302	0.5938	32.33	102.02	32.53	78.28	110.81	0.0686	0.2175
			90	72.83	0.01317	0.5278	34.62	102.89	34.84	76.84	111.68	0.0729	0.2172
			100	79.17	0.01332	0.4747	36.75	103.68	36.99	75.47	112.46	0.0768	0.2169
			120	90.54	0.0136	0.3941	40.61	105.06	40.91	72.91	113.82	0.0839	0.2165
			140	100.56	0.01386	0.3358	44.07	106.25	44.43	70.52	114.95	0.0902	0.2161
			160	109.56	0.01412	0.2916	47.23	107.28	47.65	68.26	115.91	0.0958	0.2157
			180	117.74	0.01438	0.2569	50.16	108.18	50.64	66.1	116.74	0.1009	0.2154
			200	125.28	0.01463	0.2288	52.9	108.98	53.44	64.01	117.44	0.1057	0.2151
			220	132.27	0.01489	0.2056	55.48	109.68	56.09	61.96	118.05	0.1101	0.2147
			240	138.79	0.01515	0.1861	57.93	110.3	58.61	59.96	118.56	0.1142	0.2144
			260	144.92	0.01541	0.1695	60.28	110.84	61.02	57.97	118.99	0.1181	0.214
			280	150.7	0.01568	0.155	62.53	111.31	63.34	56	119.35	0.1219	0.2136
			300	156.17	0.01596	0.1424	64.71	111.72	65.59	54.03	119.62	0.1254	0.2132
			350	168.72	0.01671	0.1166	69.88	112.45	70.97	49.03	120	0.1338	0.2118
			400	179.95	0.01758	0.0965	74.81	112.77	76.11	43.8	119.91	0.1417	0.2102
			450	190.12	0.01863	0.08	79.63	112.6	81.18	38.08	119.26	0.1493	0.2079
			500	199.38	0.02002	0.0657	84.54	111.76	86.39	31.44	117.83	0.157	0.2047];

        
    P= A(:,1);
    T = A(:,2);
    vf = A(:,3)./1000;
    vg= A(:,4);
    uf = A(:,5);
    ug = A(:,6);
    hf = A(:,7);
    fg = A(:,8);
    hg = A(:,9);
    sf = A(:,10);
    sg = A(:,11);
    

prompt = 'What Property are you looking for? T,vf,vg,uf,ug,hf,h(fg),hg,sf,sg,x,v,s,h,u or uv: ';
str = input(prompt,'s');

 if str == 'T'
    prompt2 = 'What property do you have? P,vf,vg,uf,ug,hf,fg,hg,sf, or sg [T]: ';
    str2= input(prompt2, 's');
    if str2 == 'P'
        prompt3 = 'What is the value for Pressure?: ';
    x = input(prompt3)
        x_k = interp1(P,T,x)
    else
     if str2 == 'vf'
        prompt3 = 'What is the value for vf?: ';
    x = input(prompt3)
    x_k= interp1(vf,T,x)
     else if str2 == 'vg'
        prompt3 = 'What is the value for vg?: ';
    x = input(prompt3)
    x_k = interp1(vg,T,x)
         else if str2 == 'hf'
        prompt3 = 'What is the value for hf?: ';
    x = input(prompt3)
    x_k = interp1(hf,T,x)
             else if str2 == 'fg'
        prompt3 = 'What is the value for fg?: ';
    x = input(prompt3)
    x_k = interp1(fg,T,x)
                 else if str2 == 'hg'
        prompt3 = 'What is the value for hg: ';
    x = input(prompt3)
    x_k = interp1(hg,T,x)
                     else if str2 == 'sf'
        prompt3 = 'What is the value for sf: ';
    x = input(prompt3)
    x_k = interp1(sf,T,x)
    else if str2 == 'sg'
        prompt3 = 'What is the value for sg?: ';
    x = input(prompt3)
    x_k = interp1(sg,T,x)
    else if str2 == 'uf'
        prompt3 = 'What is the value for uf?: ';
    x = input(prompt3)
    x_k = interp1(uf,T,x)
    else if str2 == 'ug'
        prompt3 = 'What is the value for ug?: ';
    x = input(prompt3)
    x_k = interp1(ug,T,x)
        end; end; end; end; end; end; end; end; end; end; end
           
 
%------------------vf------------------
 
 if  str == 'vf'
     format long
    prompt2 = 'What propery do you have? T,P,vg,uf,ug,hf,fg,hg,sf, or sg [T]: ';
    str2= input(prompt2, 's');
     if str2 == 'T'
        prompt3 = 'What is the value for T?: ';
    x = input(prompt3)
        x_k = interp1(T,vf,x)
    else
     if str2 == 'P'
        prompt3 = 'What is the value for P?: ';
    x = input(prompt3)
    x_k = interp1(P,vf,x)
     else if str2 == 'vg'
        prompt3 = 'What is the value for vg?: ';
    x = input(prompt3)
    x_k = interp1(vg,vf,x)
         else if str2 == 'hf'
        prompt3 = 'What is the value for hf?: ';
    x = input(prompt3)
    x_k = interp1(hf,vf,x)
             else if str2 == 'fg'
        prompt3 = 'What is the value for fg?: ';
    x = input(prompt3)
    x_k = interp1(fg,vf,x)
                 else if str2 == 'hg'
        prompt3 = 'What is the value for hg?: ';
    x = input(prompt3)
    x_k = interp1(hg,vf,x)
                     else if str2 == 'sf'
        prompt3 = 'What is the value for sf?: ';
    x = input(prompt3)
    x_k = interp1(sf,vf,x)
    else if str2 == 'sg'
        prompt3 = 'What is the value for sg?: ';
    x = input(prompt3)
    x_k = interp1(sg,vf,x)
    else if str2 == 'uf'
        prompt3 = 'What is the value for uf?: ';
    x = input(prompt3)
    x_k = interp1(uf,vf,x)
    else if str2 == 'ug'
        prompt3 = 'What is the value for ug?: ';
    x = input(prompt3)
    x_k = interp1(ug,vf,x)
        end; end; end; end; end; end; end; end; end; end; end;

%---------------------vg----------------------------
 
 if  str == 'vg'
    prompt2 = 'What propery do you have? T,P,vf,uf,ug,hf,fg,hg,sf, or sg [T]: ';
    str2= input(prompt2, 's');
     if str2 == 'T'
        prompt3 = 'What is the value for T?: ';
    x = input(prompt3)
        x_k = interp1(T,vg,x)
    else
     if str2 == 'vf'
        prompt3 = 'What is the value for vf?: ';
    x = input(prompt3)
    x_k = interp1(vf,vg,x)
     else if str2 == 'P'
        prompt3 = 'What is the value for P?: ';
    x = input(prompt3)
    x_k = interp1(P,vg,x)
         else if str2 == 'hf'
        prompt3 = 'What is the value for hf?: ';
    x = input(prompt3)
    x_k = interp1(hf,vg,x)
             else if str2 == 'fg'
        prompt3 = 'What is the value for fg?: ';
    x = input(prompt3)
    x_k = interp1(fg,vg,x)
                 else if str2 == 'hg'
        prompt3 = 'What is the value for hg?: ';
    x = input(prompt3)
    x_k = interp1(hg,vg,x)
                     else if str2 == 'sf'
        prompt3 = 'What is the value for sf?: ';
    x = input(prompt3)
    x_k = interp1(sf,vg,x)
    else if str2 == 'sg'
        prompt3 = 'What is the value for sg?: ';
    x = input(prompt3)
    x_k = interp1(sg,vg,x)
    else if str2 == 'uf'
        prompt3 = 'What is the value for uf?: ';
    x = input(prompt3)
    x_k = interp1(uf,vg,x)
    else if str2 == 'ug'
        prompt3 = 'What is the value for ug?: ';
    x = input(prompt3)
    x_k = interp1(ug,vg,x)
        end; end; end; end; end; end; end; end; end; end; end
if  str == 'uf'
    format long
    prompt2 = 'What propery do you have? P,vf,vg,uf,ug,hf,fg,hg,sf, or sg [T]: ';
    str2= input(prompt2, 's');
 if str2 == 'T'
        prompt3 = 'What is the value for T?: ';
    x = input(prompt3)
        x_k = interp1(T,uf,x)
    else
     if str2 == 'vf'
        prompt3 = 'What is the value for vf?: ';
    x = input(prompt3)
    x_k = interp1(vf,uf,x)
     else if str2 == 'vg'
        prompt3 = 'What is the value for vg?: ';
    x = input(prompt3)
    x_k = interp1(vg,uf,x)
         else if str2 == 'hf'
        prompt3 = 'What is the value for hf?: ';
    x = input(prompt3)
    x_k = interp1(hf,uf,x)
             else if str2 == 'fg'
        prompt3 = 'What is the value for fg?: ';
    x = input(prompt3)
    x_k = interp1(fg,uf,x)
                 else if str2 == 'hg'
        prompt3 = 'What is the value for hg?: ';
    x = input(prompt3)
    x_k = interp1(hg,uf,x)
                     else if str2 == 'sf'
        prompt3 = 'What is the value for sf?: ';
    x = input(prompt3)
    x_k = interp1(sf,uf,x)
    else if str2 == 'sg'
        prompt3 = 'What is the value for sg?: ';
    x = input(prompt3)
    x_k = interp1(sg,uf,x)
    else if str2 == 'P'
        prompt3 = 'What is the value for P?: ';
    x = input(prompt3)
    x_k = interp1(P,uf,x)
    else if str2 == 'ug'
        prompt3 = 'What is the value for ug?: ';
    x = input(prompt3)
    x_k = interp1(ug,uf,x)
        end; end; end; end; end; end; end; end; end; end; end;

%------------------ug-----------------------


if  str == 'ug'
    prompt2 = 'What propery do you have? T,P,vf,vg,uf,hf,fg,hg,sf, or sg [T]: ';
    str2= input(prompt2, 's');
 if str2 == 'T'
        prompt3 = 'What is the value for T?: ';
    x = input(prompt3)
        x_k = interp1(T,ug,x)
    else
     if str2 == 'vf'
        prompt3 = 'What is the value for vf?: ';
    x = input(prompt3)
    x_k = interp1(vf,ug,x)
     else if str2 == 'vg'
        prompt3 = 'What is the value for vg?: ';
    x = input(prompt3)
    x_k = interp1(vg,ug,x)
         else if str2 == 'hf'
        prompt3 = 'What is the value for hf?: ';
    x = input(prompt3)
    x_k = interp1(hf,ug,x)
             else if str2 == 'fg'
        prompt3 = 'What is the value for fg?: ';
    x = input(prompt3)
    x_k = interp1(fg,ug,x)
                 else if str2 == 'hg'
        prompt3 = 'What is the value for hg?: ';
    x = input(prompt3)
    x_k = interp1(hg,ug,x)
                     else if str2 == 'sf'
        prompt3 = 'What is the value for sf?: ';
    x = input(prompt3)
    x_k = interp1(sf,ug,x)
    else if str2 == 'sg'
        prompt3 = 'What is the value for sg?: ';
    x = input(prompt3)
    x_k = interp1(sg,ug,x)
    else if str2 == 'uf'
        prompt3 = 'What is the value for uf?: ';
    x = input(prompt3)
    x_k = interp1(uf,ug,x)
    else if str2 == 'P'
        prompt3 = 'What is the value for P?: ';
    x = input(prompt3)
    x_k = interp1(P,ug,x)
        end; end; end; end; end; end; end; end; end; end; end 
 if  str == 'hf'
    prompt2 = 'What propery do you have? T,vf,vg,uf,ug,hf,fg,hg,sf, or sg [T]: ';
    str2= input(prompt2, 's');
     if str2 == 'T'
        prompt3 = 'What is the value for T?: ';
    x = input(prompt3)
        x_k = interp1(T,hf,x)
    else
     if str2 == 'vf'
        prompt3 = 'What is the value for vf?: ';
    x = input(prompt3)
    x_k = interp1(vf,hf,x)
     else if str2 == 'vg'
        prompt3 = 'What is the value for vg?: ';
    x = input(prompt3)
    x_k = interp1(vg,hf,x)
         else if str2 == 'P'
        prompt3 = 'What is the value for P?: ';
    x = input(prompt3)
    x_k = interp1(P,hf,x)
             else if str2 == 'fg'
        prompt3 = 'What is the value for fg?: ';
    x = input(prompt3)
    x_k = interp1(fg,hf,x)
                 else if str2 == 'hg'
        prompt3 = 'What is the value for hg?: ';
    x = input(prompt3)
    x_k = interp1(hg,hf,x)
                     else if str2 == 'sf'
        prompt3 = 'What is the value for sf?: ';
    x = input(prompt3)
    x_k = interp1(sf,hf,x)
    else if str2 == 'sg'
        prompt3 = 'What is the value for sg?: ';
    x = input(prompt3)
    x_k = interp1(sg,hf,x)
    else if str2 == 'uf'
        prompt3 = 'What is the value for uf?: ';
    x = input(prompt3)
    x_k = interp1(uf,hf,x)
    else if str2 == 'ug'
        prompt3 = 'What is the value for ug?: ';
    x = input(prompt3)
    x_k = interp1(ug,hf,x)
        end; end; end; end; end; end; end; end; end; end; end
 if  str == 'fg'
    prompt2 = 'What propery do you have? T,vf,vg,uf,ug,hf,fg,hg,sf, or sg [T]: ';
    str2= input(prompt2, 's');
 if str2 == 'T'
        prompt3 = 'What is the value for T?: ';
    x = input(prompt3)
        x_k = interp1(T,fg,x)
    else
     if str2 == 'vf'
        prompt3 = 'What is the value for vf?: ';
    x = input(prompt3)
    x_k = interp1(vf,fg,x)
     else if str2 == 'vg'
        prompt3 = 'What is the value for vg?: ';
    x = input(prompt3)
    x_k = interp1(vg,fg,x)
         else if str2 == 'hf'
        prompt3 = 'What is the value for hf?: ';
    x = input(prompt3)
    x_k = interp1(hf,fg,x)
             else if str2 == 'P'
        prompt3 = 'What is the value for P?: ';
    x = input(prompt3)
    x_k = interp1(P,fg,x)
                 else if str2 == 'hg'
        prompt3 = 'What is the value for hg?: ';
    x = input(prompt3)
    x_k = interp1(hg,fg,x)
                     else if str2 == 'sf'
        prompt3 = 'What is the value for sf?: ';
    x = input(prompt3)
    x_k = interp1(sf,fg,x)
    else if str2 == 'sg'
        prompt3 = 'What is the value for sg?: ';
    x = input(prompt3)
    x_k = interp1(sg,fg,x);
    else if str2 == 'uf'
        prompt3 = 'What is the value for uf?: ';
    x = input(prompt3)
    x_k = interp1(uf,fg,x);
    else if str2 == 'ug'
        prompt3 = 'What is the value for ug?: ';
    x = input(prompt3)
    x_k = interp1(ug,fg,x)
        end; end; end; end; end; end; end; end; end; end; end 
    if  str == 'hg'
    prompt2 = 'What propery do you have? T,vf,vg,uf,ug,hf,fg,hg,sf, or sg [T]: ';
    str2= input(prompt2, 's');
 if str2 == 'T'
        prompt3 = 'What is the value for P?: ';
    x = input(prompt3)
        x_k = interp1(T,hg,x)
    else
     if str2 == 'vf'
        prompt3 = 'What is the value for vf?: ';
    x = input(prompt3)
    x_k = interp1(vf,hg,x)
     else if str2 == 'vg'
        prompt3 = 'What is the value for vg?: ';
    x = input(prompt3)
    x_k = interp1(vg,hg,x)
         else if str2 == 'hf'
        prompt3 = 'What is the value for hg?: ';
    x = input(prompt3)
    x_k = interp1(hf,hg,x)
             else if str2 == 'fg'
        prompt3 = 'What is the value for fg?: ';
    x = input(prompt3)
    x_k = interp1(fg,hg,x)
                 else if str2 == 'P'
        prompt3 = 'What is the value for P?: ';
    x = input(prompt3)
    x_k = interp1(P,hg,x)
                     else if str2 == 'sf'
        prompt3 = 'What is the value for sf?: ';
    x = input(prompt3)
    x_k = interp1(sf,hg,x)
    else if str2 == 'sg'
        prompt3 = 'What is the value for sg?: ';
    x = input(prompt3)
    x_k = interp1(sg,hg,x)
    else if str2 == 'uf'
        prompt3 = 'What is the value for uf?: ';
    x = input(prompt3)
    x_k = interp1(uf,hg,x)
    else if str2 == 'ug'
        prompt3 = 'What is the value for ug?: ';
    x = input(prompt3)
    x_k = interp1(ug,hg,x)
        end; end; end; end; end; end; end; end; end; end; end
        
         if  str == 'sf'
    prompt2 = 'What propery do you have? T,P,vf,vg,uf,ug,hf,fg,hg, or sg [T]: ';
    str2= input(prompt2, 's');
 if str2 == 'T'
        prompt3 = 'What is the value for T?: ';
    x = input(prompt3)
        x_k = interp1(T,sf,x)
    else
     if str2 == 'vf'
        prompt3 = 'What is the value for vg?: ';
    x = input(prompt3)
    x_k = interp1(vf,sf,x)
     else if str2 == 'vg'
        prompt3 = 'What is the value for vg?: ';
    x = input(prompt3)
    x_k = interp1(vg,sf,x)
         else if str2 == 'hf'
        prompt3 = 'What is the value for hf?: ';
    x = input(prompt3)
    x_k = interp1(hf,sf,x)
             else if str2 == 'fg'
        prompt3 = 'What is the value for fg?: ';
    x = input(prompt3)
    x_k = interp1(fg,sf,x)
                 else if str2 == 'hg'
        prompt3 = 'What is the value for hg?: ';
    x = input(prompt3)
    x_k = interp1(hg,sf,x)
                     else if str2 == 'P'
        prompt3 = 'What is the value for P?: ';
    x = input(prompt3)
    x_k = interp1(P,sf,x)
    else if str2 == 'sg'
        prompt3 = 'What is the value for sg?: ';
    x = input(prompt3)
    x_k = interp1(sg,sf,x)
    else if str2 == 'uf'
        prompt3 = 'What is the value for uf?: ';
    x = input(prompt3)
    x_k = interp1(uf,sf,x)
    else if str2 == 'ug'
        prompt3 = 'What is the value for ug?: ';
    x = input(prompt3)
    x_k = interp1(ug,sf,x)
        end; end; end; end; end; end; end; end; end; end; end 
         if  str == 'sg'
    prompt2 = 'What propery do you have? T,vf,vg,uf,ug,hf,fg,hg,sf, or sg [T]: ';
    str2= input(prompt2, 's');
 if str2 == 'T'
        prompt3 = 'What is the value for T?: ';
    x = input(prompt3)
        x_k = interp1(T,sg,x)
    else
     if str2 == 'vf'
        prompt3 = 'What is the value for vf?: ';
    x = input(prompt3)
    x_k = interp1(vf,sg,x)
     else if str2 == 'vg'
        prompt3 = 'What is the value for vg?: ';
    x = input(prompt3)
    x_k = interp1(vg,sg,x)
         else if str2 == 'hf'
        prompt3 = 'What is the value for hf?: ';
    x = input(prompt3)
    x_k = interp1(hf,sg,x)
             else if str2 == 'fg'
        prompt3 = 'What is the value for fg?: ';
    x = input(prompt3)
    x_k = interp1(fg,sg,x)
                 else if str2 == 'hg'
        prompt3 = 'What is the value for hg?: ';
    x = input(prompt3)
    x_k = interp1(hg,P,x)
                     else if str2 == 'sf'
        prompt3 = 'What is the value for sf?: ';
    x = input(prompt3)
    x_k = interp1(sf,sg,x)
    else if str2 == 'P'
        prompt3 = 'What is the value for P?: ';
    x = input(prompt3)
    x_k = interp1(P,sg,x)
    else if str2 == 'uf'
        prompt3 = 'What is the value for uf?: ';
    x = input(prompt3)
    x_k = interp1(uf,sg,x)
    else if str2 == 'ug'
        prompt3 = 'What is the value for ug?: ';
    x = input(prompt3)
    x_k = interp1(ug,sg,x)
        end; end; end; end; end; end; end; end; end; end; end





if str=='v'
    format long
prompt4= " What is the x value? ";
x = input(prompt4)
prompt5= " What is the P value? ";
y = input(prompt5)

v_f=interp1(P,vf,y);

v_g=interp1(P,vg,y);

v_k = x*(v_g-v_f)+v_f
end
if str=='u'
prompt4= " What is the u value? ";
x = input(prompt4)
prompt5= " What is the P value? ";
y = input(prompt5)

u_f=interp1(P,uf,y);

u_g=interp1(P,ug,y);

u_k = x*(u_g-u_f)+u_f
end
if str=='h'
    format long
prompt4= " What is the x value? ";
x = input(prompt4)
prompt5= " What is the P value? ";
y = input(prompt5)

h_f=interp1(P,hf,y);

h_g=interp1(P,hg,y);

h_k = x*(h_g-h_f)+h_f
end
if str=='s'
    format long
prompt4= " What is the x value? ";
x = input(prompt4)
prompt5= " What is the P value? ";
y = input(prompt5)

s_f=interp1(P,sf,y);

s_g=interp1(P,sg,y);

s_k = x*(s_g-s_f)+s_f
end

if str=='x'
    prompt2 = 'What value do you have? v, u, h, s: ';
    str2= input(prompt2, 's');
    if str2 == 'v'
prompt4= " What is the v value? ";
x = input(prompt4)
prompt5= " What is the P value? ";
y = input(prompt5)

v_f=interp1(P,vf,y);

v_g=interp1(P,vg,y);

x_k = (x-v_f)/(v_g-v_f);
ans = round(x_k,3)
    end
    if str2 == 'u'
prompt4= " What is the u value? ";
x = input(prompt4)
prompt5= " What is the P value? ";
y = input(prompt5)

v_f=interp1(P,uf,y)

v_g=interp1(P,ug,y)

x_k = (x-v_f)/(v_g-v_f);
ans = round(x_k,3)
    end
    if str2 == 's'
prompt4= " What is the s value? ";
x = input(prompt4)
prompt5= " What is the P value? ";
y = input(prompt5)

v_f=interp1(P,sf,y);

v_g=interp1(P,sg,y);

x_k = (x-v_f)/(v_g-v_f);
ans = round(x_k,3)
    end
    if str2 == 'h'
prompt4= " What is the h value? ";
x = input(prompt4)
prompt5= " What is the P value? ";
y = input(prompt5)

v_f=interp1(P,hf,y);

v_g=interp1(P,hg,y);

x_k = (x-v_f)/(v_g-v_f);
ans = round(x_k,3)
    end
end





if str=='xh'
prompt4= " What is the v value? ";
x = input(prompt4)
prompt5= " What is the P value? ";
y = input(prompt5)

v_f=interp1(P,hf,y)

v_g=interp1(P,hg,y)

x_k = (x-v_f)/(v_g-v_f);
ans = round(x_k,3)
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
            TableA_10_R134a_Pressure_Imperial
        else if str2 == "N"
                Table_reading
            end
        end
        
end
    end
end