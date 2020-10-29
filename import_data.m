clc
clear

list      = dir('*.txt'); % get all text files
name      = {list.name};  % get the names of all the text files 
number    = length(name); % number of text files im the current folder


for i = 1:1:number
 t      = readtable(string(name(i)));
 [r c]  = size(t);
 [filepath,name_no_extension,ext] = fileparts(string(name(i)))
% 
%   t      = readtable(string(name(1)));
%   [r c]  = size(t);
%   [filepath,name_no_extension,ext] = fileparts(string(name(1)))

 % find index
for j = 8500:1:9000
     if strcmp(char(table2cell(t(j,1))),'FILTERED')
         start_index = j + 2;
         break
     end
         
end

for j = start_index:1:(start_index + 10000)
         if strcmp(char(table2cell(t(j,1))),'RAW')
         end_index = j - 1;
         break
         end
end

% save the data
number_of_data = end_index - start_index + 1;
for i = 1:1:number_of_data
    if i<10
        data(i,1) = table2array(t(start_index+i-1,6)) % double
        data(i,2) = str2double(char(table2array(t(start_index+i-1,7))))
    end
    if i>9&i<100
        data(i,1) = str2double(char(table2array(t(start_index+i-1,5))))
        data(i,2) = table2array(t(start_index+i-1,6))
    end
   
    if i>99
         data(i,1) = str2double(char(table2array(t(start_index+i-1,4))))
         data(i,2) = str2double(char(table2array(t(start_index+i-1,5))))
    end
end
y_axis(i) = trapz(data(1:end,2),data(1:end,1))
% save data
save([char(name_no_extension) '.mat'],'data')
end

