%code by sitraka 25/12/2017
% Utilisation de la transformation suivante
% x' = (F(i)*x + F(i+1)*y)%X
% y' = (F(i+2)*x + F(i+3)*y)%Y
% periode est configurable selon le choix
% Plus la periode est grande , plus l'image est confus
% la transformation prend comme parametre l'image et la periode
%la transformation inverse prend parametre l'image transformée et la periode



function result =  fibonacci_permutation(img, periode)
%periode=2;
    [X, Y, K] = size(img);
    if( K==3)
        %initialisation de fibonacci(i) et fibonacci(i+1) pour i = 0
        a = 0;
        b = 1;
        %initialisation de fibonacci(i+2) et fibonacci(i+3) pour i = 0
        c = 1;
        d = 2;
        for k=1:periode
            %calcul de fibonacci(i+2) = fibonacci(i)+fibonacci(i+1)
            xsuiv = mod(a+b,X);
            %calcul de fibonacci(i+3) = fibonacci(i+1) + fibonacci(i+2)
            ysuiv = mod(c+d,Y);

%            disp(a);
%            disp(b);
%            disp(c);
%            disp(d);
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
            %for the next iteration of fibonacci
            %a = b;
            %b = c;
            %c = d;
            %d = e;
            a = mod(b,X);
            b = xsuiv;
            c = mod(d,Y);
            d = ysuiv;
        end            
    else
        %initialisation de fibonacci(i) et fibonacci(i+1) pour i = 0
        a = 0;
        b = 1;
        %initialisation de fibonacci(i+2) et fibonacci(i+3) pour i = 0
        c = 1;
        d = 2;

        for k=1:periode
            %calcul de fibonacci(i+2) = fibonacci(i)+fibonacci(i+1)
            xsuiv = mod(a+b,X);
            %calcul de fibonacci(i+3) = fibonacci(i+1) + fibonacci(i+2)
            ysuiv = mod(c+d,Y);

%            disp(a);
%            disp(b);
%            disp(c);
%            disp(d);
            for i =1:X
                 for j = 1:Y
                    i_permute = mod(a*(i-1)+b*(j-1),X);
                    j_permute = mod(c*(i-1)+d*(j-1),Y);
                    temp = img(i,j);
                    img(i,j)  = img(i_permute+1, j_permute+1); % on remet l'image transforme
                    img(i_permute+1, j_permute+1) = temp;
                 end
            end
            %for the next iteration of fibonacci
            %a = b;
            %b = c;
            %c = d;
            %d = e;
            a = mod(b,X);
            b = xsuiv;
            c = mod(d,Y);
            d = ysuiv;

        end    
        
    end
    result = img;
end
