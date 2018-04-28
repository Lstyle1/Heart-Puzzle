% Tetris game of Heart
% Made by Lyn

board = zeros(20, 15); % Board size for displaying. The heart is 11*16
block1 = [1, 1; 0, 1]; % Define different Tetrix blocks % purple
block2 = [1, 1, 1; 0, 1, 0]; % green
block3 = [0, 1, 1; 1, 1, 0]; % yellow
block4 = [1, 0, 0; 1, 1, 1]; % orange
block5 = [1, 1, 1, 1]; % red
block6 = [0, 1; 1, 1; 1, 0]; % pink
block7 = [1, 1; 1, 1]; % blue
block8 = [1, 0; 1, 0; 1, 1]; % dark purple

% Set windows and axes
main_window = figure;
swindow = uipanel('parent', main_window,'units','normalized','position', [0.15, 0.15, 0.8, 0.8]);
axes = axes('parent',swindow);

% Move blocks
% No.1
CurrBlock = block1;
CurrRow = 1;
CurrCol = floor(size(board,2)/2);
boardnew = zeros(size(board));
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
drawnow;
for i = 1: 18
    pause(0.05);
    CurrRow = CurrRow + 1;
    boardnew = zeros(size(board));
    boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
    imshow(boardnew, [], 'InitialMagnification','fit','parent',axes);
    drawnow;
end
boardold = boardnew;

% No.2
CurrBlock = block2;
CurrRow = 1;
CurrCol = floor(size(board,2)/2);
boardnew = boardold;
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
drawnow;
% Move horizontally
pause(0.05);
CurrCol = CurrCol + 1;
boardnew = zeros(size(board));
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
boardnew = boardnew | boardold;
drawnow;
% Move down
for i = 1: 17
    pause(0.05);
    CurrRow = CurrRow + 1;
    boardnew = zeros(size(board));
    boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
    boardnew = boardold | boardnew;
    imshow(boardnew, [], 'InitialMagnification','fit','parent',axes);
    drawnow;
end
boardold = boardold | boardnew;

% No.3
CurrBlock = block3;
CurrRow = 1;
CurrCol = floor(size(board,2)/2);
boardnew = boardold;
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
drawnow;
% Move horizontally
pause(0.05);
CurrCol = CurrCol - 1;
boardnew = zeros(size(board));
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
boardnew = boardnew | boardold;
drawnow;
% Move down
for i = 1: 16
    pause(0.05);
    CurrRow = CurrRow + 1;
    boardnew = zeros(size(board));
    boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
    boardnew = boardold | boardnew;
    imshow(boardnew, [], 'InitialMagnification','fit','parent',axes);
    drawnow;
end
boardold = boardold | boardnew;

% No.4
CurrBlock = block4;
CurrRow = 1;
CurrCol = floor(size(board,2)/2);
boardnew = boardold;
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
drawnow;
% Move horizontally
pause(0.05);
CurrCol = CurrCol - 3;
boardnew = zeros(size(board));
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
boardnew = boardnew | boardold;
drawnow;
% Move down
for i = 1: 15
    pause(0.05);
    CurrRow = CurrRow + 1;
    boardnew = zeros(size(board));
    boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
    boardnew = boardold | boardnew;
    imshow(boardnew, [], 'InitialMagnification','fit','parent',axes);
    drawnow;
end
boardold = boardold | boardnew;

% No.5
CurrBlock = block5;
CurrRow = 1;
CurrCol = floor(size(board,2)/2);
boardnew = boardold;
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
drawnow;
% Move horizontally
pause(0.05);
CurrCol = CurrCol + 2;
boardnew = zeros(size(board));
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
boardnew = boardnew | boardold;
drawnow;
% Move down
for i = 1: 16
    pause(0.05);
    CurrRow = CurrRow + 1;
    boardnew = zeros(size(board));
    boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
    boardnew = boardold | boardnew;
    imshow(boardnew, [], 'InitialMagnification','fit','parent',axes);
    drawnow;
end
boardold = boardold | boardnew;

% No.6
CurrBlock = block6;
CurrRow = 1;
CurrCol = floor(size(board,2)/2);
boardnew = boardold;
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
drawnow;
% Move horizontally
pause(0.05);
CurrCol = CurrCol - 4;
boardnew = zeros(size(board));
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
boardnew = boardnew | boardold;
drawnow;
% Move down
for i = 1: 13
    pause(0.05);
    CurrRow = CurrRow + 1;
    boardnew = zeros(size(board));
    boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
    boardnew = boardold | boardnew;
    imshow(boardnew, [], 'InitialMagnification','fit','parent',axes);
    drawnow;
