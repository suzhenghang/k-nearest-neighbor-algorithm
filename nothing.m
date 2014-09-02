clear;
clc;
labels = [2,2,2];
array = zeros(3,1);
class1 = 1;class2 = 2;class3 = 3;
for i = 1:3
   switch labels(i)
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
