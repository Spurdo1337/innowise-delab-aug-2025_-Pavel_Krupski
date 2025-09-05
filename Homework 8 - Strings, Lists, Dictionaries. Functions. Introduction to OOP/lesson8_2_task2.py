prices = [1000, 3499, 250]
nds = 0.20
def add_vat(prices):
    return prices + (prices * nds)
for i in prices:
    print (f"Base price is {i}. Total price with value-added tax is {add_vat(i)}")