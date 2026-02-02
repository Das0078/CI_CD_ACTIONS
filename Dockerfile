# Use official Node image
FROM node:21-alpine

# Create app directory
WORKDIR /app

# Copy package files first (better caching)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy app source code
COPY . .

# Expose app port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
