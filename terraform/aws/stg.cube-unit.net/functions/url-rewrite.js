function handler(event) {
    var request = event.request;
    var uri = request.uri;

    // ルートパスはそのまま（default_root_objectでindex.htmlが配信される）
    if (uri === '/') {
        return request;
    }

    // 既に拡張子がある場合はそのまま
    if (uri.includes('.')) {
        return request;
    }

    // 末尾にスラッシュがない場合、スラッシュとindex.htmlを追加
    // /about → /about/index.html
    if (!uri.endsWith('/')) {
        request.uri = uri + '/index.html';
    }
    // 末尾がスラッシュの場合、index.htmlを追加
    // /about/ → /about/index.html
    else {
        request.uri = uri + 'index.html';
    }

    return request;
}
