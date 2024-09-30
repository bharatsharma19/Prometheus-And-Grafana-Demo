FROM node:20

# Create Work Directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Bundle the App
COPY . .

# Expose the port
EXPOSE 3000

# Run the app
CMD ["npm", "run", "start"]
