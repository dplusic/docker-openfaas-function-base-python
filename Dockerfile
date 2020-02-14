FROM functions/alpine

USER root

RUN apk add --no-cache python

USER 1000

RUN echo 'python -c "$CODE"' > /home/app/handle.sh

ENV fprocess="sh /home/app/handle.sh"

ENV CODE="print('hello-world')"
