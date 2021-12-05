function TableA_10_R134a_Temperature
close all
clc
clear all
format short
A = [-40	0.5164	0.7055	0.3569	-0.04	204.45	0	222.88	222.88	0	0.956
	-36	0.6332	0.7113	0.2947	4.68	206.73	4.73	220.67	225.4	0.0201	0.9506
	-32	0.7704	0.7172	0.2451	9.47	209.01	9.52	218.37	227.9	0.0401	0.9456
	-28	0.9305	0.7233	0.2052	14.31	211.29	14.37	216.01	230.38	0.06	0.9411
	-26	1.0199	0.7265	0.1882	16.75	212.43	16.82	214.8	231.62	0.0699	0.939
	-24	1.116	0.7296	0.1728	19.21	213.57	19.29	213.57	232.85	0.0798	0.937
	-22	1.2192	0.7328	0.159	21.68	214.7	21.77	212.32	234.08	0.0897	0.9351
	-20	1.3299	0.7361	0.1464	24.17	215.84	24.26	211.05	235.31	0.0996	0.9332
	-18	1.4483	0.7395	0.135	26.67	216.97	26.77	209.76	236.53	0.1094	0.9315
	-16	1.5748	0.7428	0.1247	29.18	218.1	29.3	208.45	237.74	0.1192	0.9298
	-12	1.854	0.7498	0.1068	34.25	220.36	34.39	205.77	240.15	0.1388	0.9267
	-8	2.1704	0.7569	0.0919	39.38	222.6	39.54	203.00	242.54	0.1583	0.9239
	-4	2.5274	0.7644	0.0794	44.56	224.84	44.75	200.15	244.9	0.1777	0.9213
	0	2.9282	0.7721	0.0689	49.79	227.06	50.02	197.21	247.23	0.197	0.919
	4	3.3765	0.7801	0.06	55.08	229.27	55.35	194.19	249.53	0.2162	0.9169
	8	3.8756	0.7884	0.0525	60.43	231.46	60.73	191.07	251.8	0.2354	0.915
	12	4.4294	0.7971	0.046	65.83	233.63	66.18	187.85	254.03	0.2545	0.9132
	16	5.0416	0.8062	0.0405	71.29	235.78	71.69	184.52	256.22	0.2735	0.9116
	20	5.716	0.8157	0.0358	76.8	237.91	77.26	181.09	258.36	0.2924	0.9102
	24	6.4566	0.8257	0.0317	82.37	240.01	82.9	177.55	260.45	0.3113	0.9089
	26	6.853	0.8309	0.0298	85.18	241.05	85.75	175.73	261.48	0.3208	0.9082
	28	7.2675	0.8362	0.0281	88.00	242.08	88.61	173.89	262.5	0.3302	0.9076
	30	7.7006	0.8417	0.0265	90.84	243.10	91.49	172.00	263.5	0.3396	0.907
	32	8.1528	0.8473	0.025	93.7	244.12	94.39	170.09	264.48	0.349	0.9064
	34	8.6247	0.853	0.0236	96.58	245.12	97.31	168.14	265.45	0.3584	0.9058
	36	9.1168	0.859	0.0223	99.47	246.11	100.25	166.15	266.4	0.3678	0.9053
	38	9.6298	0.8651	0.021	102.38	247.09	103.21	164.12	267.33	0.3772	0.9047
	40	10.164	0.8714	0.0199	105.3	248.06	106.19	162.05	268.24	0.3866	0.9041
	42	10.72	0.878	0.0188	108.25	249.02	109.19	159.94	269.14	0.396	0.9035
	44	11.299	0.8847	0.0177	111.22	249.96	112.22	157.79	270.01	0.4054	0.903
	48	12.526	0.8989	0.0159	117.22	251.79	118.35	153.33	271.68	0.4243	0.9017
	52	13.851	0.9142	0.0142	123.31	253.55	124.58	148.66	273.24	0.4432	0.9004
	56	15.278	0.9308	0.0127	129.51	255.23	130.93	143.75	274.68	0.4622	0.899
	60	16.813	0.9488	0.0114	135.82	256.81	137.42	138.57	275.99	0.4814	0.8973
	70	21.162	1.0027	0.0086	152.22	260.15	154.34	124.08	278.43	0.5302	0.8918
	80	26.324	1.0766	0.0064	169.88	262.14	172.71	106.41	279.12	0.5814	0.8827
	90	32.435	1.1949	0.0046	189.82	261.34	193.69	82.63	276.32	0.638	0.8655
	100	39.742	1.5443	0.0027	218.6	248.49	224.74	34.4	259.13	0.7196	0.8117];


    T = A(:,1);
    P= A(:,2);
    vf = A(:,3)./1000;
    vg= A(:,4);
    uf = A(:,5);
    ug = A(:,6);
    hf = A(:,7);
    fg = A(:,8);
    hg = A(:,9);
    sf = A(:,10);
    sg = A(:,11);

