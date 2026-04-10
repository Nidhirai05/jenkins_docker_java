FROM	bellsoft/liberica-openjdk-alpine
WORKDIR	/app
COPY	Hello.java /app
RUN	javac Hello.java
CMD	["java","Hello"]
