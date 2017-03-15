FROM java:7

MAINTAINER Paul "Rohja" Lesellier <rohja@rohja.com>

# Install WGET and install 32b libs
RUN apt-get update && apt-get install -y wget gcc-multilib && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Download APKTool script
RUN wget https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool

# Download APKTool JAR
RUN wget https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.2.2.jar
RUN mv apktool_2.2.2.jar apktool.jar

# Move bins to /usr/local/bin
RUN mv apktool.jar apktool /usr/local/bin

# Allow execution
RUN chmod +x /usr/local/bin/apktool.jar /usr/local/bin/apktool

# Create workspace
RUN mkdir /app

VOLUME /app

##

WORKDIR /app
CMD ["-"]
ENTRYPOINT ["apktool"]
