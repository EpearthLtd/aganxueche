FROM java:8
EXPOSE 8080

VOLUME /tmp
ADD target/aganxueche-1.1.0.jar /app.jar
ENV  TIME_ZONE Asia/Shanghai
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-jar","/app.jar"]
