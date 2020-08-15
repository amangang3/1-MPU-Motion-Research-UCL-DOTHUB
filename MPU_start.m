function MPU_start()
a1 = serial('COM7','BaudRate',115200);
formatSpec = '%f,%f,%f,%f,%f,%f,%f,%f,%f';
fopen(a1);
tic;
%data = fscanf(s,formatSpec);
%instead of this, what if you kept the port open for however long it took
%in terms of time - this is actually a better way of doing it s
% for i = 1:114660 %new length of time (configured for 147Hz)
%     a1_data(:,i) = fscanf(a1,formatSpec);
% end
loop_index = 1; 
while (toc < 770)
    a1_data(:,loop_index) = fscanf(a1,formatSpec);
    loop_index = loop_index + 1;
end
fclose(a1);
csvwrite('a1_data',a1_data);
end