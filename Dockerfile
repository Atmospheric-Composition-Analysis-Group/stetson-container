from ubuntu:16.04

COPY intel.tar.gz /intel.tar.gz

RUN tar -xvzf intel.tar.gz

RUN apt-get update && apt-get install -y build-essential

RUN mkdir /software

RUN ln -s /data5/system/intel-11 /software/intel-11

ENV PATH="/software/intel-11/Compiler/11.1/080/bin/intel64:${PATH}"
ENV LD_LIBRARY_PATH="/software/intel/Compiler/11.1/080/lib/intel64:${PATH}"

COPY software-old.tar.gz /software-old.tar.gz

RUN tar -xvzf software-old.tar.gz

RUN apt-get install -y libcurl3
