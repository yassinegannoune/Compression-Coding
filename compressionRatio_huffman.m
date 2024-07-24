% This function calculates the compression ratio of a text using Huffman coding.
% The compression ratio represents how much the text has been compressed.

function compressionRatio = compressionRatio_huffman(text)
    % symbols: unique characters in the text
    symbols = double(unique(text));

    % probabilities: probability of each symbol in the text
    probabilities = countproba(text);

    % huffmanCodebook: dictionary of Huffman codes for each symbol
    huffmanCodebook = huffmandict(symbols, probabilities);

    % encodedSignal: encoded representation of the text using Huffman coding
    encodedSignal = huffmanenco(text, huffmanCodebook);

    % compressionRatio: ratio of encoded signal length to original text length
    compressionRatio = length(encodedSignal) / (length(text) * 8);
    compressionRatio=1-compressionRatio;
end
