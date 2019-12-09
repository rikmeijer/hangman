FROM haskell:8.8.1
WORKDIR /app
COPY . /app
RUN stack --resolver ghc-8.8.1 build
CMD ["stack", "exec", "--resolver", "ghc-8.8.1", "hangman"]
