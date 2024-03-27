function gettingkey_PermutationSplit_Shake_256(choice, inverse, nb_bit)
        matrix = imread('lena.bmp');
        
        block_split = 135;
        instability_repeat = 5;
        
        % disp('beginning matrix');
        % disp(img);
        
        % choice : 1 , inverse : 0 - Arnold Permutation
        % choice : 1 , inverse : 1 - Arnold Permutation Inverse        
        % choice : 2 , inverse : 0 - Fibonacci Permutation
        % choice : 2 , inverse : 1 - Fibonacci Permutation Inverse
		% choice : 3 , inverse : 0 - Luca Permutation
		% choice : 3 , inverse : 1 - Luca Permutation Inverse
        % choice : 4 , inverse : 0 - Fibonacci Luca Permutation
        % choice : 4 , inverse : 1 - Fibonacci Luca Permutation Inverse        
        % choice : 5 , inverse : 0 - Luca Fibonacci Permutation
        % choice : 5 , inverse : 1 - Fibonacci Luca Permutation Inverse        


		while(true)
			switch choice
				case 1
					switch inverse
						case 0 
							disp(' Arnold Permutation');
                            index_in = input('Please Enter the index of generated password number greater than 1  : ');
                            hash = hash_arnold_permutation(matrix, index_in,block_split, instability_repeat, nb_bit);
                            disp(hash);
                            
						case 1
							disp(' Arnold Permutation Inverse');
                            index_in = input('Please Enter the index of generated password number greater than 1  : ');
                            hash = hash_arnold_permutation_inverse(matrix, index_in,block_split, instability_repeat, nb_bit);
                            disp(hash);
                            
						otherwise
							disp('error inverse parameter, it should between 0 and 1');
					end
				case 2
					switch inverse
						case 0 
							disp(' Fibonacci Permutation');
                            index_in = input('Please Enter the index of generated password number greater than 1  : ');
                            hash = hash_fibonacci_permutation(matrix, index_in,block_split, instability_repeat, nb_bit);
                            disp(hash);
                        case 1
							disp(' Fibonacci Permutation Inverse');
                            index_in = input('Please Enter the index of generated password number greater than 1  : ');
                            hash = hash_fibonacci_permutation_inverse(matrix, index_in,block_split, instability_repeat, nb_bit);
                            disp(hash);

                        otherwise
							disp('error inverse parameter, it should between 0 and 1');
					end
				case 3
					switch inverse
						case 0 
							disp(' Luca Permutation');
                            index_in = input('Please Enter the index of generated password number greater than 1  : ');
                            hash = hash_luca_permutation(matrix, index_in,block_split, instability_repeat, nb_bit);
                            disp(hash);

                        case 1
							disp(' Luca Permutation Inverse');
                            index_in = input('Please Enter the index of generated password number greater than 1  : ');
                            hash = hash_luca_permutation_inverse(matrix, index_in,block_split, instability_repeat, nb_bit);
                            disp(hash);
                            
						otherwise
							disp('error inverse parameter, it should between 0 and 1');
					end
				
				case 4
					switch inverse
						case 0 
							disp(' Fibonacci Luca Permutation');
                            index_in = input('Please Enter the index of generated password number greater than 1  : ');
                            hash = hash_fibonacciluca_permutation(matrix, index_in,block_split, instability_repeat, nb_bit);
                            disp(hash);

                        case 1
							disp(' Fibonacci Luca Permutation Inverse');
                            index_in = input('Please Enter the index of generated password number greater than 1  : ');
                            hash = hash_fibonacciluca_permutation_inverse(matrix, index_in,block_split, instability_repeat, nb_bit);
                            disp(hash);
                            
                        otherwise
							disp('error inverse parameter, it should between 0 and 1');
					end
				
				case 5
					switch inverse
						case 0 
							disp(' Luca Fibonacci Permutation');
                            index_in = input('Please Enter the index of generated password number greater than 1  : ');
                            hash = hash_lucafibonacci_permutation(matrix, index_in,block_split, instability_repeat, nb_bit);
                            disp(hash);

                        case 1
							disp(' Luca Fibonacci Permutation Inverse');
                            index_in = input('Please Enter the index of generated password number greater than 1  : ');
                            hash = hash_lucafibonacci_permutation_inverse(matrix, index_in,block_split, instability_repeat, nb_bit);
                            disp(hash);
                        otherwise
							disp('error inverse parameter, it should between 0 and 1');
					end

				otherwise 
					disp('error choice parameter, it should between 1 and 5');
			end

		end

end