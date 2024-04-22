#Use node version
FROM node:latest  

#Set up working directory
WORKDIR /usr/src/app  

#Copy content
COPY client/* /  

# Run the npm install command to install the dependencies specified in package.json
RUN npm install  

# Expose port 3000  
EXPOSE 3000  

# Start the application  
CMD [ "npm", "start" ]  
