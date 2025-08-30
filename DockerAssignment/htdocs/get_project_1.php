<?php
// データベースへ接続するために必要な情報
// ホストはDBコンテナ
$host = 'mysql';
// mysql接続用のユーザー
// $username = 'udata_user';
// $password = 'password';
$username = 'root';
$password = 'password';
$database = 'project';

// データベースへ接続するためのクラス生成
$mysql = new mysqli($host, $username, $password, $database);

// 接続エラーの確認
if ($mysql->connect_error) {
    die("データベース接続エラー: " . $mysql->connect_error);
}

$sql = "SELECT * FROM jobs";
// クエリの実行
$result = $mysql->query($sql);

// 結果の処理
if ($result) {
    if ($result->num_rows > 0) {
        // 結果セットから行を取得して処理
        while ($row = $result->fetch_assoc()) {
            // 各行のデータを表示
            echo "id: " . $row["id"] . ", name: " . $row["name"] . "<br>";
        }
    } else {
        echo "該当するデータはありません。";
    }
    // 結果セットを解放
    // $result->free();
} else {
    echo "クエリの実行に失敗しました: " . $mysql->error;
}

// データベース接続を閉じる
$mysql->close();

?>
