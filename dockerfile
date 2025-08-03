FROM ubuntu:latest
WORKDIR /app
ENV var1="Hi"
ENV var2="Bye"
RUN apt-get update && apt install -y openjdk-21-jre-headless wget nginx curl systemd
EXPOSE 8080 80 443
COPY dummy.txt .
RUN echo $var1
CMD ["nginx", "-g", "daemon off;"]
