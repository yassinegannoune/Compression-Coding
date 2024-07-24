function result = horizontal_scan(img)
    % Perform a horizontal scan and return the length of the longest sequence of consecutive zeros

    % Initialize variables
    %img=convertToSquare(img);
    result = 0;
    count = 0;

    % Iterate over each row of the image
    for r = 1:size(img, 1)
        % Count the number of consecutive zeros in the current row
        for c = 1:size(img, 2)
            if img(r, c) == 0
                count = count + 1;
            else
                count = 0;
            end
            result = max(result, count);
        end
    end
end
