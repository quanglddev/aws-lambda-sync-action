FROM amazonlinux:2.0.20210813.1

RUN yum install -y amazon-linux-extras
RUN amazon-linux-extras enable python3.8
RUN yum install -y python3.8

RUN yum -y update
RUN yum -y groupinstall "Development Tools"
RUN yum -y install openssl-devel bzip2-devel libffi-devel

RUN python3.8 --version
RUN python -V

# RUN apt-get update
# RUN apt-get install -y jq zip
# RUN apt-get install -y python3-dev libpq-dev
# RUN pip install awscli
# RUN pip install virtualenv

# ADD entrypoint.sh /entrypoint.sh
# RUN chmod +x entrypoint.sh
# ENTRYPOINT ["/entrypoint.sh"]