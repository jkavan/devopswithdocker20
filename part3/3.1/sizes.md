 ~/code/devopswithdocker20/part3/3.1   master ●  docker history backend
IMAGE               CREATED             CREATED BY                                      SIZE                COMMENT
5b5bcc760401        7 minutes ago       /bin/sh -c #(nop)  ENTRYPOINT ["/bin/sh" "-c…   0B                  
4b900e57fa76        7 minutes ago       /bin/sh -c apk update &&     apk add git && …   19.9MB              
ac8cf5a20f9a        9 minutes ago       /bin/sh -c #(nop) WORKDIR /app                  0B                  
e91bee9ae399        9 minutes ago       /bin/sh -c #(nop)  ENV FRONT_URL=http://127.…   0B                  
1f3746be145d        20 minutes ago      /bin/sh -c #(nop)  EXPOSE 8000                  0B                  
d151df308b43        23 hours ago        /bin/sh -c #(nop)  CMD ["node"]                 0B                  
<missing>           23 hours ago        /bin/sh -c #(nop)  ENTRYPOINT ["docker-entry…   0B                  
<missing>           23 hours ago        /bin/sh -c #(nop) COPY file:238737301d473041…   116B                
<missing>           23 hours ago        /bin/sh -c apk add --no-cache --virtual .bui…   7.62MB              
<missing>           23 hours ago        /bin/sh -c #(nop)  ENV YARN_VERSION=1.22.5      0B                  
<missing>           23 hours ago        /bin/sh -c addgroup -g 1000 node     && addu…   104MB               
<missing>           23 hours ago        /bin/sh -c #(nop)  ENV NODE_VERSION=14.13.0     0B                  
<missing>           5 months ago        /bin/sh -c #(nop)  CMD ["/bin/sh"]              0B                  
<missing>           5 months ago        /bin/sh -c #(nop) ADD file:b91adb67b670d3a6f…   5.61MB              

~/code/devopswithdocker20/part3/3.1   master ●  docker history frontend
IMAGE               CREATED             CREATED BY                                      SIZE                COMMENT
616c192242a9        6 minutes ago       /bin/sh -c #(nop)  ENTRYPOINT ["/bin/sh" "-c…   0B                  
b32840d5e91d        6 minutes ago       /bin/sh -c npm install -y &&   npm run build…   248MB               
809bc59e4f32        7 minutes ago       /bin/sh -c apk update && apk add git &&     …   2.52MB              
29d908073f4f        7 minutes ago       /bin/sh -c #(nop) WORKDIR /app                  0B                  
341cd810d28c        7 minutes ago       /bin/sh -c #(nop)  ENV API_URL=http://127.0.…   0B                  
a0c47e919c0b        7 minutes ago       /bin/sh -c #(nop)  EXPOSE 5000                  0B                  
d151df308b43        23 hours ago        /bin/sh -c #(nop)  CMD ["node"]                 0B                  
<missing>           23 hours ago        /bin/sh -c #(nop)  ENTRYPOINT ["docker-entry…   0B                  
<missing>           23 hours ago        /bin/sh -c #(nop) COPY file:238737301d473041…   116B                
<missing>           23 hours ago        /bin/sh -c apk add --no-cache --virtual .bui…   7.62MB              
<missing>           23 hours ago        /bin/sh -c #(nop)  ENV YARN_VERSION=1.22.5      0B                  
<missing>           23 hours ago        /bin/sh -c addgroup -g 1000 node     && addu…   104MB               
<missing>           23 hours ago        /bin/sh -c #(nop)  ENV NODE_VERSION=14.13.0     0B                  
<missing>           5 months ago        /bin/sh -c #(nop)  CMD ["/bin/sh"]              0B                  
<missing>           5 months ago        /bin/sh -c #(nop) ADD file:b91adb67b670d3a6f…   5.61MB              

 ~/code/devopswithdocker20/part3/3.1   master ●  docker images backend
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
backend             latest              5b5bcc760401        10 minutes ago      137MB

 ~/code/devopswithdocker20/part3/3.1   master ●  docker images frontend
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
frontend            latest              616c192242a9        11 minutes ago      367MB
