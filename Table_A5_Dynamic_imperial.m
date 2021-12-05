%function [nu,u,h,s] = Table_A4(t,p)

function Table_A5_Dynamic_imperial(Input1,Input1_type,Input2,Input2_type,Output1_type)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This function takes in Temperature and Pressure, and outputsthe remaining thermo variables
% Note to reader: See how this version is not that conducive for "learning".  The other variant is
% easier to follow.
%
%   Index --- Variable
%   1         Pressure (bar)
%   2         Temperature (degC)
%   3         nu
%   4         u
%   5         h
%   6         s
%
%  Example.  Find h for P=60bar and T=280C.
%  h_output = Table_A4_Dynamic(60,1,280,2,5);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% Test relics.  Delete when this becomes a proper function
% Input1 = 200;
% Input1_type = 2; %200degC
% Input2 = 2;
% Input2_type = 1; %2 bar (omg I hate this unit)
% Output1_type = 4;%give me output of u

%table = [      P       T       nu         u       h      s     ];
%units      bar     degC m^3/kg kJ/kg   kJ/kg  kJ/kg/K
%% Raw DATA entry
table_A4=[ 	500	32	0.015994	0	1.49	0
			500	50	0.015998	18.02	19.5	0.03599
			500	100	0.016106	67.87	69.36	0.12932
			500	150	0.016318	117.66	119.17	0.21457
			500	200	0.016608	167.65	169.19	0.29341
			500	300	0.017416	268.92	270.53	0.43641
			500	400	0.018608	373.68	375.4	0.56604
			500	467.1	0.019748	447.7	449.53	0.64904
			1000	32	0.015967	0.03	2.99	5.00E-05
			1000	50	0.015972	17.99	20.94	0.03592
			1000	100	0.016082	67.7	70.68	0.12901
			1000	150	0.016293	117.38	120.4	0.2141
			1000	200	0.01658	167.26	170.32	0.29281
			1000	300	0.017379	268.24	271.46	0.43552
			1000	400	0.01855	372.55	375.98	0.56472
			1000	544.7	0.021591	538.39	542.38	0.7432
			1500	32	0.015939	0.05	4.47	7.00E-05
			1500	50	0.015946	17.95	22.38	0.03584
			1500	100	0.016058	67.53	71.99	0.1287
			1500	150	0.016268	117.1	121.62	0.21364
			1500	200	0.016554	166.87	171.46	0.29221
			1500	300	0.017343	267.58	272.39	0.43463
			1500	400	0.018493	371.45	376.59	0.56343
			1500	500	0.02024	481.8	487.4	0.6853
			1500	596.4	0.02346	605	611.5	0.8082
			2000	32	0.015912	0.06	5.95	8.00E-05
			2000	50	0.01592	17.91	23.81	0.03575
			2000	100	0.016034	67.37	73.3	0.12839
			2000	150	0.016244	116.83	122.84	0.21318
			2000	200	0.016527	166.49	172.6	0.29162
			2000	300	0.017308	266.93	273.33	0.43376
			2000	400	0.018439	370.38	377.21	0.56216
			2000	500	0.02014	479.8	487.3	0.6832
			2000	636	0.02565	662.4	671.9	0.8623
			3000	32	0.015859	0.09	8.9	9.00E-05
			3000	50	0.01587	17.84	26.65	0.03555
			3000	100	0.015987	67.04	75.91	0.12777
			3000	150	0.016196	116.3	125.29	0.21226
			3000	200	0.016476	165.74	174.89	0.29046
			3000	300	0.01724	265.66	275.23	0.43205
			3000	400	0.018334	368.32	378.5	0.5597
			3000	500	0.019944	476.2	487.3	0.6794
			3000	695.5	0.03431	783.5	802.5	0.9732
			4000	32	0.015807	0.1	11.8	5.00E-05
			4000	50	0.015821	17.76	29.47	0.03534
			4000	100	0.015942	66.72	78.52	0.12714
			4000	150	0.01615	115.77	127.73	0.21136
			4000	200	0.016425	165.02	177.18	0.28931
			4000	300	0.017174	264.43	277.15	0.43038
			4000	400	0.018235	366.35	379.85	0.55734
			4000	500	0.019766	472.9	487.5	0.6758];
                        
%% Re-express table_A4 to human-readable format

% P_raw  = table_A4(:,1);
% T_raw  = table_A4(:,2);
% nu_raw = table_A4(:,3);
% u_raw  = table_A4(:,4);
% h_raw  = table_A4(:,5);
% s_raw  = table_A4(:,6);

x_raw = table_A4(:,Input1_type);
y_raw = table_A4(:,Input2_type);
z_raw = table_A4(:,Output1_type);
name  = ["Pressure (bar)" , "Temperature (degC)", "nu *1000 (m^3/kg)", "u(kJ/kg)", "h(kJ/kg)", "s(kJ/kg/K"];
 
%% Building functions for output variables as a function of the input variables

F = scatteredInterpolant(x_raw,y_raw,z_raw);

[xmin,xmax] = bounds(x_raw);
[ymin,ymax] = bounds(y_raw);
[xGrid,yGrid]=meshgrid(linspace(xmin,xmax,40),linspace(ymin,ymax,40));
zGrid = F(xGrid,yGrid);

%% Calculate output variables from input variables
Output1 = F(Input1,Input2)

%% Test Plot to check input domain range.  Set dummy = 0 to suppress.

dummy = 1;
if dummy == 1
    figure;
    hold on
    contour(xGrid,yGrid,zGrid,'ShowText','on','LineWidth',1)
    plot(x_raw,y_raw,'x');
    plot(Input1,Input2,'^','MarkerSize',12,'LineWidth',2);
    hold off
    xlabel(name(Input1_type));ylabel(name(Input2_type));title(['Contours of ' name(Output1_type)]);grid on
    legend('','RAW Data Points','Request Data Point')
end


prompt1 = 'Are you finished with reading Tables? Y/N [Y] ';
str1 = input(prompt1,'s');
if str1 == 'Y'
    sprintf(" Thank you for using my code. Good luck in Thermo")
else if str1 =='N'
        prompt2 = "Do you need this table again? Y/N [Y]: ";
        str2 = input(prompt2,'s');
        if str2 =="Y"
            sprintf("Type into command Prompt: Table_A5_Dynamic_imperial(Input1,Input1_type,Input2,Input2_type,Output1_type)")
        else if str2 == "N"
                Table_reading
            end
        end
        
end
    end