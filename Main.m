clc;
clear all;
close all;
warning off;

files = dir('*.jpg');

hole_area_sum= {};
for ii=1:length(files)
% for ii = [1]
filename = files(ii).name;
[hole_area,hole_area_hist]=Astrocyte_Count(filename);
hole_area_sum = {hole_area_sum; hole_area};
end