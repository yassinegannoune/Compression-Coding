function squareImage = convertToSquare(imageFilePath)
    % Read the image
    image = imread(imageFilePath);
    if size(image, 1) == size(image, 2)
        disp('The image is square');
        squareImage=image;
        f = msgbox("The image is square","Success");
    else
        disp('The image is not square');
        f = msgbox("Invalid format of image,must be square","Error","error");
        % Get the dimensions of the image
        originalSize = size(image);
        height = originalSize(1);
        width = originalSize(2);

        maxSize = max(height, width);
        targetSize = [maxSize, maxSize];

        % Resize the image to the square format
        squareImage = imresize(image, targetSize);
    end
   
end
