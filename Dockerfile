FROM ubuntu

WORKDIR /root

ARG TARGETARCH

COPY data ./data
COPY search ./search

# 镜像启动服务自动被拉起配置
COPY run /etc/service/run
RUN chmod +x /etc/service/run