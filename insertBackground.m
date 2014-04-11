function insertBackground( figHandle, fileName )
% InsertBackground insert an image as the background of a figure (or gui)
%  
% Inputs: 
%   figHandle - the handle of the figure 
%   fileName - the name of the image file (along with path if applicable) 
% 
% Author: Wei Shang wei.shang@unb.ca 
% Created: 2014-04-11

ah = axes('parent', figHandle, 'unit', 'normalized', 'position', [0 0 1 1]); 

% import the background image and show it on the axes

bg = imread(fileName); 
imagesc(bg);

% prevent plotting over the background and turn the axis off
set(ah,'handlevisibility','off','visible','off')

% making sure the background is behind all the other uicontrols
uistack(ah, 'bottom');

