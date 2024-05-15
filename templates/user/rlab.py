# from reportlab.pdfgen import canvas
# from reportlab.lib.pagesizes import A4
# from reportlab.platypus import SimpleDocTemplate, Paragraph
# from reportlab.lib.styles import getSampleStyleSheet
# from reportlab.lib.units import cm
#
# c = canvas.Canvas("test.pdf")
#
# my_text="""
# The term ‘Preamble’ refers to the introduction or preface to the Constitution . November 26, 1949 as the date of adoption of theIndian Constitution . The philosophy of the Indian Constitution is reflected in the Preamble . The claim that the constitution is derived from the people is justified because of its broad- based popular acceptance ever since it came into force . India joined Commonwealth by her “free will” InIndia popular elections give legitimacy to our rulers . System is republican where no office of the state is held on the basis of hereditary prescriptive rights . The ideal of justice implies a system whereindividuals can realize their full potentialities .
# """
# textobject = c.beginText(2 * cm, 29.7 * cm - 2 * cm)
# for line in my_text.splitlines(False):
#     textobject.textLine(line.rstrip())
# c.drawText(textobject)
# c.save()

# Python program to create
# a pdf file

#
# from fpdf import FPDF
#
#
# # save FPDF() class into a
# # variable pdf
# pdf = FPDF()
#
# # Add a page
# pdf.add_page()
#
# # set style and size of font
# # that you want in the pdf
# pdf.set_font("Arial", size = 15)
#
# # create a cell
# pdf.cell(200, 10, txt = "GeeksforGeeks",
# 		ln = 1, align = 'C')
#
# # add another cell
# pdf.cell(200, 10, txt = "jjdkfkjhkd sfksdkhf kdksjh fkkdsjh fkdshf hkdshfh khsdkhf ksdkhf khksjdhkf hksdhkf hkshdkf hkshdkhfk hdskh fkjsdf hkjsdhf hkjsdhf hkjshdkhf khsdkhfk hsdkjhf khksdh fjkksjdhkfj hkjsdkj fkjsdkj fhkjsdhkj fhkjsdhj fhkjsdkjh fkjshkdjh fkjsdkjh fkjo boossss",
# 		ln = 2, align = 'C')
#
# # save the pdf with name .pdf
# pdf.output("GFG.pdf")


