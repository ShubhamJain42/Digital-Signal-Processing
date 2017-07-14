function out = convolution(image,kernel)
    [m,n]= size(image);
    a = size(kernel);
    I_double = double(image);
    for i=1:(n-(a-1))
        for j=1:(m-(a-1))
            I_double(i,j) = sum(sum(kernel.*I_double(i:(i+a-1),j:(j+a-1))));
        end
    end
    out = uint8(I_double);
end
 
