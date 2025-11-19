開発環境
Mac (Arm64) 上でx86_64のプログラムを扱うため、QEMUエミュレータを利用してx86_64の仮想環境内でコンテナをビルドしている

Docker起動コマンド
docker start x86-env
docker attach x86-env
exit