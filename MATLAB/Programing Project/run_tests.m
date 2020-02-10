% Test executor
% Written by Raehyun Kim

clear; clc;
% Set your parameters
params.func_tol=1e-14;
params.root_tol=1e-14;
params.maxit=1000;

% Fill in your SID
yourStudentID=3034984486;
fName=['modifiedbrent' int2str(yourStudentID)];

% Add your test functions
% testFun : given functions         testInt : given intervals
testFun={};                         testInt={};
testFun{1}=@(x) sqrt(x)-cos(x);     testInt{1}=[0.0,1.0];
testFun{2}=@(x) x^3-7*x^2+14*x-6;   testInt{2}=[3.2,4.0];
testFun{3}=@(x) 3*x-exp(x);         testInt{3}=[1.0,2.0];

sz=size(testFun,2);
fprintf("# \t root \t\t\t f(root) \n");
for ielem=1:sz
    Int.a=testInt{ielem}(1);
    Int.b=testInt{ielem}(2);
    [root,info]=feval(fName,testFun{ielem},Int,params);
    fprintf("%d \t %f %f \t\t %e\n",ielem,root,info.iters,testFun{ielem}(root));
end
