FROM node:18-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and lock files first (to leverage Docker caching)
COPY package.json package-lock.json ./

# Install dependencies directly in the working directory
RUN npm install --production --silent

# Copy the rest of the application files
COPY . .

# Expose port 8080 (if required by your app)
EXPOSE 8080
CMD npm start
