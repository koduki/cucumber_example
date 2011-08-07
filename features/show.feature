#language: ja
機能: トップページの表示とサブミット

  シナリオ: トップページの表示
    もし /ページを表示する
    ならば ""と表示される
    かつ "テキストを入力してください。"と表示される

  シナリオ: テキストの入力と結果の表示してリセットする
    前提 /ページを表示している
    もし "text"に"テスト用のテキストです。"と入力する
    かつ "submit"ボタンをクリックする
    ならば "テスト用のテキストです。"と表示される
    かつ "テキストを入力してください。"と表示されない
    もし "リセット"リンクをクリックする
    ならば "テキストを入力してください。"と表示される
