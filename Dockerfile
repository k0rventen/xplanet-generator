From ubuntu:22.10

RUN apt update && apt install xplanet python3-pip -y --no-install-recommends
RUN python3 -m pip install --upgrade Pillow

WORKDIR /xplanet
RUN mkdir out
COPY . .

CMD ["bash","./generate.sh"]