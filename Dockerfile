FROM centos:7

# Install nodejs
RUN curl --silent --location https://rpm.nodesource.com/setup_6.x | bash - && \
    yum install -y nodejs

# Install python
RUN yum install -y https://centos7.iuscommunity.org/ius-release.rpm && \
    yum update -y && \
    yum install -y python36u python36u-libs python36u-devel python36u-pip

# Install other tools
RUN yum install -y gcc-c++ make vim git && \
    yum clean all

# Install serverless
RUN npm install -g serverless

ENTRYPOINT ["/bin/bash"]
