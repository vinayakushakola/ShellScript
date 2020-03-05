from tkinter import *
import re

def startChecking():
    name=name1.get()
    phnum=phnum1.get()
    email=email1.get()
    password=password1.get()
    
    namePattern="^[A-Z]{1}[a-z]{2,}$"
    emailPattern="^([a-zA-Z]{3,}([.|_|+|-]?[a-zA-Z0-9]+)?[@][a-zA-Z0-9]+[.][a-zA-Z]{2,3}([.]?[a-zA-Z]{2,3})?)$"
    phonePattern="^([0-9]{1,3}[ ][1-9]{1}[0-9]{9})$"
    passPattern="^[a-zA-Z0-9]{8,}$"
    
    if re.match(namePattern, name):
        print("name is Successfully Registered")
    else:
        print("Invalid")
    if re.match(phnum, phonePattern):
        print("Phone number is Successfully Registered")
    else:                                                                                                                                           
        print("Invalid")
    if re.match(email, emailPattern):
        print("email is Successfully Registered")
    else:
        print("Invalid")
    if re.match(password, passPattern):
        print("password is Successfully Registered")
    else:
        print("Invalid")

root=Tk()
root.title("User Registration")
root.geometry("500x300")

name1=StringVar()
phnum1=StringVar()
email1=StringVar()
password1=StringVar()

Label(root, text="User registration", font="helvetica 30").grid(row=0, columnspan=2)

Label(root, text="Name", font="helvetica 20").grid(row=1, column=0)
Entry(root, textvariable=name1, font="helvetica 20").grid(row=1, column=1)

Label(root, text="Phone Number", font="helvetica 20").grid(row=2, column=0)
Entry(root, textvariable=phnum1, font="helvetica 20").grid(row=2, column=1)

Label(root, text="Email", font="helvetica 20").grid(row=3, column=0)
Entry(root, textvariable=email1, font="helvetica 20").grid(row=3, column=1)

Label(root, text="Password", font="helvetica 20").grid(row=4, column=0)
Entry(root, textvariable=password1, font="helvetica 20").grid(row=4, column=1)

Button(root, text="Submit", font="helvetica 15", width=10, command=startChecking).grid(row=5, column=1)

root.mainloop()
