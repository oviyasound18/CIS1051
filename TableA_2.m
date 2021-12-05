%imperial or si?function TableA_2
close all
clc
clear all
format short
A = [%0.01	0.00611	1.0002	206.136	0	2375.3	0.01	2501.3	2501.4	0	9.1562
%4	0.00813	1.00010	157.232	16.77	2380.9	16.78	2491.9	2508.7	0.061	9.0514
%5	0.00872	1.00011	147.12	20.97	2382.3	20.98	2489.6	2510.6	0.0761	9.0257
%6	0.00935	1.00012	137.734	25.19	2383.6	25.2	2487.2	2512.4	0.0912	9.0003
%8	0.01072	1.0002	120.917	33.59	2386.4	33.6	2482.5	2516.1	0.1212	8.9501
%10	0.01228	1.0004	106.379	42	2389.2	42.01	2477.7	2519.8	0.151	8.9008
11	0.01312	1.00041	99.857	46.2	2390.5	46.2	2475.4	2521.6	0.1658	8.8765
12	0.01402	1.0005	93.784	50.41	2391.9	50.41	2473	2523.4	0.1806	8.8524
13	0.01497	1.0007	88.124	54.6	2393.3	54.6	2470.7	2525.3	0.1953	8.8285
14	0.01598	1.0008	82.848	58.79	2394.7	58.8	2468.3	2527.1	0.2099	8.8048
15	0.01705	1.0009	77.926	62.99	2396.1	62.99	2465.9	2528.9	0.2245	8.7814
16	0.01818	1.0011	73.333	67.18	2397.4	67.19	2463.6	2530.8	0.239	8.7582
17	0.01938	1.0012	69.044	71.38	2398.8	71.38	2461.2	2532.6	0.2535	8.7351
18	0.02064	1.0014	65.038	75.57	2400.2	75.58	2458.8	2534.4	0.2679	8.7123
19	0.02198	1.0016	61.293	79.76	2401.6	79.77	2456.5	2536.2	0.2823	8.6897
20	0.02339	1.0018	57.791	83.95	2402.9	83.96	2454.1	2538.1	0.2966	8.6672
21	0.02487	1.002	54.514	88.14	2404.3	88.14	2451.8	2539.9	0.3109	8.645
22	0.02645	1.0022	51.447	92.32	2405.7	92.33	2449.4	2541.7	0.3251	8.6229
23	0.0281	1.0024	48.574	96.51	2407	96.52	2447	2543.5	0.3393	8.6011
24	0.02985	1.0027	45.883	100.7	2408.4	100.7	2444.7	2545.4	0.3534	8.5794
25	0.03169	1.0029	43.36	104.88	2409.8	104.89	2442.3	2547.2	0.3674	8.558
26	0.03363	1.0032	40.994	109.06	2411.1	109.07	2439.9	2549	0.3814	8.5367
27	0.03567	1.0035	38.774	113.25	2412.5	113.25	2437.6	2550.8	0.3954	8.5156
28	0.03782	1.0037	36.69	117.42	2413.9	117.43	2435.2	2552.6	0.4093	8.4946
29	0.04008	1.004	34.733	121.6	2415.2	121.61	2432.8	2554.5	0.4231	8.4739
30	0.04246	1.0043	32.894	125.78	2416.6	125.79	2430.5	2556.3	0.4369	8.4533
31	0.04496	1.0046	31.165	129.96	2418	129.97	2428.1	2558.1	0.4507	8.4329
32	0.04759	1.005	29.54	134.14	2419.3	134.15	2425.7	2559.9	0.4644	8.4127
33	0.05034	1.0053	28.011	138.32	2420.7	138.33	2423.4	2561.7	0.4781	8.3927
34	0.05324	1.0056	26.571	142.5	2422	142.5	2421	2563.5	0.4917	8.3728
35	0.05628	1.006	25.216	146.67	2423.4	146.68	2418.6	2565.3	0.5053	8.3531
36	0.05947	1.0063	23.94	150.85	2424.7	150.86	2416.2	2567.1	0.5188	8.3336
38	0.06632	1.0071	21.602	159.2	2427.4	159.21	2411.5	2570.7	0.5458	8.295
40	0.07384	1.0078	19.523	167.56	2430.1	167.57	2406.7	2574.3	0.5725	8.257
45	0.09593	1.0099	15.258	188.44	2436.8	188.45	2394.8	2583.2	0.6387	8.1648
50	0.1235	1.0121	12.032	209.32	2443.5	209.33	2382.7	2592.1	0.7038	8.0763
55	0.1576	1.0146	9.568	230.21	2450.1	230.23	2370.7	2600.9	0.7679	7.9913
60	0.1994	1.0172	7.671	251.11	2456.6	251.13	2358.5	2609.6	0.8312	7.9096
65	0.2503	1.0199	6.197	272.02	2463.1	272.06	2346.2	2618.3	0.8935	7.831
70	0.3119	1.0228	5.042	292.95	2469.6	292.98	2333.8	2626.8	0.9549	7.7553
75	0.3858	1.0259	4.131	313.9	2475.9	313.93	2321.4	2635.3	1.0155	7.6824
80	0.4739	1.0291	3.407	334.86	2482.2	334.91	2308.8	2643.7	1.0753	7.6122
85	0.5783	1.0325	2.828	355.84	2488.4	355.9	2296	2651.9	1.1343	7.5445
90	0.7014	1.036	2.361	376.85	2494.5	376.92	2283.2	2660.1	1.1925	7.4791
95	0.8455	1.0397	1.982	397.88	2500.6	397.96	2270.2	2668.1	1.25	7.4159
100	1.014	1.0435	1.673	418.94	2506.5	419.04	2257	2676.1	1.3069	7.3549
110	1.433	1.0516	1.21	461.14	2518.1	461.3	2230.2	2691.5	1.4185	7.2387
120	1.985	1.0603	0.8919	503.5	2529.3	503.71	2202.6	2706.3	1.5276	7.1296
130	2.701	1.0697	0.6685	546.02	2539.9	546.31	2174.2	2720.5	1.6344	7.0269
140	3.613	1.0797	0.5089	588.74	2550	589.13	2144.7	2733.9	1.7391	6.9299
150	4.758	1.0905	0.3928	631.68	2559.5	632.2	2114.3	2746.5	1.8418	6.8379
160	6.178	1.102	0.3071	674.86	2568.4	675.55	2082.6	2758.1	1.9427	6.7502
170	7.917	1.1143	0.2428	718.33	2576.5	719.21	2049.5	2768.7	2.0419	6.6663
180	10.02	1.1274	0.1941	762.09	2583.7	763.22	2015	2778.2	2.1396	6.5857
190	12.54	1.1414	0.1565	806.19	2590	807.62	1978.8	2786.4	2.2359	6.5079
200	15.54	1.1565	0.1274	850.65	2595.3	852.45	1940.7	2793.2	2.3309	6.4323
210	19.06	1.1726	0.1044	895.53	2599.5	897.76	1900.7	2798.5	2.4248	6.3585
220	23.18	1.19	0.08619	940.87	2602.4	943.62	1858.5	2802.1	2.5178	6.2861
230	27.95	1.2088	0.07158	986.74	2603.9	990.12	1813.8	2804	2.6099	6.2146
240	33.44	1.2291	0.05976	1033.2	2604	1037.3	1766.5	2803.8	2.7015	6.1437
250	39.73	1.2512	0.05013	1080.4	2602.4	1085.4	1716.2	2801.5	2.7927	6.073
260	46.88	1.2755	0.04221	1128.4	2599	1134.4	1662.5	2796.6	2.8838	6.0019
270	54.99	1.3023	0.03564	1177.4	2593.7	1184.5	1605.2	2789.7	2.9751	5.9301
280	64.12	1.3321	0.03017	1227.5	2586.1	1236	1543.6	2779.6	3.0668	5.8571
290	74.36	1.3656	0.02557	1278.9	2576	1289.1	1477.1	2766.2	3.1594	5.7821
300	85.81	1.4036	0.02167	1332	2563	1344	1404.9	2749	3.2534	5.7045
320	112.7	1.4988	0.01549	1444.6	2525.5	1461.5	1238.6	2700.1	3.448	5.5362
340	145.9	1.6379	0.0108	1570.3	2464.6	1594.2	1027.9	2622	3.6594	5.3357
360	186.5	1.8925	0.006945	1725.2	2351.5	1760.5	720.5	2481	3.9147	5.0526
374.14	220.9	3.155	0.003155	2029.6	2029.6	2099.3	0	2099.3	4.4298	4.4298];


    P= A(:,2);
    T = A(:,1);
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
    %disp(vf)
    %disp(P)
    %disp(x)
    %vfs = vf(7:end)
    %Ps = P(7:end)
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
prompt4= " What is the x value? ";
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
            TableA_2
        else if str2 == "N"
                Table_reading
            end
        end
        
end
    end


