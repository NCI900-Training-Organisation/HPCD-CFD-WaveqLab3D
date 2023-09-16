%3rd order

m=70; %problemstorlek
%h=1/(m-1);
h=1;
   
x=linspace(0,1,m);x=x';

x0=x.^0/factorial(1); 
x1=x.^1/factorial(1);
x2=x.^2/factorial(2);
x3=x.^3/factorial(3);
x4=x.^4/factorial(4);
x5=x.^5/factorial(5);
x6=x.^6/factorial(6);
x7=x.^7/factorial(7);
x8=x.^8/factorial(8);
x9=x.^9/factorial(9);
x10=x.^10/factorial(10);
x11=x.^11/factorial(11);
x12=x.^12/factorial(12);
x13=x.^13/factorial(13);
x14=x.^14/factorial(14);
x15=x.^15/factorial(15);
c=ones(m,1);

%The coefficients in the norm are given by

H_diag = ones(2,1);

H_diag(1) = 5/12;
H_diag(2) = 13/12;

H_diag1 = diag(H_diag);
H_diag2 = diag(flipud(H_diag));

H 				=	diag(ones(m,1),0);
H(1:2,1:2)		=	H_diag1;
H(m-1:m,m-1:m)	=	H_diag2;
H 				= 	H*h;
HI 				= 	inv(H);


Qp = diag(zeros(m,1));

Qp =	- 1/3     * diag(ones(m-1,1),-1)...
		- 1/2     * diag(ones(m  ,1),0)...
		+ 1       * diag(ones(m-1,1),1)...
		- 1/6     * diag(ones(m-2,1),2);

Qp_c_stencil = [-1/3,-1/2,1,-1/6];

Qm_c_stencil = -fliplr(Qp_c_stencil);

%rats(Qp_c_stencil)
%rats(Qm_c_stencil)


%The coefficients in Q + are given by

Q_U = diag(zeros(2,1));

Q_U(1,1) = - 1/12;
Q_U(1,2) = 3/4;
Q_U(2,1) = - 5/12;
Q_U(2,2) = - 5/12;

Qp(1:2,1:2) 	=	Q_U;
Qp(m-1:m,m-1:m) =	flipud( fliplr(Q_U ) )';

Qm=-Qp';

e_1=zeros(m,1);e_1(1)=1;
e_m=zeros(m,1);e_m(m)=1;

Dp=HI*(Qp-1/2*e_1*e_1'+1/2*e_m*e_m') ;

Dm=HI*(Qm-1/2*e_1*e_1'+1/2*e_m*e_m') ;

Dp'*H + H*Dm

% for i = 1:15
%     
%     figure(i);
%     
%     eval('plot(x,Dp*(x'+string(i)+'))')
%     
%     hold on 
%     
%     eval('plot(x,Dm*(x'+string(i)+'))')
%     
%     hold on
%     
%     eval('plot(x,x'+string(i-1)+')')
%     
%     hold on
%    
% end 

% diary('3rd_order_fortran.txt');
% WQLABSTENCILCONVERT_X
% WQLABSTENCILCONVERT_Y
% WQLABSTENCILCONVERT_Z
% diary('off');
