FROM node:14
COPY ./ /vue-docker
WORKDIR /vue-docker
RUN npm config set registry https://registry.npmmirror.com

RUN npm install 

CMD npm run serve -- --port 8080

# FROM nginx
# RUN mkdir /vue-docker
# COPY --from=0 /vue-docker/dist /vue-docker
# COPY nginx.conf /etc/nginx/nginx.conf
