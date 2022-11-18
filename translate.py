from pprint import pprint

def summary(prg):
    t = []
    cur = 's'
    count = 0
    for c in prg:
        if c != cur:
            if count > 0:
                t.append((cur, count))
            cur = c
            count = 1
        else:
            count += 1
    t.append((cur , count))
    return t

def prettyprintprg(t):
    to_return = []
    for tu in t:
        if tu[0] == '+':
            to_return.append(f"add {tu[1]}")

        if tu[0] == '-':
            to_return.append(f"add {-tu[1]}")

        if tu[0] == '>':
            to_return.append(f"move {tu[1]}")

        if tu[0] == '<':
            to_return.append(f"move {-tu[1]}")

        if tu[0] == '[':
            for i in range(tu[1]):
                to_return.append(f"loop start")

        if tu[0] == ']':
            for i in range(tu[1]):
                to_return.append(f"loop end")
                
    return to_return


def analysis(prg , pretty = False):
    temp = ""
    to_return = []
    a = False
    for tu in prg:
        if tu == '[':
            temp = ""
            a = True
        elif tu == ']':
            if a:
                if pretty:
                    
                    to_return.append(
                        prettyprintprg(summary(temp)) 
                    )
                    temp = ""
                else:
                    to_return.append(temp)
            a = False
        else:
            if a:
                temp += tu
    return to_return
    

prg = ""
with open("prg", 'r') as f:
    prg = f.read()


prg = prg.replace('\n', '')




#t.append((cur, count))
#t = t[1:]
#pprint(t)
#prettyprintprg(t)
x = analysis(prg)

def combine(sta : str):
    a = 0
    
    k = ""
    for c in sta:
        if c == '>':
            a += 1
        elif c == '<':
            a -= 1
        elif c == '+':
            if a == 0:
                return None
            k += f"ao({a} 1)"
        elif c == '-':
            if a == 0:
                return None
            k += f"ao({a} -1)"
        elif c == '.':
            k += '.'
            
    
    return k


for record in x:
    if record[0] == '-':
        if '.' in record[1:] or ',' in record[1:]:
            continue
        
        a = 0
        for c in record[1:]:
            if c == '>':
                a += 1
            elif c == '<':
                a -= 1
    
        if a != 0:
            continue
    
        #print(combine(record[1:]) + 'set(0)' , record , a)
    
        prg = prg.replace(
            f'[{record}]' ,
            combine(record[1:]) + 'set(0)'
        )

print(prg)