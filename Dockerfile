

FROM openjdk:8

RUN apt-get update \ 
	&& apt-get install -y --no-install-recommends \
	   	   wget \
		 && wget -O /usr/local/lib/fastqc_v0.11.9.zip -q http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.9.zip \
		 && unzip -d /usr/local/lib /usr/local/lib/fastqc_v0.11.9.zip \
		 && chmod 755 /usr/local/lib/FastQC/fastqc \
		 && ln -s /usr/local/lib/FastQC/fastqc /usr/local/bin/fastqc \
		 && wget https://github.com/alexdobin/STAR/archive/2.7.3a.tar.gz \
		 && tar -xzf 2.7.3a.tar.gz \
		 && cp -p STAR-2.7.3a/bin/Linux_x86_64_static/STAR /usr/local/bin/STAR \
		 && chmod +x /usr/local/bin/STAR
		 
CMD ["/bin/bash"]

