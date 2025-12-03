   # Use the official Node.js image as the base
   FROM node:22-alpine

   # Set the working directory inside the container
   WORKDIR /app

   # Copy package.json and package-lock.json to the container
   COPY package*.json ./

   # Install project dependencies
   RUN npm install

   RUN apk add curl
   RUN apk add nano

   # Copy the rest of the application code
   COPY . .

   # Expose the port the app runs on
   EXPOSE 3003

   # Command to run the Vite development server
   CMD ["npm", "run", "dev", "--", "--host"]
