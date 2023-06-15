import smtplib
import imaplib
import easyimap as imap  # 'pip3 install easyimap' to install the package

EMAIL_ADDRESS = 'noreply.piservice@gmail.com' # 2058983@iotvanier.ca
PASSWORD = 'bvlg sbug wars xozh' # StudentAccount10
RECEIVER_ADDRESS = EMAIL_ADDRESS
SUBJECT = 'Test Email'
BODY = 'This Email was sent through Python'


def main():
    send_email(SUBJECT, BODY)
    receive_email()
    delete_email()


def send_email(subject, body):
    with smtplib.SMTP('smtp.gmail.coSm', 587) as smtp:  # 192.168.0.11
        smtp.ehlo()
        smtp.starttls()
        smtp.ehlo()

        smtp.login(EMAIL_ADDRESS, PASSWORD)
        msg = f'Subject: {subject}\n\n{body}'
        smtp.sendmail(EMAIL_ADDRESS, RECEIVER_ADDRESS, msg)


def receive_email():
    server = imap.connect('imap.gmail.com', EMAIL_ADDRESS, PASSWORD)  # 192.168.0.11

    for mail in server.listids():
        email = server.mail(mail)
        print(email.sender)
        print(email.date)
        print(email.title)
        print(email.from_addr)
        print(email.body)
    else:
        server.quit()


def delete_email():
    mail = imaplib.IMAP4_SSL('imap.gmail.com')  # 192.168.0.11
    mail.login(EMAIL_ADDRESS, PASSWORD)

    mail.select("inbox")
    # typ, data = mail.search(None, 'SUBJECT "hello"')  # Filter by subject
    # typ, data = mail.search(None, 'FROM "example@gmail.com"')  # Filter by sender
    # typ, data = mail.search(None, 'SINCE "015-JUN-2020"')  # Filter by date
    typ, data = mail.search(None, "ALL")  # Filter by all

    for num in data[0].split():
        mail.store(num, '+FLAGS', r'(\Deleted)')
    print("Successfully deleted email")

    mail.expunge()
    mail.close()
    mail.logout()


main()
