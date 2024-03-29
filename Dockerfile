FROM centos:7

# Update
RUN yum install nodejs

#Install app dependencies
COPY package.json /src/package.json
RUN cd /src; npm install

#Bundle app source
COPY . /src

EXPOSE 8080
CMD ["node", "src/server.js"]
