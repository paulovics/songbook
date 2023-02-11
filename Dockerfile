FROM dockershelf/latex:basic-stable

WORKDIR /songbook

VOLUME src
VOLUME out

RUN mkdir temp/

CMD  cp -r src/* temp/ && cd temp && latex main.tex && latex --output-format=pdf main.tex && cp main.pdf ../out/
