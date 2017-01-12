def swap(first_variable, line, column):
    swapped_line = line
    complete_first_variable = find_first_variable(line, column)
    complete_second_variable = find_second_variable(line, column)

    swapped_line = swapped_line.replace(complete_second_variable, complete_first_variable)
    swapped_line = swapped_line.replace(complete_first_variable, complete_second_variable, 1)

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

    return line[start_column:end_column].lstrip(' ')

def find_second_variable(line, column):
    start_column = column + line[column:].find(",")

    end_column = line[start_column + 1:].find(",")
    if end_column == -1:
        end_column = line[start_column + 1:].find(")")
    end_column = start_column + end_column + 1

    return line[start_column:end_column].lstrip(', ')
