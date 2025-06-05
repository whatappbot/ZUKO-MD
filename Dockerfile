FROM node:lts-buster

# Clone the repository into /root/ZUKO-MD
RUN git clone https://github.com/Neggy5/ZUKO-MD.git /root/ZUKO-MD

# Set the working directory to the cloned repo
WORKDIR /root/ZUKO-MD

# Install dependencies
RUN npm install && npm install -g pm2

# Copy local files if needed (optional, can be omitted if building from repo only)
# COPY . .

EXPOSE 9090

CMD ["npm", "start"]
