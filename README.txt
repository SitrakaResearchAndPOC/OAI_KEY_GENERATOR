Graph for determine the optimized number of bloc by plotting methodes for shake256 over matlab : 
>> evaluation_timeconvergence_Shake_256(25, 256, 10)
25 : nbr square matrix
256 : nb bit
10 : nb repetition for shake



Giving the optimized number of bloc and time for shake256
>> [result, times_times] = optimization_timeconvergence_Shake_256(3, 256, 10)
3 : Number of result
256 : nb bit
10 :  nb repetition for shake

Getting key by shake256
>> gettingkey_PermutationSplit_Shake_256(choice, inverse, nb_bit)
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

Just test one by one : 
>> gettingkey_PermutationSplit_Shake_256(1, 0, 256)
>> gettingkey_PermutationSplit_Shake_256(1, 1, 256)
>> gettingkey_PermutationSplit_Shake_256(2, 0, 256)
>> gettingkey_PermutationSplit_Shake_256(2, 1, 256)
>> gettingkey_PermutationSplit_Shake_256(3, 0, 256)
>> gettingkey_PermutationSplit_Shake_256(3, 1, 256)
>> gettingkey_PermutationSplit_Shake_256(4, 0, 256)
>> gettingkey_PermutationSplit_Shake_256(4, 1, 256)
>> gettingkey_PermutationSplit_Shake_256(5, 0, 256)
>> gettingkey_PermutationSplit_Shake_256(5, 1, 256)

Finding binary representation  of key : 
>> plottingkey(1, 256)
1 : index
256 : nb bit

