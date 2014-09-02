% kNN~
function [classresult] = kNN(inX,dataset,labels,k)
% compute the distance~
temp = (repmat(inX,size(dataset,1),1) - dataset).^2;
distance = sqrt(sum(temp,2));
[value,index] = sort(distance);
array = zeros(k,1);
class1 = 1;class2 = 2;class3 = 3;
for i = 1:k
   switch labels(index(i))
       case class1
           array(class1) = array(class1) + 1;
       case class2
           array(class2) = array(class2) + 1;
       case class3
           array(class3) = array(class3) + 1;       
   end
end
[v,ind] = max(array);
classresult = ind(1);

