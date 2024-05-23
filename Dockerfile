FROM node:lts-alpine

RUN npm install pnpm@latest -g

WORKDIR /app

COPY package*.json ./

RUN pnpm install

COPY . .

RUN npx tsc

CMD ["node", "./build/index.js"]

# RUN chmod +x ./entry.sh
# 
# ENTRYPOINT ["./entry.sh"]
