% Input for matrix A
fprintf('Enter the dimensions of matrix A (rows and columns): ');
dims_A = str2num(input('', 's'));
rows_A = dims_A(1);
cols_A = dims_A(2);

fprintf('Enter the elements of matrix A (space-separated rows):\n');
matrix_A = zeros(rows_A, cols_A);
for i = 1:rows_A
    row = str2num(input('', 's'));
    if length(row) ~= cols_A
        disp('Invalid input. Please provide a row with the correct number of elements.');
        return;
    end
    matrix_A(i, :) = row;
end

% Input for matrix B
fprintf('Enter the dimensions of matrix B (rows and columns): ');
dims_B = str2num(input('', 's'));
rows_B = dims_B(1);
cols_B = dims_B(2);

fprintf('Enter the elements of matrix B (space-separated rows):\n');
matrix_B = zeros(rows_B, cols_B);
for i = 1:rows_B
    row = str2num(input('', 's'));
    if length(row) ~= cols_B
        disp('Invalid input. Please provide a row with the correct number of elements.');
        return;
    end
    matrix_B(i, :) = row;
end

% Print the max value in matrix A
max_value_A = max(matrix_A(:));
fprintf('Max value in matrix A: %d\n', max_value_A);

% Multiply matrices A and B if possible, else print a message
if cols_A ~= rows_B
    disp('Matrix multiplication is not possible because the number of columns in A is not equal to the number of rows in B.');
else
    result_matrix = matrix_A * matrix_B;
    fprintf('Result of matrix multiplication:\n');
    disp(result_matrix);
end
