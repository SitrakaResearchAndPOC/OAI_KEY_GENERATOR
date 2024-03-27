function result = evaluation_timeconvergence_Shake_256(n, nb_bit, nb_repeat)
  nb_bit = nb_bit/8
  cmpt_times = (-1)*ones(1, n);
  %nb_repeat = 10
  cmpt_times_temp = (-1)*ones(1,  nb_repeat);
  
  for i = 1:n
      for repeat=1:nb_repeat
      
            a = zeros(i,i); 
            tic
            Shake256(a,nb_bit); %256 -> 32; 516 -> 64
            cmpt_times_temp(repeat) = toc;
      end
      
      %{
      disp('cmp times temp');
      disp(cmpt_times_temp)
      %}
      cmpt_times(i) = mean(cmpt_times_temp);
  end
  figure
  result = cmpt_times;
  x = 1:length(cmpt_times);
  title('Times evaluation for square 2D matrix')
 
  plot(x, cmpt_times*1000, '--|',...
    'LineWidth',2,...
    'MarkerSize',10,...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5]);
  xlabel(' N ');
  ylabel(' times of sha(msgLength_NxN) ');
  legend('times (ms)');

  
  %nb_repeat = 10

  
  %  First split
  max = 12
  min = 11
  cmpt_times_part1 = (-1)*ones(1, max*max-min*min+1);
  cmpt_times_temp = (-1)*ones(1,  nb_repeat);
  
  index = 1;
  for i = min*min:max*max
      for repeat=1:nb_repeat
            a = zeros(1,i); 
            tic
            Shake256(a,nb_bit); %256 -> 32; 516 -> 64
            cmpt_times_temp(repeat) = toc;
      end
      %{
      disp('cmp times temp');
      disp(cmpt_times_temp);
      %}
      cmpt_times_part1(index) = mean(cmpt_times_temp);
      index = index+1;
  end
  %  result = cmpt_times;
  x_cmpt_times_part1 = [min*min:max*max];
  figure 
  plot(x_cmpt_times_part1, cmpt_times_part1*1000, '--|',...
    'LineWidth',2,...
    'MarkerSize',10,...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5]);

  title('Times evaluation for 1D matrix ');
 
  xlabel(' N ');
  ylabel(' times of sha(msgLength_N) ');
  legend('times (ms)');

  
  
  
  
  max = 17
  min = 16
  cmpt_times_part1 = (-1)*ones(1, max*max-min*min+1);
  cmpt_times_temp = (-1)*ones(1,  nb_repeat);
  
  index = 1;
  for i = min*min:max*max
      for repeat=1:nb_repeat
            a = zeros(1,i); 
            tic
            Shake256(a,nb_bit); %256 -> 32; 516 -> 64
            cmpt_times_temp(repeat) = toc;
      end
      %{
      disp('cmp times temp');
      disp(cmpt_times_temp);
      %}
      cmpt_times_part1(index) = mean(cmpt_times_temp);
      index = index+1;
  end
%  result = cmpt_times;
  x_cmpt_times_part1 = [min*min:max*max];
  figure
  plot(x_cmpt_times_part1, cmpt_times_part1, '--|',...
    'LineWidth',2,...
    'MarkerSize',10,...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5]);

  title('Times evaluation for 1D matrix ');
 
  xlabel(' N ');
  ylabel(' times of sha(msgLength_N) ');
  legend('times (ms)');

  

  max = 21
  min = 20
  cmpt_times_part1 = (-1)*ones(1, max*max-min*min+1);
  cmpt_times_temp = (-1)*ones(1,  nb_repeat);
  
  index = 1;
  for i = min*min:max*max
      for repeat=1:nb_repeat
            a = zeros(1,i); 
            tic
            Shake256(a,nb_bit); %256 -> 32; 516 -> 64
            cmpt_times_temp(repeat) = toc;
      end
      %{
      disp('cmp times temp');
      disp(cmpt_times_temp);
      %}
      cmpt_times_part1(index) = mean(cmpt_times_temp);
      index = index+1;
  end
%  result = cmpt_times;
  x_cmpt_times_part1 = [min*min:max*max];
  figure
  plot(x_cmpt_times_part1, cmpt_times_part1, '--|',...
    'LineWidth',2,...
    'MarkerSize',10,...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5]);

  title('Times evaluation for 1D matrix ');
 
  xlabel(' N ');
  ylabel(' times of sha(msgLength_N)');
  legend('times (ms)');
 
  
  max = 24
  min = 23
  cmpt_times_part1 = (-1)*ones(1, max*max-min*min+1);
  cmpt_times_temp = (-1)*ones(1,  nb_repeat);
  
  index = 1;
  for i = min*min:max*max
      for repeat=1:nb_repeat
            a = zeros(1,i); 
            tic
            Shake256(a,nb_bit); %256 -> 32; 516 -> 64
            cmpt_times_temp(repeat) = toc;
      end
	  %{
      disp('cmp times temp');
      disp(cmpt_times_temp)
	  %}
      cmpt_times_part1(index) = mean(cmpt_times_temp);
      index = index+1;
  end
  %  result = cmpt_times;
  x_cmpt_times_part1 = [min*min:max*max];
  figure
  plot(x_cmpt_times_part1, cmpt_times_part1, '--|',...
    'LineWidth',2,...
    'MarkerSize',10,...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5]);

  title('Times evaluation for 1D matrix ');
 
  xlabel(' N ');
  ylabel(' times of sha(msgLength_N) ');
  legend('times (ms)');
 
end