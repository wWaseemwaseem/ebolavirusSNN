function out = Eboladisease(t,u)
%% Define the system of odes modeling ebola virus disease
  out = zeros(5,length(t));
  out(1,:) = 0.6321-0.9704*u(1)-0.8111*u(1).*u(2)-0.5431*u(1).*u(3);
  out(2,:) = 0.8111*u(1).*u(2)-0.7631*u(2).*u(3)-0.2938*u(2);
  out(3,:) = 0.7631*u(2).*u(3,:)+0.5431*u(1,:).*u(3)-1.4809*u(1);
  out(4,:) = 0.05*u(2)- 0.149*u(4);
  out(5,:) = 0.4389*u(2)+0.045*u(4)-0.6704*u(5);
end     
