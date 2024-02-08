function dydx = Fluidexample_ode(x,y)
global Ha pr  lambda1 lambda2 del sc Nb Nt gamma beta1 beta2 
 dydx =zeros(10,1);
 dydx(1,:) = y(2,:);
 dydx(2,:) = y(3,:);
 dydx(3,:) = (y(2,:).*y(2,:)-(y(1,:)+y(4,:)).*y(3,:)-Ha/(del*del+gamma*gamma)*(del*y(5,:)-gamma*y(2,:)))/(beta1+beta2*y(3,:).*y(3,:));
 dydx(4,:) = y(5,:);
 dydx(5,:) = y(6,:);
 dydx(6,:) = (y(5,:).*y(5,:)-(y(1,:)+y(4,:)).*y(6,:)+Ha/(del*del+gamma*gamma)*(del*y(2,:)+gamma*y(5,:)))/(beta1+beta2*y(6,:)*y(6,:));
 dydx(7,:) = y(8,:);
 dydx(8,:) = (lambda1*(y(1,:)+y(4,:))*(y(2,:)+y(5,:)).*y(8,:)-(y(1,:)+y(4,:)).*y(8,:)-Nb*y(8,:)*y(10,:)-Nt*y(8,:).*y(8,:))/((1/pr)-lambda1*(y(1,:)+y(4,:)).*(y(1,:)+y(4,:)));
 dydx(9,:) = y(10,:);
 dydx(10,:) = (lambda2*(y(1,:)+y(4,:))*(y(2,:)+y(5,:)).*y(10,:)-(y(1,:)+y(4,:)).*y(10,:)-(Nt/Nb)*dydx(8,:))/((1/sc)-lambda2*(y(1,:)+y(4,:)).*(y(1,:)+y(4,:)));


 
