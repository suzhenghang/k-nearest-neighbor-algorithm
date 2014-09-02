% KNN algorithm %
% author :Zhenghang Su
close all;
clear;
clc;
load('datingTestSet2.txt');
ratio = 0.1;
errorcount = 0;
datingDataMat = datingTestSet2(:,1:3); 
datingLabels = datingTestSet2(:,4);    % labels
normMat = datingDataMat./repmat(sqrt(sum(datingDataMat.*datingDataMat)),size(datingDataMat,1),1); % normalize the training datas
totalnum = size(normMat,1);
testnum = totalnum*ratio; % the numbers of testing datas 
for i = 1:testnum
    inX = normMat(i,:);
    classifierResult = kNN(inX,normMat(testnum+1:end,:),datingLabels(testnum+1:end),3);
    disp(['The classfier came back with :' num2str(classifierResult) '  The real answer is :' num2str(datingLabels(i))]);
    if (classifierResult ~= datingLabels(i))
        errorcount = errorcount + 1.0;
    end
end
disp(['The total error rate is :' num2str(errorcount/testnum)]);


