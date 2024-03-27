%code by sitraka 25/12/2017
% Utilisation de la transformation suivante
% x' = (F(i)*x + F(i+1)*y)%X
% y' = (F(i+2)*x + F(i+3)*y)%Y
% periode est configurable selon le choix
% Plus la periode est grande , plus l'image est confus
% la transformation prend comme parametre l'image et la periode
%la transformation inverse prend parametre l'image transformée et la periode

function result =  fibonacci_permutation_inverse(img, periode)
%periode=2;
    [X, Y, K] = size(img);
    %if fibonacci transforme
    % find the f(r)mod i and f(r) mod j
    % can find easier the rest of the parameter

    if(K ==3)
        [b, a] = fibonacci(periode+1,X);
        [d, c] = fibonacci(periode+3,Y);
        for k=periode:-1:1
            xprec = mod(b-a,X);
            yprec = mod(d-c,Y);
        %    disp('inverse');
        %    disp(d);
        %    disp(c);
        %    disp(b);
        %    disp(a);
            for i =X:-1:1
                for j = Y:-1:1
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
            b = mod(a,X);
            a = xprec;
          
            d = mod(c, Y);
            c = yprec;
        end        
        
    else
        [b, a] = fibonacci(periode+1,X);
        [d, c] = fibonacci(periode+3,Y);

        for k=periode:-1:1
            xprec = mod(b-a,X);
            yprec = mod(d-c,Y);
        %    disp('inverse');
        %    disp(d);
        %    disp(c);
        %    disp(b);
        %    disp(a);
            for i =X:-1:1
                for j = Y:-1:1
                    i_permute = mod(a*(i-1)+b*(j-1),X);
                    j_permute = mod(c*(i-1)+d*(j-1),Y);
                    temp = img(i,j);
                    img(i,j)  = img(i_permute+1, j_permute+1); % on remet l'image transforme
                    img(i_permute+1, j_permute+1) = temp;
                
                end
            end 
           b = mod(a,X);
           a = xprec;
          
           d = mod(c, Y);
           c = yprec;
 
        end        
    end
    result = img;
end


function [result, f1] = fibonacci(n,M)
    if(n == 1)
       result =  0;
    else if(n == 2)
            result = 1;
        else
            f1 = 0;
            f2 = 1;
            for i = n:-1:3
                result = mod(f1+f2,M);
                f1 = mod(f2,M);
                f2 = result;
            end
        end
    end
end


function [result,f1] = Luca(n, M)
    if(n == 1)
       result =  2;
    else if(n == 2)
            result = 1;
        else
            f1 = 2;
            f2 = 1;
            for i = n:-1:3
                result = mod(f1+f2,M);
                f1 = mod(f2,M);
                f2 = result;
            end
        end
    end
end