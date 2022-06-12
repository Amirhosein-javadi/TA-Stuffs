clc;
clear all;
close all;
%% 1. Basic Syntax
%% Commonly used Operators and Special Characters
% +     Plus; addition operator
% -     Minus; subtraction operator.
% *     Scalar and matrix multiplication operator.
% ^     Scalar and matrix exponentiation operator.
% \     Left-division operator.
% /     Right-division operator.
clc;                % Clear Command Window
clear all;          % Removes all variables from the current workspace,
disp('Sum:');       % Displays the value of variable
disp(5+5);  
disp('Subtraction:'); 
disp(7-9); 
disp('Multiplication:'); 
disp(6*8); 
disp('Power:'); 
disp(5^2); 
disp('Division:'); 
disp(11/5); 
%% Special Variables and Constants
% eps       Accuracy of floating-point precision.
% i,j,1i	The imaginary unit i
% Inf       Infinity.
% NaN       Undefined numerical result (not a number).
% pi        The number pi
disp('Epsilon:'); 
disp(eps); 
disp('Complex Number:'); 
disp(1+2*1i); 
disp('Infinity:'); 
disp(Inf); 
disp('sin(pi/4):'); 
disp(sin(pi/4));
%% Naming Variables
% Variable names consist of a letter followed by any number of letters, digits or underscore.
% MATLAB is case-sensitive.
v0  = 0;
a   = 9.8;
t   = 20;
v   = v0 + a * t;
disp('V is:')
disp(v)
%% 2. Vectors
% A vector is a one-dimensional array of numbers.
% Row vectors are created by enclosing the set of elements in square brackets, using space or comma to delimit the elements.
clc;
clear all;
Row_vector_1    = [7 8 9 10 11];
Row_vector_2    = [2, 3, 4, 5, 6];
Row_vector_sum  = Row_vector_1+ Row_vector_2;
disp('Sum of two Vector :'); 
disp(Row_vector_sum);
% Column vectors are created by enclosing the set of elements in square brackets, using semicolon(;) to delimit the elements.
Column_vector_1 = [7;  8;  9;  10; 11];
% Scalar Multiplication of Vectors
v = [ 12 34 10 8];
m = 5 * v;
disp('Multiplication of Vector :'); 
disp(m);
% Transpose of a Vector
v = [ 1 2 3 4 ];
Transpose_v = v';
disp('Transpose of a Vector :'); 
disp(Transpose_v);
% Appending Vectors (concatenating)
r1 = [ 1 2 3 4 ];
r2 = [5 6 7 8 ];
cMat = [r1,r2]; 
rMat = [r1;r2];
disp('Append Horizontally :'); 
disp(cMat);
disp('Append Vertically :'); 
disp(rMat);
% Vector Dot Product
v1 = [2 3 4];
v2 = [1 2 3];
dp = dot(v1, v2);
disp('Dot Product:'); 
disp(dp);
% Elementwise Multiplication
v1 = [2 3 4];
v2 = [1 2 3];
ew = v1 .* v2;
disp('Elementwise Multiplication:'); 
disp(ew);
% colon
v1 = 1:3;
disp('Unit-spaced vector:'); 
disp(v1);
v2 = 1:0.5:3;
disp('Regularly-spaced Vector:'); 
disp(v2);
% linspace
v3 = linspace(1,5,6);
disp('Linspace Vector:'); 
disp(v3);
%% 3. Matrices
My_matrix = [1 2 3; 4 5 6; 7 8 9];
disp('My Matrix:'); 
disp(My_matrix);
% Referencing the Elements of a Matrix
disp('Elements in second row and first column:'); 
disp(My_matrix(2,1));
disp('First row:'); 
disp(My_matrix(1,:));
disp('Second column:'); 
disp(My_matrix(:,2));
% Sub-matrix Taking a Sub-part of a Matrix
disp('Sub-matrix Taking a Sub-part of a Matrix:'); 
disp(My_matrix(1:2,2:3));
% Matrix Multiplication 
matrix1 = [1 2 3; 4 5 6];
matrix2 = [1 2; 3 4; 5 6];
mx = matrix1 * matrix2;
disp('Matrix Multiplication:'); 
disp(mx);
% Elementwise Multiplication
matrix1 = [1 2 3; 4 5 6];
matrix2 = [3 4 5; 1 2 6];
ew = matrix1 .* matrix2;
disp('Elementwise Multiplication:'); 
disp(ew);
% Determinant of a Matrix
a = [ 1 2 3; 2 3 4; 1 2 5];
disp('Determinant of a Matrix:'); 
disp(det(a));
% Inverse of a Matrix
a = [ 1 2 3; 2 3 4; 1 2 5];
disp('Inverse of a Matrix:'); 
disp(inv(a));
%% 4. Special Arrays in MATLAB
clc;
clear all;
disp('An array of all zeros:'); 
disp(zeros(5));
disp('An array of all ones :'); 
disp(ones(4,3));
disp('An identity matrix:'); 
disp(eye(4))
disp('Array of uniformly distributed random numbers on (0,1):'); 
disp(rand(3,5))
%% 5. matlab commands
%% Commands for Managing a Session
% clc       Clears command window.
% clear     Removes variables from memory.
% exist     Checks for existence of file or variable.
% global	Declares variables to be global.
% help      Searches for a help topic.
% quit      Stops MATLAB.
clc;
clear all;
a = 2;
disp(a)
clear a
disp(a)
%% Matlab Operators
%   <   Less than	
%   <=  Less than or equal to	
%   >   Greater than	
%   >=  Greater than or equal to	
%   ==  Equal to	
%   ~=  Not equal to
clc;
clear all;
a = 2;
b = 3;
disp(a > b)
%% Input and Output Commands
% disp      Displays contents of an array or string.
% fscanf	Read formatted data from a file.
% fprintf	Performs formatted writes to screen or file.
% input     Displays prompts and waits for input.
% ;         Suppresses screen printing.
clc;
disp('Hello World!')
My_Input = input('please insert your desired input: ');
fprintf('Bye!\n');
%% The fscanf and fprintf commands behave like C scanf and printf functions.
% %s        Format as a string.
% %d        Format as an integer.
% %f        Format as a floating point value.
% \n        Insert a new line in the output string.
% \t        Insert a tab in the output string. 
clc;
fprintf('First sentence!\nSecond sentence!\n');
fprintf('First word!\tSecond word!\n');
x = 3;
fprintf('x is %d.\n',x);
%% 6. Data Types
%% Data Types Available in MATLAB
% int8      8-bit signed integer            (also int16,int32,int64)
% uint8     8-bit unsigned integer          (also uint16,uint32,uint64)
% single    Single precision numerical data
% double    Double precision numerical data
% logical   Logical values of 1 or 0, represent true and false respectively
% char      Character data (strings are stored as vector of characters)
% cell      Array of strings
clc;
clear all;
string_var = 'communication system!';
integer_var = 10;
float_var = 5678.92347;
logic_var = true;
str_array = {'red','blue','green', 'yellow', 'orange'};
%% Data Type Conversion
% char          Convert to character array (string)
% int2str       Convert integer data to string
% mat2str       Convert matrix to string
% num2str       Convert number to string
% str2double	Convert string to double-precision value
% str2num       Convert string to number
% bin2dec       Convert binary number string to decimal number
% dec2hex       Convert decimal to hexadecimal number in string
% and etc...
My_integer = 10;
My_string = int2str(My_integer);
disp(My_integer)
disp(My_string)
%% 7. Plotting
clc;
clear all;
close all;  %  Closes all figures
% Creates a new figure window
figure()
x = 0:0.01:10;
y = sin(x);
plot(x, y)
% The xlabel and ylabel commands generate labels along x-axis and y-axis.
xlabel('t')
ylabel('Sin(x)')
% The title command allows you to put a title on the graph.
title('Sin(x) Graph')
% The grid on command allows you to put the grid lines on the graph.
grid on
% Drawing Multiple Functions on the Same Graph
x = 0 : 0.01: 10;
y1 = sin(x);
y2 = cos(x);
figure()
plot(x, y1, x, y2)
grid on
xlabel('t')
legend('Sin(x)', 'Cos(x)')
%% Generating Sub-Plots
% When you create an array of plots in the same figure, each of these plots is called a subplot. The subplot command is used for creating subplots.
x = 0 : 0.01: 10;
y1 = sin(x);
subplot(2,1,1)
plot(x,y1)
xlabel('x')
xlabel('y1(x)')
grid on
title('First plot')
y2 = cos(x);
subplot(2,1,2)
plot(x,y2)
xlabel('x')
xlabel('y2(x)')
grid on
title('Second plot')
%% 8. ????
% A function is a group of statements that together perform a task.
% Functions can accept more than one input arguments and may return more than one output arguments.
% function [out1,out2, ..., outN] = myfun(in1,in2,in3, ..., inN)
% Function definitions in a script must appear at the end of the file.
clc;
clear all;
Say_Hello('Amir')
x = [1,3,8,10];
y = average(x);
disp('Average of array x is:')
disp(y)
[r,q] = division(13,5);
disp('Remainder:')
disp(r)
disp('Quotient:')
disp(q)
%% functions
function Say_Hello(name)  % void function
    fprintf('Hello %s\n',name)
end
function ave = average(x)
    Sum_x = sum(x(:));
    n = length(x);
    ave = Sum_x/n; 
end


function [r,q] = division(n,d)
    r = rem(n,d);
    q = (n-r) / d;
end
