# ベースイメージとしてPHPを使用
FROM php:7.4-apache

# 作業ディレクトリを設定
WORKDIR /var/www/html

# ファイルをコンテナ内にコピー
COPY . .

# 必要な拡張機能をインストール（必要に応じて追加可能）
RUN docker-php-ext-install mysqli

# ポートを設定
EXPOSE 80

# Apacheを起動
CMD ["apache2-foreground"]
