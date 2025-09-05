email = " USER@DOMAIN.COM "
email_clean = email.strip().lower()
username, domain = email_clean.split("@", 1) # Разделение полученного адреса на список с присвоением каждой части имени
print(email_clean)
print(username)
print(domain)
print(f"Username: {username}, Domain: {domain}")