end
boardold = boardold | boardnew;

% No.7
CurrBlock = block5;
CurrRow = 1;
CurrCol = floor(size(board,2)/2);
boardnew = boardold;
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
drawnow;
% Move horizontally
pause(0.05);
CurrBlock = rot90(block5);
CurrCol = CurrCol - 2;
boardnew = zeros(size(board));
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
boardnew = boardnew | boardold;
drawnow;
% Move down
for i = 1: 12
    pause(0.05);
    CurrRow = CurrRow + 1;
    boardnew = zeros(size(board));
    boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
    boardnew = boardold | boardnew;
    imshow(boardnew, [], 'InitialMagnification','fit','parent',axes);
    drawnow;
end
boardold = boardold | boardnew;

% No.8
CurrBlock = block2;
CurrRow = 1;
CurrCol = floor(size(board,2)/2);
boardnew = boardold;
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
drawnow;
% Move horizontally
pause(0.05);
CurrBlock = rot90(rot90(block2));
boardnew = zeros(size(board));
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
boardnew = boardnew | boardold;
drawnow;
% Move down
for i = 1: 14
    pause(0.05);
    CurrRow = CurrRow + 1;
    boardnew = zeros(size(board));
    boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
    boardnew = boardold | boardnew;
    imshow(boardnew, [], 'InitialMagnification','fit','parent',axes);
    drawnow;
end
boardold = boardold | boardnew;

% No.9
CurrBlock = block6;
CurrRow = 1;
CurrCol = floor(size(board,2)/2);
boardnew = boardold;
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
drawnow;
% Move horizontally
pause(0.05);
CurrCol = CurrCol - 1;
boardnew = zeros(size(board));
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
boardnew = boardnew | boardold;
drawnow;
% Move down
for i = 1: 13
    pause(0.05);
    CurrRow = CurrRow + 1;
    boardnew = zeros(size(board));
    boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
    boardnew = boardold | boardnew;
    imshow(boardnew, [], 'InitialMagnification','fit','parent',axes);
    drawnow;
end
boardold = boardold | boardnew;

% No.10
CurrBlock = block7;
CurrRow = 1;
CurrCol = floor(size(board,2)/2);
boardnew = boardold;
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
drawnow;
% Move horizontally
pause(0.05);
CurrCol = CurrCol + 5;
boardnew = zeros(size(board));
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
boardnew = boardnew | boardold;
drawnow;
% Move down
for i = 1: 14
    pause(0.05);
    CurrRow = CurrRow + 1;
    boardnew = zeros(size(board));
    boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
    boardnew = boardold | boardnew;
    imshow(boardnew, [], 'InitialMagnification','fit','parent',axes);
    drawnow;
end
boardold = boardold | boardnew;

% No.11
CurrBlock = block6;
CurrRow = 1;
CurrCol = floor(size(board,2)/2);
boardnew = boardold;
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
drawnow;
% Move horizontally
pause(0.05);
CurrCol = CurrCol + 2;
CurrBlock = rot90(block6);
boardnew = zeros(size(board));
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
boardnew = boardnew | boardold;
drawnow;
% Move down
for i = 1: 14
    pause(0.05);
    CurrRow = CurrRow + 1;
    boardnew = zeros(size(board));
    boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
    boardnew = boardold | boardnew;
    imshow(boardnew, [], 'InitialMagnification','fit','parent',axes);
    drawnow;
end
boardold = boardold | boardnew;

% No.12
CurrBlock = block4;
CurrRow = 1;
CurrCol = floor(size(board,2)/2);
boardnew = boardold;
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
drawnow;
% Move horizontally
pause(0.05);
CurrCol = CurrCol + 2;
CurrBlock = rot90(rot90(block4));
boardnew = zeros(size(board));
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
boardnew = boardnew | boardold;
drawnow;
% Move down
for i = 1: 13
    pause(0.05);
    CurrRow = CurrRow + 1;
    boardnew = zeros(size(board));
    boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
    boardnew = boardold | boardnew;
    imshow(boardnew, [], 'InitialMagnification','fit','parent',axes);
    drawnow;
end
boardold = boardold | boardnew;

% No.13
CurrBlock = block8; % MODIFIED
CurrRow = 1;
CurrCol = floor(size(board,2)/2);
boardnew = boardold;
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
drawnow;
% Move horizontally
pause(0.05);
CurrCol = CurrCol - 5; % MODIFIED
% CurrBlock = rot90(rot90(block4)); % MODIFIED
boardnew = zeros(size(board));
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
boardnew = boardnew | boardold;
drawnow;
% Move down
for i = 1: 11 % MODIFIED
    pause(0.05);
    CurrRow = CurrRow + 1;
    boardnew = zeros(size(board));
    boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
    boardnew = boardold | boardnew;
    imshow(boardnew, [], 'InitialMagnification','fit','parent',axes);
    drawnow;
