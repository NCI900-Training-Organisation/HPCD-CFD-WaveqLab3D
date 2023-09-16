format longg
nearZero = @(x,tol) abs(x) < tol;  
tol = 0.000000001;


k = 20;
B1 = 4;
B2 = 3;


disp('if ((z .ge. ' + string(B1+1) +') .and. (z .le. nz-' +string(B2+1) +' )) then ')

disp('!forward operator for stress')

disp('Js_xU(1:3) = X_x(x, y, z, 3)*(&')

for i = -5:5
    
    if nearZero(Dp(k,i+k),tol) == 0
        
        if i == 0
            
            disp(string(sprintf('         %+.15f',Dp(k,i+k) )) + "_wp*F%F(x, y  , z, 1:3) &")
                
        else
            
            disp(string(sprintf('         %+.15f',Dp(k,i+k) )) +  "_wp*F%F(x, y, z"+ string(sprintf('%+d',i )) +", 1:3) &") 
            
    end
        
    end
    
end
    
disp('          )')




disp('!backward operator for stress')
disp('Js_xU(4:9) = (&')
for i = -5:5
    
    if nearZero(Dm(k,i+k),tol) == 0
        
        if i == 0
            
            disp(string(sprintf('         %+.15f',Dm(k,i+k) ))  + "_wp*X_x(x  , y, z, 3)*G%J(x  ,y,z) *F%F(x  , y, z, 4:n) &") 
            
        else
            
            disp(string(sprintf('         %+.15f',Dm(k,i+k) )) + "_wp*X_x(x, y, z"+string(sprintf('%+d',i ))+", 3)*G%J(x, y, z"+string(sprintf('%+d',i ))+") *F%F(x, y, z"+string(sprintf('%+d',i ))+", 4:n) &") 
            
    end
        
    end
    
end
    
disp('          )')

disp('end if')

fprintf('\n\n\n\n\n')
           
       

for k = 1:B1

disp('if  ( z .eq. '+string(k)+' ) then ' )
disp('!forward operator for velocity')
disp('Js_xU(1:3) = X_x(x, y, z, 3)*(&')
for i =11:-1:1
    
    if nearZero(Dp(k,i),tol) == 0 
        
        disp(string(sprintf('          %+.15f',Dp(k,i)))  + "_wp*F%F(x, y, "+ string(i)+", 1:3) &");
        
    end
    
end
disp('         )')

disp('!backward operator for stress')
disp('Js_xU(4:9) = (&')
for i =11:-1:1
    
    if nearZero(Dm(k,i),tol) == 0 
    
    disp(string(sprintf('          %+.15f',Dm(k,i)))  + "_wp*X_x(x, y, "+string(i)+", 3)*G%J(x, y, "+string(i)+") *F%F(x, y, "+string(i)+", 4:n) &")

    end
    
end 
disp('          )')

disp('end if')
fprintf('\n\n')

end

for k = 0:B2
if k == 0
    disp('if  ( z .eq. nz ) then ' )
else
disp('if  ( z .eq. nz-'+string(k)+' ) then ' )
end
disp('!forward operator')
disp('Js_xU(1:3) = X_x(x, y, z, 3)*(&')
for i = 11:-1:0
    
     if nearZero(Dp(m-k,m-i),tol) == 0
         
     if i ~= 0
    
        disp(string(sprintf('            %+.15f',Dp(m-k,m-i)))  +  "_wp*F%F(x, y,  nz-"+  string(sprintf('%d',i )) +", 1:3) &");
        
     end 
        
     if i==0 
         
        disp(string(sprintf('            %+.15f',Dp(m-k,m-i)))  + "_wp*F%F(x, y,  nz  , 1:3) &");
        
     end
     
     end
    
end 
disp('            )')

disp('!backward operator')
disp('Js_xU(4:9) = (&')
for i =11:-1:0
    
    if nearZero(Dm(m-k,m-i),tol) == 0 
    
    if i ~= 0
        
        disp(string(sprintf('            %+.15f',Dm(m-k,m-i)))  +  "_wp*X_x(x, y, nz-"+string(sprintf('%d',i ))+", 3)*G%J(x, y, nz-"+string(sprintf('%d',i ))+") *F%F(x, y, nz-"+string(sprintf('%d',i ))+", 4:n) &")
        
    end 
    
    if i ==0
        
        disp(string(sprintf('            %+.15f',Dm(m-k,m-i)))  + "_wp*X_x(x, y, nz  , 3)*G%J(x, y ,nz  ) *F%F(x, y, nz  , 4:n) &")
    end 
    
    end

end
disp('            )')
disp('end if')
end

fprintf('\n\n')

