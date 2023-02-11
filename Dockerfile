FROM aergus/latex:2022-11-24

WORKDIR /songbook

VOLUME src
VOLUME out

RUN mkdir temp/

CMD  cp -r src/* temp/ && cd temp && latex main.tex && latex main.tex && cp main.pdf ../out/
