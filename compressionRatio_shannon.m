% This function calculates the compression ratio of a text using Shannon-Fano coding.
% The compression ratio represents how much the text has been compressed.

function Rapp_compression = compressionRatio_shannon(text)
    % symbols: unique characters in the text
    symbols = double(unique(text));

    % Pr: probability of each symbol in the text
    Pr = countproba(text);

    % m_code: Shannon-Fano codebook for each symbol
    m_code = ShannonFanoCode(symbols, Pr);

    % code2: encoded representation of the text using Shannon-Fano coding
    code2 = EntropyEncoder(text, m_code);

    % Rapp_compression: ratio of encoded signal length to original text length
    Rapp_compression = length(code2) / (length(text) * 8);
    Rapp_compression=1-Rapp_compression;
end
