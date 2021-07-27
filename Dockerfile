# docker build -t decouple-seg-nets-semantic-segmentation -f Dockerfile .
# NVIDIA Pytorch Image
FROM nvcr.io/nvidia/pytorch:19.10-py3

RUN pip install --no-cache-dir anykeystore==0.2
RUN pip install --no-cache-dir certifi==2021.5.30
RUN pip install --no-cache-dir charset-normalizer==2.0.3
RUN pip install --no-cache-dir cryptacular==1.5.5
RUN pip install --no-cache-dir cycler==0.10.0
RUN pip install --no-cache-dir decorator==4.4.2
RUN pip install --no-cache-dir defusedxml==0.7.1
RUN pip install --no-cache-dir greenlet==1.1.0
RUN pip install --no-cache-dir hupper==1.10.3
RUN pip install --no-cache-dir idna==3.2
RUN pip install --no-cache-dir imageio==2.9.0
RUN pip install --no-cache-dir importlib-metadata==4.6.1
RUN pip install --no-cache-dir kiwisolver==1.3.1
RUN pip install --no-cache-dir MarkupSafe==2.0.1
RUN pip install --no-cache-dir matplotlib==3.3.4
RUN pip install --no-cache-dir networkx==2.5.1
RUN pip install --no-cache-dir numpy==1.19.5
RUN pip install --no-cache-dir oauthlib==3.1.1
RUN pip install --no-cache-dir opencv-python==4.5.3.56
RUN pip install --no-cache-dir PasteDeploy==2.1.1
RUN pip install --no-cache-dir pbkdf2==1.3
RUN pip install --no-cache-dir Pillow==8.3.1
RUN pip install --no-cache-dir plaster==1.0
RUN pip install --no-cache-dir plaster-pastedeploy==0.7
RUN pip install --no-cache-dir protobuf==3.17.3
RUN pip install --no-cache-dir pyparsing==2.4.7
RUN pip install --no-cache-dir pyramid==2.0
RUN pip install --no-cache-dir pyramid-mailer==0.15.1
RUN pip install --no-cache-dir python-dateutil==2.8.2
RUN pip install --no-cache-dir python3-openid==3.2.0
RUN pip install --no-cache-dir PyWavelets==1.1.1
RUN pip install --no-cache-dir repoze.sendmail==4.4.1
RUN pip install --no-cache-dir requests==2.26.0
RUN pip install --no-cache-dir requests-oauthlib==1.3.0
RUN pip install --no-cache-dir scikit-image==0.18.0rc1
RUN pip install --no-cache-dir scipy==1.5.4
RUN pip install --no-cache-dir six==1.16.0
RUN pip install --no-cache-dir SQLAlchemy==1.4.22
RUN pip install --no-cache-dir tensorboardX==2.4
RUN pip install --no-cache-dir tifffile==2020.9.3
RUN pip install --no-cache-dir tqdm==4.61.2
RUN pip install --no-cache-dir transaction==3.0.1
RUN pip install --no-cache-dir translationstring==1.4
RUN pip install --no-cache-dir typing-extensions==3.10.0.0
RUN pip install --no-cache-dir urllib3==1.26.6
RUN pip install --no-cache-dir velruse==1.1.1
RUN pip install --no-cache-dir venusian==3.0.0
RUN pip install --no-cache-dir WebOb==1.8.7
RUN pip install --no-cache-dir WTForms==2.3.3
RUN pip install --no-cache-dir wtforms-recaptcha==0.3.2
RUN pip install --no-cache-dir zipp==3.5.0
RUN pip install --no-cache-dir zope.deprecation==4.4.0
RUN pip install --no-cache-dir zope.interface==5.4.0
RUN pip install --no-cache-dir zope.sqlalchemy==1.5

RUN apt-get update
RUN apt-get install libgtk2.0-dev -y && rm -rf /var/lib/apt/lists/*

# Install Apex
RUN cd /home/ && git clone https://github.com/NVIDIA/apex.git apex && cd apex && git checkout f3a960f80244cf9e80558ab30f7f7e8cbf03c0a0 && python setup.py install --cuda_ext --cpp_ext

WORKDIR /home/