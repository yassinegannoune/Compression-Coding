function result = vertical_read(img)
    % Perform a vertical scan and return the length of the longest sequence of consecutive zeros

    % Initialize variables
    result = 0;
    count = 0;
    %img=convertToSquare(img);
    % Iterate over each column of the image
    for c = 1:size(img, 2)
        % Count the number of consecutive zeros in the current column
        for r = 1:size(img, 1)
            if img(r, c) == 0
                count = count + 1;
            else
                count = 0;
            end
            % Update result with the maximum count
            result = max(result, count);
        end
    end
end
