# Use the node image from the offical Docker Hun
FROM node:18-alpine as build-stage

#set the working directory
WORKDIR /app

# Copsy the working directory in the container
COPY package*.json ./

# Install the project dependencies
# if you npm then npm install
RUN npm install

# Copy the rest of the project files to the container
COPY . .

# Build the Vue.js application to the production mode to dist folder
RUN npm run build

# use the lightweight Nignx image from the previous state to the nginx container
FROM nginx:stable-alpine as production-stage

# Copy the build application from the previous state to the Nginc container
COPY --from=build-stage /app/dist /usr/share/nginx/html

# Copy the nginx configuration
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf

# Expose the port 80
EXPOSE 80

# start nginx to serve the application
CMD ["nginx", "-g", "deamon off;"]