FROM node:10.5.0 as builder
RUN mkdir /node-app
WORKDIR /node-app
COPY ./package.json ./
RUN npm install
COPY ./ ./
RUN npm run build

# FROM node:10.5.0
# RUN mkdir /node-app
# WORKDIR /node-app
# COPY ./package.json ./package-lock.json ./
# RUN npm install --only=prod
# COPY --from=builder /node-app/dist ./dist
# CMD npm run start
