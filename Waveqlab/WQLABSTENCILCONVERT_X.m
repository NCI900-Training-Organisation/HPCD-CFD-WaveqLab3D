format longg
nearZero = @(x,tol) abs(x) < tol;  
tol = 0.000000001;


k = 20;

B1 = 4;
B2 = 3;


disp('if ((x .ge. ' + string(B1+1) +') .and. (x .le. nx-' +string(B2+1) +' )) then ')

disp('!forward operator for stress')

disp('Jq_xU(1:3) = X_x(x, y, z, 1)*(&')

for i = -5:5
    
    if nearZero(Dp(k,i+k),tol) == 0
        
        if i == 0
            
            disp(string(sprintf('         %+.15f',Dp(k,i+k) )) + "_wp*F%F(x  , y, z, 1:3) &")
                        
        else
            
            disp(string(sprintf('         %+.15f',Dp(k,i+k) )) +  "_wp*F%F(x"+ string(sprintf('%+d',i )) +", y, z, 1:3) &") 
            
    end
        
    end
    
end
    
disp('          )')




disp('!backward operator for stress')
disp('Jq_xU(4:9) = (&')
for i = -5:5
    
    if nearZero(Dm(k,i+k),tol) == 0
        
        if i == 0
            
            disp(string(sprintf('         %+.15f',Dm(k,i+k) ))  + "_wp*X_x(x  , y, z, 1)*G%J(x  ,y,z) *F%F(x  , y, z, 4:n) &") 
            
        else
            
            disp(string(sprintf('         %+.15f',Dm(k,i+k) )) + "_wp*X_x(x"+string(sprintf('%+d',i ))+", y, z, 1)*G%J(x"+string(sprintf('%+d',i ))+",y,z) *F%F(x"+string(sprintf('%+d',i ))+", y, z, 4:n) &") 
            
    end
        
    end
    
end
    
disp('          )')

disp('end if')

fprintf('\n\n\n\n\n')
           
       

for k = 1:B1

disp('if  ( x .eq. '+string(k)+' ) then ' )
disp('!forward operator for velocity')
disp('Jq_xU(1:3) = X_x(x, y, z, 1)*(&')
for i =11:-1:1
    
    if nearZero(Dp(k,i),tol) == 0 
        
        disp(string(sprintf('          %+.15f',Dp(k,i)))  + "_wp*F%F("+ string(i)+", y, z, 1:3) &");
        
    end
    
end
disp('         )')

disp('!backward operator for stress')
disp('Jq_xU(4:9) = (&')
for i =11:-1:1
    
    if nearZero(Dm(k,i),tol) == 0 
    
    disp(string(sprintf('          %+.15f',Dm(k,i)))  + "_wp*X_x("+string(i)+", y, z, 1)*G%J("+string(i)+",y,z) *F%F("+string(i)+", y, z, 4:n) &")

    end
    
end 
disp('          )')

disp('end if')
fprintf('\n\n')

end

for k = 0:B2
if k == 0
    disp('if  ( x .eq. nx ) then ' )
else
disp('if  ( x .eq. nx-'+string(k)+' ) then ' )
end
disp('!forward operator')
disp('Jq_xU(1:3) = X_x(x, y, z, 1)*(&')
for i = 20:-1:0
    
     if nearZero(Dp(m-k,m-i),tol) == 0
         
     if i ~= 0
    
        disp(string(sprintf('            %+.15f',Dp(m-k,m-i)))  +  "_wp*F%F(nx-"+  string(sprintf('%d',i )) +", y, z, 1:3) &");
        
     end 
        
     if i==0 
         
        disp(string(sprintf('            %+.15f',Dp(m-k,m-i)))  + "_wp*F%F(nx  , y, z, 1:3) &");
        
     end
     
     end
    
end 
disp('            )')

disp('!backward operator')
disp('Jq_xU(4:9) = (&')
for i =20:-1:0
    
    if nearZero(Dm(m-k,m-i),tol) == 0 
    
    if i ~= 0
        
        disp(string(sprintf('            %+.15f',Dm(m-k,m-i)))  +  "_wp*X_x(nx-"+string(sprintf('%d',i ))+", y, z, 1)*G%J(nx-"+string(sprintf('%d',i ))+",y,z) *F%F(nx-"+string(sprintf('%d',i ))+", y, z, 4:n) &")
        
    end 
    
    if i ==0
        
        disp(string(sprintf('            %+.15f',Dm(m-k,m-i)))  + "_wp*X_x(nx  , y, z, 1)*G%J(nx  ,y,z) *F%F(nx  , y, z, 4:n) &")
    end 
    
    end

end
disp('            )')
disp('end if')
end
fprintf('\n\n')




