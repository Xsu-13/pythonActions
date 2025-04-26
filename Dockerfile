FROM python

WORKDIR /usr/src/app

COPY  . .
RUN make install 

CMD make run
