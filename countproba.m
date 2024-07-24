function Probabilities = countproba(text)
    % Count the frequency of each character in the text
    uniqueChars = unique(text);
    frequencies = zeros(size(uniqueChars));
    for i = 1:numel(uniqueChars)
        frequencies(i) = sum(text == uniqueChars(i));
    end
    Probabilities=frequencies/length(text);
end