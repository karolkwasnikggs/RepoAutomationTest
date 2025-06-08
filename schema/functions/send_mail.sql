BEGIN
   UTL_MAIL.SEND(
      sender    => 'hr@yourcompany.com',
      recipients => 'employee@example.com',
      subject   => 'Welcome to the Company!',
      message   => 'Dear Employee, welcome to our organization. Please let us know if you have any questions.'
   );
END;
/