end
boardold = boardold | boardnew;

% No.14
CurrBlock = block7; % MODIFIED
CurrRow = 1;
CurrCol = floor(size(board,2)/2);
boardnew = boardold;
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
drawnow;
% Move horizontally
pause(0.05);
CurrCol = CurrCol - 4; % MODIFIED
% CurrBlock = rot90(rot90(block4)); % MODIFIED
boardnew = zeros(size(board));
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
boardnew = boardnew | boardold;
drawnow;
% Move down
for i = 1: 11 % MODIFIED
    pause(0.05);
    CurrRow = CurrRow + 1;
    boardnew = zeros(size(board));
    boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
    boardnew = boardold | boardnew;
    imshow(boardnew, [], 'InitialMagnification','fit','parent',axes);
    drawnow;
end
boardold = boardold | boardnew;

% No.15
CurrBlock = block8; % MODIFIED
CurrRow = 1;
CurrCol = floor(size(board,2)/2);
boardnew = boardold;
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
drawnow;
% Move horizontally
pause(0.05);
CurrCol = CurrCol - 2; % MODIFIED
CurrBlock = rot90(rot90(block8)); % MODIFIED
boardnew = zeros(size(board));
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
boardnew = boardnew | boardold;
drawnow;
% Move down
for i = 1: 11 % MODIFIED
    pause(0.05);
    CurrRow = CurrRow + 1;
    boardnew = zeros(size(board));
    boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
    boardnew = boardold | boardnew;
    imshow(boardnew, [], 'InitialMagnification','fit','parent',axes);
    drawnow;
end
boardold = boardold | boardnew;

% No.16
CurrBlock = block3; % MODIFIED
CurrRow = 1;
CurrCol = floor(size(board,2)/2);
boardnew = boardold;
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
drawnow;
% Move horizontally
pause(0.05);
%CurrCol = CurrCol - 2; % MODIFIED
CurrBlock = rot90(block3); % MODIFIED
boardnew = zeros(size(board));
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
boardnew = boardnew | boardold;
drawnow;
% Move down
for i = 1: 11 % MODIFIED
    pause(0.05);
    CurrRow = CurrRow + 1;
    boardnew = zeros(size(board));
    boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
    boardnew = boardold | boardnew;
    imshow(boardnew, [], 'InitialMagnification','fit','parent',axes);
    drawnow;
end
boardold = boardold | boardnew;

% No.17
CurrBlock = block2; % MODIFIED
CurrRow = 1;
CurrCol = floor(size(board,2)/2);
boardnew = boardold;
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
drawnow;
% Move horizontally
pause(0.05);
CurrCol = CurrCol + 5; % MODIFIED
CurrBlock = rot90(rot90(block2)); % MODIFIED
boardnew = zeros(size(board));
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
boardnew = boardnew | boardold;
drawnow;
% Move down
for i = 1: 12 % MODIFIED
    pause(0.05);
    CurrRow = CurrRow + 1;
    boardnew = zeros(size(board));
    boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
    boardnew = boardold | boardnew;
    imshow(boardnew, [], 'InitialMagnification','fit','parent',axes);
    drawnow;
end
boardold = boardold | boardnew;

% No.18
CurrBlock = block5; % MODIFIED
CurrRow = 1;
CurrCol = floor(size(board,2)/2);
boardnew = boardold;
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
drawnow;
% Move horizontally
pause(0.05);
CurrCol = CurrCol + 2; % MODIFIED
%CurrBlock = rot90(block2); % MODIFIED
boardnew = zeros(size(board));
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
boardnew = boardnew | boardold;
drawnow;
% Move down
for i = 1: 12 % MODIFIED
    pause(0.05);
    CurrRow = CurrRow + 1;
    boardnew = zeros(size(board));
    boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
    boardnew = boardold | boardnew;
    imshow(boardnew, [], 'InitialMagnification','fit','parent',axes);
    drawnow;
end
boardold = boardold | boardnew;

