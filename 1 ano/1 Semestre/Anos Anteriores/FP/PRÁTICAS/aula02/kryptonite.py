# This program should find the phase of a fictional substance
# for given temperature and pressure conditions, but it has several bugs!
# 
# a) Try to run the program with Python3 and see what happens.
#    There's a syntax error near the end.  Fix it.
# b) Try again.  It'll crash with a runtime error.  Find the cause and fix it.
# c) There is also a semantic error: for T=300 and P=100, phase should be SOLID.
#    Fix it to agree with the phase diagram.  Test in several conditions!
# d) Adjust the format string to output temperature with 1 decimal place
#    and pressure with 3. 

print("Kryptonite phase classifier")

# Input.  (You can fix the runtime error by changing something here!)
T = float(input("Temperature (K)? "))
P = float(input("Pressure (kPa)? "))

# Determine the phase. (This is wrong! Fix to match phase diagram.)
if P > 50.0 and T > 200:
    phase = "LIQUID"
elif P > 50 or P > (1/8)*T :
    phase = "SOLID"
else:
    phase = "GAS"

# Output.  (There's a subtle syntax error here!)
print("At {:.1f} K and {:.3f} kPa, Kryptonite is in the {} phase.".format(T, P, phase))

