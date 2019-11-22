from Crypto.Hash import MD5
h = MD5.new()
#字串要說明型態（編碼）
h.update("haha",encode = "utf-8")
print (h.hexdigest())