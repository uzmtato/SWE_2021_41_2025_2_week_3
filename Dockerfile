FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3

CMD ["python3", "-c", "\
def isHappy(n):\n\
    seen = set() \n\
    \n\
    while n != 1 and n not in seen: \n\
        seen.add(n) \n\
        \n\
        digits = [] \n\
        while n > 0: \n\
            digit = n % 10 # get last digit \n\
            digits.append(digit) \n\
            n //= 10 # remove last digit \n\
        \n\
        total = 0 \n\
        for d in digits: \n\
            total += d * d \n\
        \n\
        n = total \n\
    \n\
    return n == 1 \n\
\n\
print(isHappy(19))\n\
print(isHappy(2))\n\
"]