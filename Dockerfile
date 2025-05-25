# Use official Node.js image
FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY app/package*.json ./
RUN npm install

# Copy app source
COPY app .

# App runs on port 3000
EXPOSE 3000

# Command to run the app
CMD [ "npm", "start" ]
