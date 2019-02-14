clc
clear all;
figure;
hold on;

plotree([0;0], 5, pi/2, pi/5);
grid on
function plotree(startpoint, length, angle, div)
    if length < 0.1
        return;
    end
    endpoint = startpoint+length*[cos(angle);sin(angle)];
    plot([startpoint(1), endpoint(1)], [startpoint(2), endpoint(2)]);
    
    plotree(endpoint, length*0.7, angle+div/2, div*0.5)
    plotree(endpoint, length*0.7, angle-div/2, div)
end