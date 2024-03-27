function plottingkey(index_in, nb_bit)
        matrix = imread('lena.bmp');        
        block_split = 135;
        instability_repeat = 5;
        
        % PERMUTATION PLOT
        figure
        
        % ARNOLD EVALUATING
        hash = hash_arnold_permutation(matrix, index_in,block_split, instability_repeat, nb_bit);
        binhash = hexToBinaryVector(hash);
        %disp(binhash);
        subplot(5,1,1)
        stairs(binhash);
        ylim([0 1.2]);
        xlim([0 nb_bit+1]);
        title('Arnold Permutation and SHAKE ');

        % FIBONACCI EVALUATING
        hash = hash_fibonacci_permutation(matrix, index_in,block_split, instability_repeat, nb_bit);
        binhash = hexToBinaryVector(hash);
        %disp(binhash);
        subplot(5,1,2)
        stairs(binhash);
        ylim([0 1.2]);
        xlim([0 nb_bit+1]);
        title('Fibonacci Permutation and SHAKE ');
        

        % LUCA EVALUATING
        hash = hash_luca_permutation(matrix, index_in,block_split, instability_repeat, nb_bit);
        binhash = hexToBinaryVector(hash);
        %disp(binhash);
        subplot(5,1,3)
        stairs(binhash);
        ylim([0 1.2]);
        xlim([0 nb_bit+1]);
        title('Luca Permutation and SHAKE ');
        
        % FIBONACCI LUCA EVALUATING
        hash = hash_fibonacciluca_permutation(matrix, index_in,block_split, instability_repeat, nb_bit);
        binhash = hexToBinaryVector(hash);
        %disp(binhash);
        subplot(5,1,4)
        stairs(binhash);
        ylim([0 1.2]);
        xlim([0 nb_bit+1]);
        title('Fibonacci Luca Permutation and SHAKE ');

        
        % LUCA FIBONACCI EVALUATING
        hash = hash_lucafibonacci_permutation(matrix, index_in,block_split, instability_repeat, nb_bit);
        binhash = hexToBinaryVector(hash);
        %disp(binhash);
        subplot(5,1,5)
        stairs(binhash);
        ylim([0 1.2]);
        xlim([0 nb_bit+1]);        
        title('Luca Fibonacci Permutation and SHAKE ');
        
 
        
        
        
        
        
        %%%%%%%%%%%%%%%%%%%%%%%% %%%%      
        % PERMUTATION INVERSE PLOT  %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        figure
        
        % ARNOLD INVERSE EVALUATING
        hash = hash_arnold_permutation_inverse(matrix, index_in,block_split, instability_repeat, nb_bit);
        binhash = hexToBinaryVector(hash);
        %disp(binhash);
        subplot(5,1,1)
        stairs(binhash);
        ylim([0 1.2]);
        xlim([0 nb_bit+1]);
        title('Arnold Permutation  Inverse and SHAKE ');

        % FIBONACCI INVERSE EVALUATING
        hash = hash_fibonacci_permutation_inverse(matrix, index_in,block_split, instability_repeat, nb_bit);
        binhash = hexToBinaryVector(hash);
        %disp(binhash);
        subplot(5,1,2)
        stairs(binhash);
        ylim([0 1.2]);
        xlim([0 nb_bit+1]);
        title('Fibonacci Permutation Inverse and SHAKE ');
        

        % LUCA INVERSE EVALUATING
        hash = hash_luca_permutation_inverse(matrix, index_in,block_split, instability_repeat, nb_bit);
        binhash = hexToBinaryVector(hash);
        %disp(binhash);
        subplot(5,1,3)
        stairs(binhash);
        ylim([0 1.2]);
        xlim([0 nb_bit+1]);
        title('Luca Permutation Inverse and SHAKE ');
        
        % FIBONACCI LUCA INVERSE EVALUATING
        hash = hash_fibonacciluca_permutation_inverse(matrix, index_in,block_split, instability_repeat, nb_bit);
        binhash = hexToBinaryVector(hash);
        %disp(binhash);
        subplot(5,1,4)
        stairs(binhash);
        ylim([0 1.2]);
        xlim([0 nb_bit+1]);
        title('Fibonacci Luca Permutation Inverse and SHAKE ');

        
        % LUCA FIBONACCI INVERSE EVALUATING
        hash = hash_lucafibonacci_permutation_inverse(matrix, index_in,block_split, instability_repeat, nb_bit);
        binhash = hexToBinaryVector(hash);
        %disp(binhash);
        subplot(5,1,5)
        stairs(binhash);
        ylim([0 1.2]);
        xlim([0 nb_bit+1]);        
        title('Luca Fibonacci Permutation Inverse and SHAKE ');

        
end