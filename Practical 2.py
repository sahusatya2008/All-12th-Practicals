#2 Read a text file line by line and display each word separated by a # (Pound).
# Open the file in read mode.
with open('four file.txt', 'r') as file:
    # Read file line by line
    for line in file:
        # Remove multiple and extra spaces
        line = line.strip()
        # split the line into words
        words = line.split()
        # Join words with #
        output = "#".join(words)
        # print the result
        print(output)
        
