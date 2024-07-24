function result = zigzag_scan(img)
    %img=convertToSquare(img);
    zigzagImage = Zigzag(img);

    % Initialize variables
    result = 0;
    count = 0;
    for i = 1:numel(zigzagImage)
        if zigzagImage(i) == 0
            count = count + 1;
        else
            count = 0;
        end
        result = max(result, count);
    end
end

function zigzagImage = Zigzag(img)
    % Get image size
    [height, width] = size(img);
    zigzagPattern = zeros(height * width, 1);
    index = 1;
    for i = 1:height
        if mod(i, 2) == 0
            for j = width:-1:1
                zigzagPattern(index) = img(i, j);
                index = index + 1;
            end
        else
            for j = 1:width
                zigzagPattern(index) = img(i, j);
                index = index + 1;
            end
        end
    end

    zigzagImage = reshape(zigzagPattern, height, width);
end
