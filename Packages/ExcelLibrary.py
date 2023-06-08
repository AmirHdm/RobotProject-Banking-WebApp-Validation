import openpyxl


class ExcelLibrary:
    def __init__(self):
        pass

    def read_excel_rows(self, file_path, sheet_name):
        workbook = openpyxl.load_workbook(file_path)
        sheet = workbook[sheet_name]

        rows = []
        for row in sheet.iter_rows(min_row=2, values_only=True):
            rows.append(row)

        workbook.close()
        return rows
