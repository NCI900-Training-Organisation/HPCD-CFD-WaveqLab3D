%4th order

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

H_diag = ones(4,1);

H_diag(1) = 49/144;
H_diag(2) = 61/48;
H_diag(3) = 41/48;
H_diag(4) = 149/144;

H_diag1 = diag(H_diag);
H_diag2 = diag(flipud(H_diag));

H 				=	diag(ones(m,1),0);
H(1:4,1:4)		=	H_diag1;
H(m-3:m,m-3:m)	=	H_diag2;
H 				= 	H*h;
HI 				= 	inv(H);


Qp = diag(zeros(m,1));

Qp =	- 1/4     * diag(ones(m-1,1),-1)...
		- 5/6     * diag(ones(m-0,1),0)...
		+ 3/2     * diag(ones(m-1,1),1)...
		- 1/2     * diag(ones(m-2,1),2)...
		+ 1/12    * diag(ones(m-3,1),3);

Qp_c_stencil = [-1/4,-5/6,+3/2,-1/2,+1/12];

Qm_c_stencil = -fliplr(Qp_c_stencil);

%rats(Qp_c_stencil)
%rats(Qm_c_stencil)


%The coefficients in Q + are given by

Q_U = diag(zeros(4,1));

Q_U(1,1) = - 1/48;
Q_U(1,2) = 205/288;
Q_U(1,3) = - 29/144;
Q_U(1,4) = 1/96;
Q_U(2,1) = - 169/288;
Q_U(2,2) = - 11/48;
Q_U(2,3) = 33/32;
Q_U(2,4) = - 43/144;
Q_U(3,1) = 11/144;
Q_U(3,2) = - 13/32;
Q_U(3,3) = - 29/48;
Q_U(3,4) = 389/288;
Q_U(4,1) = 1/32;
Q_U(4,2) = - 11/144;
Q_U(4,3) = - 65/288;
Q_U(4,4) = - 13/16;

Qp(1:4,1:4) 	=	Q_U;
Qp(m-3:m,m-3:m) =	flipud( fliplr(Q_U ) )';

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

% diary('4th_order_fortran.txt');
% WQLABSTENCILCONVERT_X
% WQLABSTENCILCONVERT_Y
% WQLABSTENCILCONVERT_Z
% diary('off');