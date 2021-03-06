%% This files stores all the parameter values that are used in the respective simulation. 
%% It also creates the folder in which the data of the simulation will be stored at run time

cellCenters=[250,250];

%%-Following are the variables for easily assigning to array while initializing																			   

TOTAL_NODES_AT_LOCATION = 3;
NODE_ID_AT_LOCATION=4;

ROW=1;
COL=2;
MYO_CONC=3;
NO_OF_NEIGHBOR=4;
MOVEORNOT=5;
COMBOVALUE=6;
MEAN_LENOFCONNEC=7;

BRANCHORNOT=4;
ASSCNPF=3;
THETA=5;
LEN=6;
MCSATBIRTH=7;
AGE=8;
%%-Following are the parameters used 

% Lattice defination
bound=500;
rows=bound;
cols=bound;

Combo = zeros(bound,bound);% Used for visualizing the lattice
npfChart= zeros(bound,bound); % Specifies where the nucleation promoters are present
Wal=zeros(bound,bound); % Used for visualizing the Wall activity field



Wa_NodeNo = ones(rows,cols).*-1; % Main array holding Wall 
Ac_NodeNo = ones(rows,cols).*-1; % Main array holding actin material features

CapR1=20;
CapR=50;% %initial radius in which npfs are distributed
WalR=100;% % keeping wall farther;

Vnpf=50; %Value assigned to npf in npfChart
Ac= 150 ; % Actin
Wa= 350;


Den_c1=0.1;% initial npf density
Den_c=0.01;

% Other actin material parameters

AgeBr=9;  % age of branching
Knpf=0.5; % 'Kpoly'  or Actin polymerization coefficient 
Lth=20; % Max length
AgeTh=20; % age of death
P_del=0.7; %probability of deletion

% Segregation parameters for wall and actin cap

SR=5; %Wall and actin search radius for each other 
Aura= 2;% Inter-material Volume Exclusion Threshold ('Vex' )

% Defining folder and printing initial image
ver=0;
folder=strcat('With Wall_BoundaryTest_Den_c_',num2str(Den_c));
foldername=folder;
if exist(foldername,'dir')~=7
    mkdir(foldername);
else
    while  exist(foldername, 'dir')==7
        ver= ver+1;
        foldername= strcat(folder,num2str(ver));
    end
    mkdir(foldername)
end
absoluteFolderPath = foldername;

% % -Following lines of code will set directions used to initialize actin from npf. Used to direct
% arp 2/3 actin in different directions	
							   
k=1;
for i=-1:1
    for j=-1:1
        if i==0 & j==0
            continue
        else
            directions(k,1)= i; %r
            directions(k,2)= j; %c
            directions(k,3)= rad2deg(cart2pol(j,-i));
            k=k+1;
        end
    end
end
