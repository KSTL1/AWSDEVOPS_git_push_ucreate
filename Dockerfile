FROM hshar/flaskapp
RUN apt-get update -y && \
    apt-get install -y git
RUN apt-get install python3 python3-pip
RUN pip3 install flask pymysql boto3
RUN git clone  https://github.com/KSTL1/AWSDEVOPS_git_push_ucreate.git
WORKDIR /AWSDEVOPS_git_push_ucreate
CMD [ "python3", "./hello.py" ]
