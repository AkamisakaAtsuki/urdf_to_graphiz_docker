FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y liburdfdom-tools graphviz
COPY run_urdf_to_graphiz.sh /usr/local/bin/run_urdf_to_graphiz.sh
RUN chmod +x /usr/local/bin/run_urdf_to_graphiz.sh
RUN mkdir data
ENTRYPOINT ["/usr/local/bin/run_urdf_to_graphiz.sh"]