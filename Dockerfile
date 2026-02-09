FROM openjdk:21-jdk-slim
WORKDIR /minecraft

# Download PaperMC server jar for 1.21.11 (replace build number if newer)
ADD https://api.papermc.io/v2/projects/paper/versions/1.21.11/builds/100/downloads/paper-1.21.11-100.jar server.jar

# Accept EULA
RUN echo "eula=true" > eula.txt

EXPOSE 25565
CMD ["java", "-Xms512M", "-Xmx512M", "-jar", "server.jar", "nogui"]

