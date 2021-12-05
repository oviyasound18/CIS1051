clear all
clc
choice = menu("Choose Imperial or SI units","Imperial", "SI");
switch choice;
    case 1;
        if choice ==1;
            choice2 = menu("Choose table", 'Table A2 imperial', 'Table A3 imperial' , 'Table A4 imperial', 'Table A5 imperial', 'Table 10 R134a Temp imperial', 'Table 11 R134a Press imperial', 'Table A12 R134a Super Heated imperial', 'Table A22 imperial');
            switch choice2;


                case 1;
    TableA_2_imperial

    case 2;
    TableA_03_imperial

                case 3;
    sprintf( "Type into command Prompt: Table_A4_Dynamic_imperial(Input1,Input1_type,Input2,Input2_type,Output1_type) \n Input Type \n Index --- Variable \n 1 Pressure (bar) \n 2 Temperature (degC) \n 3 nu \n 4 u \n 5 h \n 6 s")
    prompt3 = 'Do you need help with Table A4? Y/N [Y]:';
    str = input(prompt3,'s');
    if str == 'Y'
       help Help_for_Table_A4_Dynamic
       sprintf( "Type into command Prompt: Table_A4_Dynamic_imperial(Input1,Input1_type,Input2,Input2_type,Output1_type) \n Input Type \n Index --- Variable \n 1 Pressure (bar) \n 2 Temperature (degC) \n 3 nu \n 4 u \n 5 h \n 6 s")

     else if str == 'N'
              sprintf( "Type into command Prompt: Table_A4_Dynamic_imperial(Input1,Input1_type,Input2,Input2_type,Output1_type)")
       end
    end

                case 4;
   sprintf( "Type into command Prompt: Table_A5_Dynamic_imperial(Input1,Input1_type,Input2,Input2_type,Output1_type)")
   sprintf(" Index --- Variable \n 1 Pressure (bar) \n 2 Temperature (degC) \n 3 nu \n 4 u \n 5 h \n 6 s")
    prompt3 = 'Do you need help with Table A5? Y/N [Y]:';
    str = input(prompt3,'s');
    if str == 'Y'
       help Help_for_Table_A5_Dynamic
       sprintf( "Type into command Prompt: Table_A5_Dynamic_imperial(Input1,Input1_type,Input2,Input2_type,Output1_type)")
     else if str == 'N'
              sprintf( "Type into command Prompt: Table_A5_Dynamic_imperial(Input1,Input1_type,Input2,Input2_type,Output1_type)")
         end
    end


                case 5;
    TableA_10_R134a_Temperature_Imperial
                case 6;
    

    TableA_11_R134a_Pressure_Imperial
                case 7;

   sprintf( "Type into command Prompt: Table_A12_R134a_SUPHEATED_Dynamic_Imperial(Input1,Input1_type,Input2,Input2_type,Output1_type)")
  
    prompt3 = 'Do you need help with Table A12? Y/N [Y]:';
    str = input(prompt3,'s');
    if str == 'Y'
       help Help_for_Table_A4_Dynamic
       sprintf( "Type into command Prompt: Table_A12_R134a_SUPHEATED_Dynamic_Imperial(Input1,Input1_type,Input2,Input2_type,Output1_type)")
    else if str == 'N'
              sprintf( "Type into command Prompt: Table_A4_Dynamic_imperial(Input1,Input1_type,Input2,Input2_type,Output1_type)")
         end
    end

                case 8;

    TableA_22_imperial
end
        end
%----------------------SI units---------------------
    case 2;
        if choice == 2;
            choice2 = menu("Choose table", 'Table A2 SI', 'Table A3 SI' , 'Table A4 SI', 'Table A5 SI', 'Table A8 R22 Pressure', 'Table 10 R134a Temp SI', 'Table 11 R134a Press SI', 'Table A12 R134a Super Heated SI', 'Table A22 SI');
    switch choice2
        case 1;
   
    TableA_2

        case 2;
    TableA_3


        case 3;
    sprintf( "Type into command Prompt: Table_A4_Dynamic_SI(Input1,Input1_type,Input2,Input2_type,Output1_type)\n Input Type \n Index --- Variable \n 1 Pressure (bar) \n 2 Temperature (degC) \n 3 nu \n 4 u \n 5 h \n 6 s")
    prompt3 = 'Do you need help with Table A4? Y/N [Y]:';
    str = input(prompt3,'s');
    if str == 'Y'
       help Help_for_Table_A4_Dynamic
       sprintf( "Type into command Prompt: Table_A4_Dynamic_SI(Input1,Input1_type,Input2,Input2_type,Output1_type)\n Input Type \n Index --- Variable \n 1 Pressure (bar) \n 2 Temperature (degC) \n 3 nu \n 4 u \n 5 h \n 6 s")

    else if str == 'N'
              sprintf( "Type into command Prompt: Table_A4_Dynamic_SI(Input1,Input1_type,Input2,Input2_type,Output1_type)")
         end
    end


        case 4;
   sprintf( "Type into command Prompt: Table_A5_Dynamic_SI(Input1,Input1_type,Input2,Input2_type,Output1_type)")
   sprintf(" Index --- Variable \n 1 Pressure (bar) \n 2 Temperature (degC) \n 3 nu \n 4 u \n 5 h \n 6 s")
    prompt3 = 'Do you need help with Table A5? Y/N [Y]:';
    str = input(prompt3,'s');
    if str == 'Y'
       help Help_for_Table_A4_Dynamic
        sprintf( "Type into command Prompt: Table_A5_Dynamic(Input1,Input1_type,Input2,Input2_type,Output1_type)")
    else if str == 'N'
             sprintf( "Type into command Prompt: Table_A5_Dynamic(Input1,Input1_type,Input2,Input2_type,Output1_type)")
        end
    end


        case 5;
            TableA_8_R22_Pressure
        case 6;
    TableA_10_R134a_Temperature

    
        case 7;
    TableA_11_R134a_Pressure
        case 8;
   sprintf( "Type into command Prompt: Table_A12_R134a_SUPHEATED_Dynamic_SI(Input1,Input1_type,Input2,Input2_type,Output1_type)")
   sprintf(" Index --- Variable \n 1 Pressure (bar) \n 2 Temperature (degC) \n 3 nu \n 4 u \n 5 h \n 6 s")
    prompt3 = 'Do you need help with Table A12? Y/N [Y]:';
    str = input(prompt3,'s');
    if str == 'Y'
       help Help_for_Table_A4_Dynamic
       sprintf( "Type into command Prompt: Table_A12_R134a_SUPHEATED_Dynamic_SI(Input1,Input1_type,Input2,Input2_type,Output1_type)")
    else if str == 'N'
             sprintf( "Type into command Prompt: Table_A12_R134a_SUPHEATED_Dynamic_SI(Input1,Input1_type,Input2,Input2_type,Output1_type)")
        end
    end


        case 9;
    TableA_22
end
end
        end

