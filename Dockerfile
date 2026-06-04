FROM node:22-alpine

RUN apk add --no-cache \
    git \
    ffmpeg \
    libwebp-tools \
    python3 \
    make \
    g++

RUN git clone -b main https://github.com/souravkl11/raganork-md /rgnk

WORKDIR /rgnk

RUN mkdir -p temp

ENV TZ=Asia/Kolkata

# Yarn est déjà présent
RUN yarn install

CMD ["node", "index.js"]
