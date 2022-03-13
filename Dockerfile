FROM alpine:3.10

RUN curl -sSL https://konryu.cotowali.org | sh
# add to your shell config like .bashrc
RUN export PATH="$HOME/.konryu/bin:$PATH"
RUN eval "$(konryu init)"

# dockerコンテナが起動する際に実行されるコードファイル (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