prompt = 'What value are you looking for? P,vf,vg,uf,ug,hf,h(fg),hg,sf,sg,x,v,u,s,h, or vu [T]: ';
str = input(prompt,'s');

 if str == 'P'
    prompt2 = 'What value do you have? T,vf,vg,uf,ug,hf,fg,hg,sf, or sg [T]: ';
    str2= input(prompt2, 's');
    if str2 == 'T'
        prompt3 = 'What is the value for Temperature?: ';
    x = input(prompt3)
        x_k = interp1(T,P,x)
    else
     if str2 == 'vf'
        prompt3 = 'What is the value for vf?: ';
    x = input(prompt3)
  
    x_k= interp1(vf,P,x)
         else if str2 == 'vg'
        prompt3 = 'What is the value for vg?: ';
    x = input(prompt3)
    x_k = interp1(vg,P,x)
         else if str2 == 'hf'
        prompt3 = 'What is the value for hf?: ';
    x = input(prompt3)
    x_k = interp1(hf,P,x)
             else if str2 == 'fg'
        prompt3 = 'What is the value for fg?: ';
    x = input(prompt3)
    x_k = interp1(fg,P,x)
                 else if str2 == 'hg'
        prompt3 = 'What is the value for hg: ';
    x = input(prompt3)
    x_k = interp1(hg,P,x)
                     else if str2 == 'sf'
        prompt3 = 'What is the value for sf: ';
    x = input(prompt3)
    x_k = interp1(sf,P,x)
    else if str2 == 'sg'
        prompt3 = 'What is the value for sg?: ';
    x = input(prompt3)
    x_k = interp1(sg,P,x)
    else if str2 == 'uf'
        prompt3 = 'What is the value for uf?: ';
    x = input(prompt3)
    x_k = interp1(uf,P,x)
    else if str2 == 'ug'
        prompt3 = 'What is the value for ug?: ';
    x = input(prompt3)
    x_k = interp1(ug,P,x)
        end; end; end; end; end; end; end; end; end; end; end
           
 

 
 if  str == 'vf'
     format long
    prompt2 = 'What value do you have? T,P,vg,uf,ug,hf,fg,hg,sf, or sg [P]: ';
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
 
 if  str == 'vg'
    prompt2 = 'What value do you have? T,P,vf,uf,ug,hf,fg,hg,sf, or sg [P]: ';
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
    prompt2 = 'What value do you have? T,P,vf,vg,ug,hf,fg,hg,sf, or sg [P]: ';
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
if  str == 'ug'
    prompt2 = 'What value do you have? T,P,vf,vg,uf,hf,fg,hg,sf, or sg [P]: ';
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
    prompt2 = 'What value do you have? T,P,vf,vg,uf,ug,fg,hg,sf, or sg [P]: ';
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
    prompt2 = 'What value do you have? T,P,vf,vg,uf,ug,hf,hg,sf, or sg [P]: ';
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
    x_k = interp1(sg,fg,x)
    else if str2 == 'uf'
        prompt3 = 'What is the value for uf?: ';
    x = input(prompt3)
    x_k = interp1(uf,fg,x)
    else if str2 == 'ug'
        prompt3 = 'What is the value for ug?: ';
    x = input(prompt3)
    x_k = interp1(ug,fg,x)
        end; end; end; end; end; end; end; end; end; end; end 
    if  str == 'hg'
    prompt2 = 'What value do you have? T,P,vf,vg,uf,ug,hf,fg,sf, or sg [P]: ';
    str2= input(prompt2, 's');
 if str2 == 'T'
        prompt3 = 'What is the value for T?: ';
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
    prompt2 = 'What value do you have? T,P,vf,vg,uf,ug,hf,fg,hg, or sg [P]: ';
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
    prompt2 = 'What value do you have? T,P,vf,vg,uf,ug,hf,fg,hg,sf [P]: ';
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
            TableA_10_R134a_Temperature
        else if str2 == "N"
                Table_reading
            end
        end
        
end
    end
end

