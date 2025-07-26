function handler(event) {
    var request = event.request;
    var uri = request.uri;

    // ルートページにアクセスした場合はメインサイトにリダイレクト
    if (uri === '/' || uri === '/index.html') {
        return {
            statusCode: 301,
            statusDescription: 'Moved Permanently',
            headers: {
                'location': { value: 'https://cube-unit.net/' }
            }
        };
    }

    // 404リダイレクト用の特別なパス
    if (uri === '/redirect-to-404') {
        return {
            statusCode: 301,
            statusDescription: 'Moved Permanently',
            headers: {
                'location': { value: 'https://cube-unit.net/404.html' }
            }
        };
    }

    // その他のリクエストは全てS3に転送
    // ファイルが存在する場合は正常配信、存在しない場合はカスタムエラーページが処理
    return request;
}
