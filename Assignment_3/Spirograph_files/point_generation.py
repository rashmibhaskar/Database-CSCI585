import math
import json
t=0.00
R = 8.0/10000
r = 1.0/10000
a = 4.0/10000

#1 open the spirograph_points.txt file in write mode
#2 calculate the x and y co-ordinates of all points to the given formula
#3 convert point values from int to str and write the data into the spirograph_points.txt file
resu=[]
with open("spiro_fun.json", 'w') as file_output:
    while t < 16*math.pi:
        x=(R + r) * math.cos((r / R) * t) - a * math.cos((1 + r / R) * t) - 118.28538504276011
        y = (R + r) * math.sin((r / R) * t) - a * math.sin((1 + r / R) * t) + 34.0205438251156
        res=""
        res+=str(x)+ ',' +str(y)+ ",0.\n"
        resu.append({"loc":[x,y]})
        t=t+0.1
    print(resu)
    json_string = json.dumps(resu,indent=4)
    file_output.write(json_string)