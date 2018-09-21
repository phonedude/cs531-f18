FROM perl

COPY demo-code/echo.pl /

CMD ["perl", "/echo.pl"]
