
world = vrworld('ruralhome.wrl');% Create a World Object, with our world inside


open(world);% Open and View the World



fig = view(world, '-internal');% to view it internally and not from the browser
vrdrawnow;

get(world)

% Finding Nodes of the World

nodes(world)% gets all nodes in the virtual world

% Accessing VRML Nodes

bike = vrnode(world, 'Human_and_bicycle');%access the bike node

% Viewing Fields of Nodes

fields(bike) %responsible for translation and rotation(can move the bike by changing this fields)


% Moving the bike Node


x3 = 23:300;  %1st road section
z3 = 26 + zeros(size(x3));
y3 = -60 + zeros(size(z3));


for i=1:length(x3)  %1st straight stretch
    bike.translation = [x3(i) y3(i) z3(i)];
    disp(i);

    vrdrawnow;
    pause(0.01);
end

%bike.rotation = [0, 1, 0 , 1]; 
bike.rotation = [-1, 1, 0 , 1];%make a proper left turn
vrdrawnow;

z1 = 26:200;   
x1 = 300 + zeros(size(z1));
y1 = -60 + zeros(size(z1));


for j= 1:length(z1)

    bike.translation = [x1(j) y1(j) -z1(j)];
    disp(j);
    
    vrdrawnow;
    

    pause(0.01);
end


reload(world); %resets the bike to its original
vrdrawnow;

close(world)
 
%  leave the world open 
clear ans car i x1 x2 x3 y1 y2 y3 z1 z2 z3


