% code by sitraka 25/12/2017
% utilisation de la trasformation
% x' = (a*x + b*y)%X
% y' = (c*x + d*y)%Y
% Pour Arnold transformation nous aurons :  a = k+1, b = k , c = 1 et d = 1
% periode est configurable selon le choix
% Plus la periode est grande , plus l'image est confus
% la transformation prend comme parametre l'image et la periode
%la transformation inverse prend parametre l'image transformée et la periode



function result =  arnold_permutation(img, periode)
% periode=2;
    [X, Y, K] = size(img);
    if(K==3)
        for k=1:periode
            a = k+1;
            b = k;
            c = 1;
            d = 1;
            for i =1:X
                 for j = 1:Y
                    i_permute = mod(a*(i-1)+b*(j-1),X);
                    j_permute = mod(c*(i-1)+d*(j-1),Y);
                    %for red
                    temp = img(i,j,1);
                    img(i,j,1)  = img(i_permute+1, j_permute+1,1); % on remet l'image transforme
                    img(i_permute+1, j_permute+1,1) = temp;
                    
                    %for green
                    temp = img(i,j,2);
                    img(i,j,2)  = img(i_permute+1, j_permute+1,2); % on remet l'image transforme
                    img(i_permute+1, j_permute+1,2) = temp;
                    
                    %for blue
                    temp = img(i,j,3);
                    img(i,j,3)  = img(i_permute+1, j_permute+1,3); % on remet l'image transforme
                    img(i_permute+1, j_permute+1,3) = temp;

                 end
            end
        end            
    else
        for k=1:periode
            a = k+1;
            b = k;
            c = 1;
            d = 1;
            for i =1:X
                 for j = 1:Y
                    i_permute = mod(a*(i-1)+b*(j-1),X);
                    j_permute = mod(c*(i-1)+d*(j-1),Y);
                    temp = img(i,j);
                    img(i,j)  = img(i_permute+1, j_permute+1); % on remet l'image transforme
                    img(i_permute+1, j_permute+1) = temp;
                 end
            end
        end    
        
    end
    result = img;
end
