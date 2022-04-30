data = input("Enter binary string: ")
bindat = []
clk=True
for i in data:
    bindat.append(int(i))
def wait(tm):
    global clk
    for i in range(0,tm+1):
        print("clk={};\n#1;".format(int(clk)))
        clk = not clk
bindat.insert(0,0)
bindat.append(1)
bindat.append(1)
for entry in bindat:
    print("kbdclk=1;")
    wait(30)
    print("kbddat={};\nkbdclk=0;".format(entry))
    wait(30)

