# Use the official Node.js image.
FROM node:18

# Set the working directory in the container.
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (or yarn.lock) to the container.
COPY package*.json ./

# Install dependencies.
RUN npm install

# Copy the rest of your application code.
COPY . .

# Build the Next.js application.
RUN npm run build

# Expose the port on which the app will run.
EXPOSE 3000

# Start the Next.js application.
CMD ["npm", "start"]
