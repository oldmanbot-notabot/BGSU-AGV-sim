%These matrices store the path, final position, and end point
path=zeros(1000,100);
position=zeros(1000,3);
pend=[10,10];

%For loop allows multiple iterations of the simulation
for j=1:1000
    
    %Random integer to determine direction of step
    r=randi([0,3],1000,100);
    %Initializing these variables in the loop keeps them at 0 for the while
    %loop
    n=1;
    k=0;
    found=0;
    %Seeds the random number generator
    rng(0,'twister');
    %Random integer to determine direction of step
    r=randi([0,3],1000,100);
    %while loop runs until the simulation has taken 100 steps or the
    %simulated AGV hits the end point
    while(n<100&&found==0)
        %If to determine whether or not the AGV has found the endpoint
        if(position(j,:) == pend(1,1))
            found=1;
            position(j,3)=1;
        else
        %Path matrix stores the random integer matrix
        path(j,n)=r(j,n);
        n=n+1;
        %Switch statement simulates the stepping
        switch(r(j,n))
            case 0
                position(j,1)=position(j,1)+1;
            case 1
                position(j,1)=position(j,1)-1;
            case 2
                position(j,2)=position(j,2)+1;
            case 3
                position(j,2)=position(j,2)-1;
                
        end
        end
    end
end