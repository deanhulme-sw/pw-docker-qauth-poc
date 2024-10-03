FROM node:20-bookworm

RUN npx -y playwright@1.47.2 install --with-deps