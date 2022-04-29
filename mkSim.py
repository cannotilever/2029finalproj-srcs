data = input("Enter binary string: ")
bindat = []
for i in data:
    bindat.append(int(i))
print(bindat)
bindat.reverse()
print(bindat)
bindat.insert(0,0)
bindat.append(1)
bindat.append(1)
for entry in bindat:
    print("kbdclk=1;\n#30;")
    print("kbddat={};\nkbdclk=0;\n#30;".format(entry))
