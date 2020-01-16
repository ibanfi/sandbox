from busybox
RUN echo -e "#!/bin/sh\necho 'Hello everybody!'" > hello.sh
RUN chmod +x hello.sh
CMD ["/hello.sh"
RUN chmod +x hello.sh
CMD ["/hello.sh"]
