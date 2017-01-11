def swap(first_variable, line, column):
    swapped_line = line
    complete_first_variable = find_first_variable(line, column)
    return swapped_line

def find_first_variable(line, column):
    line_until_column = line[:column]
    line_from_column = line[column:]

    start_column = line_until_column.rfind(",")
    if start_column == -1:
        start_column = line_until_column.rfind("(")
    start_column = start_column + 1

    end_column = line_from_column.find(",")
    if end_column == -1:
        raise IndexError
    end_column = column + end_column

    return line[start_column:end_column]
