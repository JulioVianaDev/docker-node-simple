# indo ao docker hub pegar o node
FROM node
# dizendo que a pasta de criação dos scripts será o /app
WORKDIR /app
# copiando os aquivos da pasta atual e jogando para um /app no container
COPY . /app
# rodar o npm install
RUN npm install 
# colocando o docker para rodar na porta 80
EXPOSE 80
# rodando o servidor apenas quando o container for iniciado
CMD ["node","server.js"]