% No.19
CurrBlock = block2; % MODIFIED
CurrRow = 1;
CurrCol = floor(size(board,2)/2);
boardnew = boardold;
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
drawnow;
% Move horizontally
pause(0.05);
CurrCol = CurrCol + 1; % MODIFIED
CurrBlock = rot90(block2, 2); % MODIFIED
boardnew = zeros(size(board));
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
boardnew = boardnew | boardold;
drawnow;
% Move down
for i = 1:10 % MODIFIED
    pause(0.05);
    CurrRow = CurrRow + 1;
    boardnew = zeros(size(board));
    boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
    boardnew = boardold | boardnew;
    imshow(boardnew, [], 'InitialMagnification','fit','parent',axes);
    drawnow;
end
boardold = boardold | boardnew;

% No.20
CurrBlock = block4; % MODIFIED
CurrRow = 1;
CurrCol = floor(size(board,2)/2);
boardnew = boardold;
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
drawnow;
% Move horizontally
pause(0.05);
CurrCol = CurrCol + 4; % MODIFIED
CurrBlock = rot90(block4); % MODIFIED
boardnew = zeros(size(board));
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
boardnew = boardnew | boardold;
drawnow;
% Move down
for i = 1:9 % MODIFIED
    pause(0.05);
    CurrRow = CurrRow + 1;
    boardnew = zeros(size(board));
    boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
    boardnew = boardold | boardnew;
    imshow(boardnew, [], 'InitialMagnification','fit','parent',axes);
    drawnow;
end
boardold = boardold | boardnew;

% No.21
CurrBlock = block2; % MODIFIED
CurrRow = 1;
CurrCol = floor(size(board,2)/2);
boardnew = boardold;
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
drawnow;
% Move horizontally
pause(0.05);
CurrCol = CurrCol - 2; % MODIFIED
CurrBlock = rot90(block2, 2); % MODIFIED
boardnew = zeros(size(board));
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
boardnew = boardnew | boardold;
drawnow;
% Move down
for i = 1:9 % MODIFIED
    pause(0.05);
    CurrRow = CurrRow + 1;
    boardnew = zeros(size(board));
    boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
    boardnew = boardold | boardnew;
    imshow(boardnew, [], 'InitialMagnification','fit','parent',axes);
    drawnow;
end
boardold = boardold | boardnew;

% No.22
CurrBlock = block3; % MODIFIED
CurrRow = 1;
CurrCol = floor(size(board,2)/2);
boardnew = boardold;
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
drawnow;
% Move horizontally
pause(0.05);
CurrCol = CurrCol - 4; % MODIFIED
%CurrBlock = rot90(block4, 3); % MODIFIED
boardnew = zeros(size(board));
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
boardnew = boardnew | boardold;
drawnow;
% Move down
for i = 1:9 % MODIFIED
    pause(0.05);
    CurrRow = CurrRow + 1;
    boardnew = zeros(size(board));
    boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
    boardnew = boardold | boardnew;
    imshow(boardnew, [], 'InitialMagnification','fit','parent',axes);
    drawnow;
end
boardold = boardold | boardnew;

% No.23
CurrBlock = block7; % MODIFIED
CurrRow = 1;
CurrCol = floor(size(board,2)/2);
boardnew = boardold;
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
drawnow;
% Move horizontally
pause(0.05);
CurrCol = CurrCol + 3; % MODIFIED
%CurrBlock = rot90(block2, 3); % MODIFIED
boardnew = zeros(size(board));
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
boardnew = boardnew | boardold;
drawnow;
% Move down
for i = 1:9 % MODIFIED
    pause(0.05);
    CurrRow = CurrRow + 1;
    boardnew = zeros(size(board));
    boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
    boardnew = boardold | boardnew;
    imshow(boardnew, [], 'InitialMagnification','fit','parent',axes);
    drawnow;
end
boardold = boardold | boardnew;

% No.24
CurrBlock = block3; % MODIFIED
CurrRow = 1;
CurrCol = floor(size(board,2)/2);
boardnew = boardold;
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
drawnow;
% Move horizontally
pause(0.05);
CurrCol = CurrCol + 6; % MODIFIED
CurrBlock = rot90(block3); % MODIFIED
boardnew = zeros(size(board));
boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
boardnew = boardnew | boardold;
drawnow;
% Move down
for i = 1:10 % MODIFIED
    pause(0.05);
    CurrRow = CurrRow + 1;
    boardnew = zeros(size(board));
    boardnew((CurrRow:(CurrRow + size(CurrBlock,1)-1)),(CurrCol:(CurrCol + size(CurrBlock,2)-1))) = CurrBlock;
    boardnew = boardold | boardnew;
    imshow(boardnew, [], 'InitialMagnification','fit','parent',axes);
    drawnow;
end
boardold = boardold | boardnew;

pause(3);
clear; clc; 
