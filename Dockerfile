FROM node
RUN mkdir -p /app
WORKDIR /app
ADD RealSrc /app
RUN npm install --registry=https://registry.npm.taobao.org
CMD /app/node_modules/.bin/ng serve --host 0.0.0.0 --port 4200
EXPOSE 4200
