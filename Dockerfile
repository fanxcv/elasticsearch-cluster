FROM elasticsearch:6.8.13

COPY elasticsearch-analysis-ik-6.8.13.zip /usr/share/elasticsearch/plugins/
COPY elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml
COPY Shanghai /etc/localtime

ENV NODE_NAME=elasticsearch
ENV NODE_LIST=[]
ENV MIN_MASTER_NODES=1

RUN unzip /usr/share/elasticsearch/plugins/elasticsearch-analysis-ik-6.8.13.zip -d /usr/share/elasticsearch/plugins/analysis-ik \
    && rm -rf /usr/share/elasticsearch/plugins/elasticsearch-analysis-ik-6.8.13.zip