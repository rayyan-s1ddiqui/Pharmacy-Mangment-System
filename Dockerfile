FROM node:12.18-alpine
ENV NODE_ENV production
WORKDIR /app
COPY . .
RUN npm install --legacy-peer-deps
#RUN mv node_modules ../
#
EXPOSE 8080
CMD ["npm", "start"]
