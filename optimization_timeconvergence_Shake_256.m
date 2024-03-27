function [result, result_times] = optimization_timeconvergence_Shake_256(n, nb_bit ,nb_repeat)

    delta_times = 50;
    result = (-1)*ones(1, n);
    result_times = (-1)*ones(1, n);
    
    % nb_repeat = 10;
    cmpt_times_temp = (-1)*ones(1,  nb_repeat);

    square_length_matrix = 1;   
    for  repeat = 1 : nb_repeat
       a = zeros(square_length_matrix,square_length_matrix); 
       tic
       Shake256(a,nb_bit/8); %256bit -> 32; 512bit -> 64
       cmpt_times_temp(repeat) = toc; 
    end
    actual_square_times = mean(cmpt_times_temp);

    % actual times 
    disp('cmpt_times_temp');
    disp(cmpt_times_temp);

    
    % actual times 
    disp('actual_square_times');
    disp(actual_square_times);
    
    % SQUARE SPLITTING
    square_length_matrix = 2;    
    find_result = 1;
    while (find_result <= n)
        a = zeros(square_length_matrix,square_length_matrix); 
        tic
        Shake256(a,64); %256bit -> 32; 512bit -> 64
        next_square_times = toc;
        
        while(abs(next_square_times - actual_square_times)*1000 <= delta_times)
            actual_square_times = next_square_times;
            
            cmpt_times_temp = (-1)*ones(1,  nb_repeat);
            for  repeat = 1 : nb_repeat
                a = zeros(square_length_matrix,square_length_matrix); 
                tic
                Shake256(a,nb_bit/8); %256bit -> 32; 512bit -> 64                
                cmpt_times_temp(repeat) = toc; 
            end
            next_square_times= mean(cmpt_times_temp);
            square_length_matrix = square_length_matrix + 1;
            
			% actual times 
			disp('cmpt_times_temp');
			disp(cmpt_times_temp);
			
			
            %disp('actual_square_times');
            %disp(actual_square_times);
            %disp('next_square_times');
            %disp(next_square_times);
            %disp('delta');
            %disp(abs(next_square_times - actual_square_times)*1000);
			
			
        end
        
        %actual_square_times = 
        %square_length_matrix = square_length_matrix + 1;
        min = square_length_matrix-2;
        max = square_length_matrix-1;
        
        
        disp('min');
        disp(min);
        
        disp('max');
        disp(max);
        
        % SEQUENTIAL SPLIT          
        % let's treat at min*min and max*max
        cmpt_times2_temp = (-1)*ones(1,  nb_repeat);
        actual_square_times2 = actual_square_times; 

        % THE ALGORITHM COULD MAKE NEXT STEP
        actual_square_times = next_square_times;

        
        
        index = min*min+1;
        find = false;
        
        while ((index <= max*max) && (find ~= true))
            for repeat=1:nb_repeat
                  a = zeros(1,index); 
                  tic
                  Shake256(a,nb_bit/8); %256 -> 32; 516 -> 64
                  cmpt_times2_temp(repeat) = toc;
            end
            next_square_times2 = mean(cmpt_times2_temp);
            
            disp('delta');
            disp(abs(next_square_times2 - actual_square_times2)*1000);
			
            if (abs(next_square_times2 - actual_square_times2)*1000) > delta_times
                find = true;
                disp('FOUND : index');
                disp(index);
                % let's insert the find solution
              
            end
            
            actual_square_times2 = next_square_times2;
            
            %disp('cmp times temp');
            %disp(cmpt_times_temp)

            index = index+1;
        end
        
        result(find_result) = index - 2;
        result_times(find_result) = actual_square_times2*1000;
       % actual_square_times = actual_square_times2;
        
        find_result =  find_result + 1;
    end

end