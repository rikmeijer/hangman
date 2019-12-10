FROM haskell:8.6
WORKDIR /app
COPY . /app
RUN stack --resolver ghc-8.6 build cabal-install
RUN stack --resolver ghc-8.6 solver --update-config
RUN stack --resolver ghc-8.6 build
ENTRYPOINT ["stack", "--resolver", "ghc-8.6"]
CMD ["exec", "hangman"]