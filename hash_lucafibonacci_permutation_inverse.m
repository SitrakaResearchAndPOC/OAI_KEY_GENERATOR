function hash = hash_lucafibonacci_permutation_inverse(matrix, index_in,block_split, instability_repeat, nb_bit)
    index_in = index_in -1;

    [H, W] = size(matrix); % needed for linearized the matrix
                            
    number_block_split = floor(((W*H)/block_split));

    periode = 0;
    if(index_in >=  number_block_split)
        periode = floor(index_in/number_block_split);
        index_in = mod(index_in,  number_block_split);
    end
    
	% disp('periode');
    % disp(periode);
    matrix_permute = lucafibonacci_permutation_inverse(matrix, instability_repeat+periode);
                            
    msg = zeros(1,block_split); 
    index_msg = 1;
    for i = index_in+1: index_in + block_split
        % translate to index
        indexY = mod(i-1,W);
        indexX = floor((i-1)/W);
                                
        msg(index_msg) = matrix_permute(indexX+1, indexY+1);
        index_msg = index_msg+1;
    end
	
	% disp('MSG');
	% disp(msg);
    hash = Shake256(msg, nb_bit/8); % 64 for 256bits, 32 for 128 bits

end