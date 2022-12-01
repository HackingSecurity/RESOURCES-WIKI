def E_RSA(publicKey, mensaje): 
    n = publicKey[0]
    e = publicKey[1]
    return pow(mensaje, e, n)

def D_RSA(privateKey, criptotexto): 
    n = privateKey[0]
    d = privateKey[1]
    return pow(criptotexto, d, n)

def factP(mensaje_descifrado, n): 
    result = 0
    num = 0
    while(num != mensaje_descifrado): 
        result += 1
        num = pow(2,result,n)
        
    return result 