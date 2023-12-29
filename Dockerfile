FROM node
COPY main.js .
expose 8081
CMD ["node", "main.js"]
